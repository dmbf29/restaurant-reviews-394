puts "clearing the db..."
Restaurant.destroy_all

puts "Creating restaurants..."
30.times do
  restaurant = Restaurant.new(
    name: Faker::Color.color_name,
    address: Faker::Address.street_address,
    stars: rand(1..5),
    chef_name: Faker::Sports::Football.player
  )
  restaurant.save!
end
puts "Finished creating #{Restaurant.count} restaurants..."
