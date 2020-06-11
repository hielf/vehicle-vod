class UserService

  def self.reset_password(current_user, old_password, new_password, confirm_password)
    if old_password.blank?
      return [false, '原密码不能为空']
    end

    status, message = validate_password(new_password, confirm_password)
    unless status
      return [false, message]
    end

    unless current_user.present?
      return [false, '用户不存在']
    end

    unless current_user.authenticate(old_password)
      return [false, '原密码不正确']
    end

    current_user.password = new_password
    current_user.access_token = nil
    if current_user.save
      [true, '密码已成功修改，请重新登录']
    else
      [false, '密码修改过程出错']
    end
  end

  def self.validate_password(password, confirm_password)
    if password != confirm_password
      return [false, '密码两次输入不一致12']
    end
    unless password.length >= 6 && password.length <= 20
      return [false, '请输入6-20位新密码']
    end
    unless /\A[\x21-\x7e]+\Z/.match(confirm_password) != nil
      return [false, '密码只包含数字、字母、特殊字符']
    end
    [true, '验证通过']
  end


end