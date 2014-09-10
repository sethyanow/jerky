class StoreController < ApplicationController
  before_action :setup

  def index
  end

  private

  def display_signin
    session[:cart_id] = nil
    render 'layouts/signin'
  end

  def build_cart
    @cart = current_user.cart ||= Cart.create
    session[:cart_id] =  @cart.id
  end

  def setup
    @item ||= Item.new

    if current_user
      @user = current_user
      build_cart
    else
      display_signin
    end
  end
end
