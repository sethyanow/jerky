class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    redirect_to '/store' if current_user
  end

  def new
    redirect_to '/store' if current_user
  end

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to '/store', notice: "Signed in. Welcome, " + auth_hash.info.name
  end

  def destroy
      session[:user_id] = nil
      session[:cart_id] = nil
    redirect_to root_url, notice: "Signed out."
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
