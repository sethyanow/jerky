class SessionsController < ApplicationController
  def new
    redirect_to '/'
  end

  def create
    user = User.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"]) || User.create_with_omniauth(auth_hash)
    if user
      session[:user_id] = user.id
      redirect_to '/', notice: "Thanks for logging in!"
    else
      flash[:error] = "There was a problem logging in. Give it another try or hit the help button."
      #render action: 'new'
    end
  end

  def destroy
      session[:user_id] = nil
      session[:cart_id] = nil
      redirect_to '/', notice: "Thanks for logging out!"
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
