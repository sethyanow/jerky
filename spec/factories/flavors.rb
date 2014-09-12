# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :flavor do
    name "Beef"

    factory :bpg do
      name "Black Pepper & Garlic"
    end
  end
end
