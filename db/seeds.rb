# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'starting seeds...'
french = Restaurant.new(name: "Epicure", category: "french", phone_number:"0123456789", address: 'Paris')
belgian = Restaurant.new(name: "Surpriz", category: "belgian", phone_number:"1234567890", address: 'Lille')
chinese = Restaurant.new(name: "Palais Royal", category: "chinese", phone_number:"2345678901", address: 'Bejing')
japanese = Restaurant.new(name: "Yuki", category: "japanese", phone_number:"3456789012", address: 'Tokyo')
italian = Restaurant.new(name: "Roma", category: "italian", phone_number:"4567890123", address: 'Naples')

restaurants = [french, belgian, chinese, japanese, italian]
restaurants.each do |restaurant|
  restaurant.save!
  puts "#{restaurant.name} was created"
end
puts 'seeds finished'
