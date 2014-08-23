# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sale, :class => 'Sales' do
    title "MyString"
    description "MyText"
    deadline "2014-08-23"
    published false
  end
end
