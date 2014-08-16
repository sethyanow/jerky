require 'spec_helper'

feature "Jerky" do
  before :each do
    visit '/'
  end
  describe "a place that lets people enjoy delicous jerky", js: true do

    context "allows a user to log in"  do
      it "using twitter auth"
      it "using facebook auth"
    end


    it "lets a user choose a selection of jerky" do
      expect(page).to have_content("Please sign in using the links above")
      #screenshot_and_save_page
      puts "run"
    end

    it "is way cool"
  end
end
