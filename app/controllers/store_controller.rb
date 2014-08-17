class StoreController < ApplicationController
  before_action :setup
  def index
  end

  private
  def setup
    @item ||= Item.new

    if current_user
      @user = User.find(current_user.id)

      @cart = Cart.where(user_id: @user.id).first || Cart.create
      session[:cart_id] =  @cart.id
      @cart.user_id = @user.id
      @cart.save
    else
      session[:cart_id] = 0
      render 'layouts/signin'
    end


  end
end
