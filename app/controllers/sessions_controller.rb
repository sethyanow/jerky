class SessionsController < ApplicationController
  def new
    redirect_to '/'
  end

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    #eraise env['omniauth.auth'].to_yamlr
    session[:user_id] = user.id
    redirect_to '/', notice: "Signed in. Welcome, " + auth_hash.info.name
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
