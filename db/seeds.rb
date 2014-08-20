# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# user = CreateAdminService.new.call
# puts 'CREATED ADMIN USER: ' << user.email
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html

#this is pretty hacky
[
    'Sriracha',
    'Fiery',
    'Original',
    'Fiery Hot',
    'Teriyaki',
    'Fiery Teriyaki',
    'BBQ',
    'Fiery BBQ',
    'Lower Salt Original',
    'Lower Salt Fiery Hot',
    'Black Pepper & Garlic'
  ].each do |flavor|
    Flavor.create({name: flavor})
  end

puts '[seed] Created Flavors'

Size.create(name: '1 Pound (16 oz)', weight: 16, base_price: 24.95)
Size.create(name: '1/2 Pound (8 oz)', weight: 8, base_price: 13.25)
Size.create(name: 'Standard (3.5 oz)', weight: 3.5, base_price: 6.95)
Size.create(name: 'Sample (1.75 oz)', weight: 1.75, base_price: 3.99)

Type.create(name: "Strips")
Type.create(name: "Steak Fries")
