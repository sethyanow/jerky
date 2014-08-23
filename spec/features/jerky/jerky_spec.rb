require 'spec_helper'

feature "Jerky" do
  before :each do
    visit '/'
  end
  describe "a place that lets people enjoy delicous jerky", js: true do

    context "with valid authentication"  do

      context "logs in a user using" do

        example "twitter auth" do

          click_link "Sign in with Twitter"

          fill_in 'Username', with: ENV['twitter_test_user']
          fill_in 'Password', with: ENV['twitter_test_password']




          expect(page).to have_content("Thanks for logging in!")

        end


        example "facebook auth"
      end
    end

    context "without valid authentication" do
      it "prevents a user from logging in"
    end

    context "lets a user choose a selection of jerky" do
      #expect(page).to have_content("Please sign in using the links above")
      it "shows the proper options for choosing jerky"

      it "adds a selection to the cart"

      it "removes a selection from the cart"

      it "modifies a selection in the cart"

      it "shows the cart subtotal"

      it "submits a cart and creates an order pending payment"

      it "alerts the user if there's an issue processing payment"

      it "allows the user to update their payment information"

      it "congratulates the user on their awesome order"

    end

    context "shows an activity feed" do
      #railscast 406 - public activity gem
      it "shows an update when an order is placed"

      it "hides an update when an order is cancelled"

      it "allows friends to like their friends' orders"
    end
  end
end
