class StoreController < ApplicationController
  before_action :setup
  def index
  end

  private
  def setup
    @item ||= Item.new

    if current_user
      # TODO: Merge session cart with user cart if logging in w/ a cart
      @user ||= User.find(current_user.id)if current_user #set the cart if logged in
      @cart ||= current_user.cart_id ? Cart.find(current_user.cart_id) : Cart.new
      @user.cart_id = @cart.id
      @user.save
    else
      @cart = Cart.new
      render 'layouts/signin'
    end

    session[:cart_id] =  @cart.id
  end
end
