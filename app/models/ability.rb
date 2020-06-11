class Ability
  include CanCan::Ability

  attr_reader :user

  def initialize(u)
    @user = u
    if @user.blank?
      cannot :manage, :all
    elsif @user.roles?(:admin)
      can :manage, :all
    elsif @user.roles?(:video_editor)
      roles_for_video_editors
    else
      cannot :manage, :all
    end

  end

  protected

  def roles_for_video_editors
    can :manage, Column
    can :manage, Video
  end
end
