require 'net/http'

class SMSService

  TYPE_REGISTER = 'REGISTER'
  TYPE_RESET_PASSWORD = 'RESET_PASSWORD'
  TYPE_RESET_MOBILE = 'RESET_MOBILE'

  WAIT_MINUTE = 1; # 发送间隔
  EFFECTIVE_TIME = 10; # 有效时间
  ALLOW_VALIDATE_TIMES = 20; # 允许尝试次数
  IS_TEST = false; # 测试模式不发送短信

  # 构造方法
  def initialize(mobile)
    @mobile = mobile
  end

  # 发送验证码
  def send_code(type, ip)
    unless Regular.is_mobile?(@mobile)
      return [false, '手机号码格式错误']
    end
    if MobileCode.where('created_at > ?', Time.now - 300).count > 10
      return [false, '发送密度过大，请稍等重试']
    end
    user = User.where(mobile: @mobile).exists?
    if user and (type == TYPE_REGISTER || type == TYPE_RESET_MOBILE)
      return [false, '该手机已经被使用']
    elsif !user and type == TYPE_RESET_PASSWORD
      return [false, '该手机还没有被认证']
    end
    code = get_mobile_code # 获取随机码
    row = MobileCode.find_by(mobile: @mobile, message_type: type) # 检测是否已经存在同类型记录
    if row.nil?
      MobileCode.create!(mobile: @mobile, code: code, message_type: type, ip: ip) # 如果不存在则直接生成新记录
    elsif row.updated_at + WAIT_MINUTE * 60 < Time.now
      # 如果存在同类型记录，但已经超过发送间隔，则根据新的代码重新发送
      row.code = code
      row.save
    else
      # 如果存在同类型记录，但小于发送间隔，则不重新发送
      return [false, "验证码发送间隔为#{WAIT_MINUTE}分钟"]
    end

    # 根据类型发送不同消息

    if IS_TEST
      status = true
    else
      case type
        when TYPE_REGISTER
          status = true
          SmsJob.perform_later(@mobile, code, 'gbDay3')
        when TYPE_RESET_PASSWORD
          status = true
          SmsJob.perform_later(@mobile, code, 'WewHW4')
        when TYPE_RESET_MOBILE
          status = true
          SmsJob.perform_later(@mobile, code, 'uJzsI2')
        else
          status = false
      end
    end
    if status
      [true, '验证码发送成功']
    else
      [false, '验证码发送失败']
    end
  end

  # 检测手机验证码
  def validate?(code, type)

    unless Regular.is_mobile?(@mobile)
      return [false, '手机号码格式错误']
    end

    # 检测手机验证码格式
    unless Regular.is_mobile_code?(code)
      return [false, '验证码不正确']
    end

    if (type == TYPE_REGISTER || type == TYPE_RESET_MOBILE) && User.where(mobile: @mobile).exists?
      return [false, '该手机已被使用']
    end

    # 获取验证码纪录，如果不存在返回 FALSE
    row = MobileCode.find_by(mobile: @mobile, message_type: type)
    if row.nil?
      return [false, '请获取该手机验证码']
    end

    # 检测是否超时及是否超过尝试次数
    if (row.updated_at + EFFECTIVE_TIME * 60 < Time.now) or (row.failed_attempts.to_i + 1 >= ALLOW_VALIDATE_TIMES)
      row.destroy
      [false, "验证码已失效或尝试超过#{ALLOW_VALIDATE_TIMES}次"]
    else
      #检测验证码是否正确，如不正确增加1次尝试次数
      if row.code == code
        row.destroy
        [true, '验证码成功通过验证']
      else
        row.failed_attempts = row.failed_attempts.to_i + 1
        row.save
        [false, '手机验证码不正确']
      end
    end
  end


  # 私有方法
  private

  def get_mobile_code
    rand(100000..999999)
  end

  # def http_send_message(code, project)
  #   @var = {}
  #   @var["code"] = code
  #   uri = URI.parse("https://api.submail.cn/message/xsend.json")
  #   username = Rails.application.secrets.sms_appid
  #   password = Rails.application.secrets.sms_signature
  #
  #   res = Net::HTTP.post_form(uri, appid: username, to: @mobile, project: project, signature: password, vars: @var.to_json)
  #
  #   status = JSON.parse(res.body)["status"]
  #   p res.body
  #   (status == "success") ? true : false
  # end
end