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
flavors = Flavor.create([
    {name: 'Sriracha'},
    {name: 'Fiery'},
    {name: 'Original'},
    {name: 'Fiery Hot'},
    {name: 'Teriyaki'},
    {name: 'Fiery Teriyaki'},
    {name: 'BBQ'},
    {name: 'Fiery BBQ'},
    {name: 'Lower Salt Original'},
    {name: 'Lower Salt Fiery Hot'},
    {name: 'Black Pepper & Garlic'}
  ])

puts '[seed] Created Flavors, count: ' << flavors.count

Size.create(name: '(16 oz) 1 Pound Bag', weight: 16)
Size.create(name: '(8 oz) 1/2 Pound Bag', weight: 8)
Size.create(name: '(3.5 oz) Standard Bag', weight: 3.5)
Size.create(name: '(1.75 oz) Sample Bag', weight: 1.75)
