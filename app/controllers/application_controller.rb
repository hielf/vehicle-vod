class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  def render_error(status_code)
    status = status_code.to_s
    fname = %w(404 403 422 500).include?(status) ? status : 'unknown'
    render template: "/errors/#{fname}", format: [:html],
           handler: [:erb], status: status, layout: 'admin'
  end
end
