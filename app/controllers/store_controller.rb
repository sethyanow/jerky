class StoreController < ApplicationController
  before_action :setup

  def index
  end

  private

  def setup
    @item ||= Item.new

    if logged_in?
      @cart = current_user.check_cart
      session[:cart_id] =  @cart.id
    end
  end
end
