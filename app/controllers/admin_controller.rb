class AdminController < ActionController::Base
  before_action :set_current_user, :authenticate

  def index
  end

  rescue_from CanCan::AccessDenied do |exception|
    # Rails.logger.debug "Access denied on #{exception.action} #{exception.subject.inspect}"
    render_error(403)
  end

  def current_ability
    @current_ability ||= Ability.new(@current_user)
  end

  def can?(*args)
    current_ability.can?(*args)
  end

  def render_error(status_code)
    status = status_code.to_s
    fname = %w(404 403 422 500).include?(status) ? status : 'unknown'
    render template: "/errors/#{fname}", format: [:html],
           handler: [:erb], status: status, layout: 'admin'
  end


  def check_permission(action, model_name)
    raise CanCan::AccessDenied unless can?(action, model_name)
  end

  protected

  def set_current_user
    begin
      @current_user ||= User.authenticated_access_token(cookies[:access_token])
    rescue ActiveRecord::RecordNotFound
      nil
    end
  end

  def authenticate
    unless @current_user.present?
      redirect_to controller: 'admin/accounts', action: 'new'
    end
  end
end