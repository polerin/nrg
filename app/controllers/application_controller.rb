class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  rescue_from StandardError do |exception|
    logger.error exception.message
    fail exception
  end

  def index
    render text: 'temporary route'
  end
end
