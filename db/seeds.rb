# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Delete all data
puts 'Cleaning database...'
Restaurant.destroy_all
Review.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "333" + "94857",
    category:     "belgian"
  },
  {
    name:         "Omelette du fromage",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "333" + "93729",
    category:     "french"
  },
  {
    name:         "Duck Dong",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "333" + "12958",
    category:     "chinese"
  }
]
Restaurant.create!(restaurants_attributes)

puts 'Creating reviews...'
Restaurant.all.each do |restaurant|
  5.times { restaurant.reviews << Review.create(content: Faker::StarWars.quote, rating: rand(0..5)) }
end

puts 'Finished!'
