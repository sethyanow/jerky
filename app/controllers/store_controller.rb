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
    @cart ||= current_user.cart || Cart.create
    session[:cart_id] =  @cart.id
  end

  def assign_cart
    # => Assign the cart to the user, vice versa and save both
    @cart.user_id = @user.id
    @cart.save
    @user.cart_id = @cart.id
    @user.save
  end

  # fn:Setup
  #   Quick (as possible) handler for requests to the store controller
  # => Short-circuit instance variables
  # => Confirm user's logged in
  # =>
  def setup
    @item ||= Item.new

    if current_user
      @user ||= User.find(current_user.id)

      build_cart
      assign_cart
    else
      display_signin
    end
  end
end
