class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_or_create_from_auth_hash(auth_hash)
    if @user
      self.current_user = @user
      flash[:success] = "Thanks for logging in!"
      redirect_to '/'
    else
      flash[:error] = "There was a problem logging in. Give it another try or hit the help button."
      render action: 'new'
    end
  end

  def create

  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
