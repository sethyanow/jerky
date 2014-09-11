class StoreController < ApplicationController
  before_action :setup

  def index
  end

  private

  def display_signin
    session[:cart_id] = nil
    render 'layouts/signin'
  end

  def setup
    @item ||= Item.new

    if current_user
      @cart = current_user.check_cart
      session[:cart_id] =  @cart.id
    else
      display_signin
    end
  end
end
