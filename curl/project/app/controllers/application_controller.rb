class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied, with: :not_authorized

  private

  def not_authorized
    redirect_to root_url, alert: "Unauthorized Access"
  end
end