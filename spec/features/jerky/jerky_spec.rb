require 'spec_helper'

feature "Jerky" do
  before :each do
    visit '/'
  end
  describe "a place that lets people enjoy delicous jerky", js: true do

    context "with valid authentication"  do
      context "logs in a user using" do
        it "twitter auth"
        it "facebook auth"
      end
    end

    context "without valid authentication" do
      it "prevents a user from logging in"
    end

    it "lets a user choose a selection of jerky" do
      expect(page).to have_content("Please sign in using the links above")
    end

    it "adds a selection to the cart"

    it "removes a selection from the cart"

    it "modifies a selection in the cart"

    it "shows the cart subtotal"

    it "can "
  end
end
