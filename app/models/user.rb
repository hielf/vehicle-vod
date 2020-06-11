class User < ApplicationRecord
  include AccountConcern
  include Followable
  include Likeable
  include Blockable
  include VideoFavorite
  has_secure_password
  has_many :videos
  has_many :comments
  has_one :city, foreign_key: :id, primary_key: :city_id
  has_one :last_activity
  has_many :user_columns
  has_many :columns, through: :user_columns

  ROLES = {
      1 => '管理员',
      2 => '视频编辑'
  }

  before_validation :set_default_nickname, on: :create

  validates :mobile, presence: true, uniqueness: true, format: {with: /\A1[34578][0-9]{9}\Z/i, message: '格式不正确'}
  validates :password, length: {minimum: 6, maximum: 20}, format: {with: /\A[\x21-\x7e]+\Z/i, message: '密码只能包含数字、字母、特殊字符'}, allow_blank: true
  validates :password, presence: true, format: {with: /\A[\x21-\x7e]+\Z/i, message: '密码只能包含数字、字母、特殊字符'}, on: :create
  validates :gender, inclusion: [1, 2], allow_blank: true
  validates :nickname, presence: true, length: {minimum: 1, maximum: 10}, uniqueness: true, format: {with: /\A[\u4e00-\u9fa5_a-zA-Z0-9_\s]+\Z/i, message: '昵称只能包含中文、数字、字母、下划线'}
  validates :avatar, allow_blank: true, format: {with: /\A((ht|f)tps?):\/\/([\w\-]+(\.[\w\-]+)*\/)*[\w\-]+(\.[\w\-]+)*\/?(\?([\w\-\.,@?^=%&:\/~\+#]*)+)?/i, message: '不规范url'}

  def set_default_nickname
    if mobile.present? and mobile[0].to_s == '1'
      nickname = mobile[0..2] + 'xxx' + mobile[7..10]
      if User.where(nickname: nickname).exists?
        nickname = mobile[0..2] + "#{rand(100...999)}" + mobile[7..10]
      end
      self.nickname = nickname
    end
  end

  # 是否是管理员
  def admin?
    self.roles.include? 1
  end

  # 是否是视频编辑
  def video_editor?
    self.roles.include? 2
  end

  def roles?(role)
    case role
      when :admin then
        admin?
      when :video_editor then
        video_editor?
      else
        false
    end
  end

end
