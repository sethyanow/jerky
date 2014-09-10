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
    # Short-circuit magic
    # => Check for a cart object
    # => if nil, attempt to grab the user's cart
    # => if nil (new user, just finished checkout)
    # =>   Create a new cart
    @cart ||= Cart.where(user_id: @user.id).first || Cart.create
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
