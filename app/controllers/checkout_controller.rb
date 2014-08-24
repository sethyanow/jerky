class CheckoutController < ApplicationController
  def index
    redirect_to '/' unless current_user

    @cart = current_user.cart



    if (token = params[:stripeToken])
      # Create the charge on Stripe's servers - this will charge the user's card
      begin

        #get the users' cart subtotal

        charge = Stripe::Charge.create(
          :amount => (Integer(100 * @cart.subtotal)), # amount in cents, again
          :currency => "usd",
          :card => token,
          :description => "testing@example.com"
        )
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
