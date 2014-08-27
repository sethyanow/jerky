class StoreController < ApplicationController
  before_action :setup
  def index
  end

  private

  # fn:Setup
  #   Quick (as possible) handler for requests to the store controller
  # => Short-circuit instance variables
  # => Confirm user's logged in
  # =>
  def setup

    # Create a new item if needed
    @item ||= Item.new

    # Gotta log in, bro
    if current_user

      # Grab the user object
      @user ||= User.find(current_user.id)

      # Short-circuit magic
      # => Check for a cart object
      # => if nil, attempt to grab the user's cart
      # => if nil (new user, just finished checkout)
      # =>   Create a new cart
      @cart ||= Cart.where(user_id: @user.id).first || Cart.create
      session[:cart_id] =  @cart.id

      # => Assign the cart to the user, vice versa and save both
      @cart.user_id = @user.id
      @cart.save
      @user.cart_id = @cart.id
      @user.save

    else

      # This shouldn't happen, I think?
      session[:cart_id] = nil

      # But just in case
      render 'layouts/signin'

      # TODO: Check out this edge case and write some tests

    end
  end
end
