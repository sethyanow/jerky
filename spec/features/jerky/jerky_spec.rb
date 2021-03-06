require 'spec_helper'

feature "Jerky" do
  before :each do
    FactoryGirl.build(:bpg)
   # visit '/auth/developer'

    # fill_in 'Name', with: "Foobar"
    # fill_in 'Email', with: "meow@test.example"
    # click_button 'Sign In'
  end
  describe "a place that lets people enjoy delicous jerky", js: true do
    context "from a selection of jerky" do
      it "after the user's logged in" do
        #expect(page).to have_content("JERKY")
      end

      it "shows the proper options for choosing jerky" do
        # => Makes sure the seed values are loaded properly
        #within(".item_flavor_id") do
          # select flavor 11
          #select("Black Pepper & Garlic", from: "item_flavor_id")
         # expect(page).to have_content("Black Pepper")
        #end

        #screenshot_and_open_image

        #make sure we're logged in

      end

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
