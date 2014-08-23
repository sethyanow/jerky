class ApplicationController < ActionController::Base
  include Pundit

  include PublicActivity::StoreController

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  hide_action :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  private

  def require_login
    redirect_to '/', alert: "You must log in or sign up" if current_user == nil
  end
end

