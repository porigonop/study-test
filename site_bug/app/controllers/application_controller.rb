class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  protected
  def confirm_logged_in
    if !session[:user_id]
      redirect_to login_path
      return false
    else
      return true
    end
  end
end
