class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def last_page
    request.env['HTTP_REFERER']
  end
  helper_method :last_page
end
