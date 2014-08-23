class CheckoutController < ApplicationController
  def index
    if (token = params[:stripeToken])
   # Create the charge on Stripe's servers - this will charge the user's card
      begin
        charge = Stripe::Charge.create(
          :amount => 1000, # amount in cents, again
          :currency => "usd",
          :card => token,
          :description => "testing@example.com"
        )
        redirect_to '/', notice: "charge successful"
      rescue Stripe::CardError => e
        # The card has been declined
        redirect_to 'checkout#index', notice: e
      end
    end
  end
end
