class UsersController < ApplicationController

  def index
  end

  def new
  end

  def delete
  end

  def show
    @orders = Order.where(user_id: params[:id])
    @user = current_user
  end
end
