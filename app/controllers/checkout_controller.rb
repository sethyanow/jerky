class CheckoutController < ApplicationController

  def index
    if logged_in?
      @cart = current_user.cart
      if (token = params[:stripeToken])
        # Create the charge on Stripe's servers - this will charge the user's card
        begin
          checkout = CheckoutStripe.new(token, @cart, current_user)
          if checkout.charge
            redirect_to '/', notice: "Thanks! Order submitted"
          else
            redirect_to '/checkout', notice: "There was an issue, try again"
          end
        rescue Stripe::CardError => e
          # The card has been declined
          redirect_to '/checkout', notice: e
        end
      end
    end
  end

  def thanks

  end
end
