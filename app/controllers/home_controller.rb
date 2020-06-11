class HomeController < ApplicationController
  def index

  end

  def error_404
    respond_to do |format|
      format.json { render json: {code: 404, message: 'Request page not found'} }
      format.html { render_error(404) }
    end
  end
end