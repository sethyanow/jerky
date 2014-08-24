class CheckoutController < ApplicationController
  def index
    require_login

    @cart = current_user.cart
    if (token = params[:stripeToken])
      # Create the charge on Stripe's servers - this will charge the user's card
      begin
        charge = Stripe::Charge.create(
          :amount => (Integer(100 * @cart.subtotal)), # amount in cents, again
          :currency => "usd",
          :card => token,
          :description => current_user.email
        )

        order = Order.new()
        order.user_id = current_user.id
        order.charge_id = charge.id
        order.items << @cart.items
        order.purchased = true
        order.save

        current_user.cart = Cart.new

        #!! TODO:

        #  give the user their order number
        #  shoot them a reciept email
        #  shoot me an order notification email

        render "thanks", notice: "charge successful"
      rescue Stripe::CardError => e
        # The card has been declined
        redirect_to '/checkout', notice: e
      end
    end
  end

  def thanks

  end
end
