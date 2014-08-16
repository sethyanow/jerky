class StoreController < ApplicationController
  before_action :setup
  def index
  end

  private
  def setup
    @item ||= Item.new

    if current_user
      # TODO: Merge session cart with user cart if logging in w/ a cart
      @user = User.find(current_user.id)  #set the cart if logged in

      @cart = @user.cart_id ? Cart.find(@user.cart_id) : Cart.create
      session[:cart_id] =  @cart.id

      @user.cart_id = @cart.id
      @user.save
    else
      session[:cart_id] = 0
      render 'layouts/signin'
    end


  end
end
