class CheckoutStripe

  def initialize(token, cart, user)
    @token = token
    @cart = cart
    @user = user
  end

  def charge
    create_customer
    charge_customer
  end

  private

  def create_customer
    @customer = Stripe::Customer.create(
      email: 'example@stripe.com',
      card: @token
    )
  end

  def charge_customer
    @charge = Stripe::Charge.create(
      amount: (Integer(100 * @cart.subtotal)), # amount in cents, again
      currency: "usd",
      customer: @customer.id,
      description: @user.email
    )

    if @charge
      @order = Order.new()
      @order.user_id = @user.id
      @order.charge_id = @charge.id
      @order.items << @cart.items
      @order.purchased = true
      @order.save

      @user.new_cart
    end
  end
end
