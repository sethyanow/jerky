feature "Jerky" do 
  before :each do
    visit '/'
  end
  describe "a place that lets people enjoy delicous jerky", js: true do
    it "lets a user choose a selection of jerky" do
      save_screenshot('test.png', full: true)
      screenshot_and_save_page
     # Launchy.open 'test.png'
  #     within("#jerky_form") do
  #      # fill_in 
  #       expect 1.to_equal 1
  #     end
    end
  end
end
