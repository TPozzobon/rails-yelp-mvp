# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
lucien = { name: 'Chez Lucien', adress: '63-Trou paumé', category: 'french' }
chang = { name: 'Chang fu', adress: '38-Cliché raciste', category: 'chinese' }
luigi = { name: 'Ma que', adress: '69-Encore un cliché', category: 'italian' }
frite = { name: 'Frite une fois', adress: '75-Accent forcé', category: 'belgian' }
bruce = { name: 'Yooooh Ahhhh !', adress: '01-Yeux plissés', category: 'japanese' }

[lucien, chang, luigi, frite, bruce].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
