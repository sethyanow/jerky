class CheckoutStripe

  def initialize(token, cart, user)
    @token = token
    @cart = cart
    @user = user
  end

  def charge
    charge_customer
  end

  private

  def create_customer



  end

  def charge_customer
    @charge = Stripe::Charge.create(
      :amount => (Integer(100 * @cart.subtotal)), # amount in cents, again
      :currency => "usd",
      :card => @token,
      :description => @user.email
    )

    if @charge
      @order = Order.new()
      @order.user_id = @user.id
      @order.charge_id = @charge.id
      @order.items << @cart.items
      @order.purchased = true
      @order.save

      @user.cart = Cart.new
      @user.save
    end
  end
end
