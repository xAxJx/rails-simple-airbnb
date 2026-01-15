# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

#Clean Database
Flat.destroy_all

#Create flats
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Jimmy\'s flat',
  address: 'Jinbocho',
  description: 'A small flat',
  price_per_night: 50,
  number_of_guests: 2
)

Flat.create!(
  name: 'Medium flat',
  address: 'Akihabara',
  description: 'A medium flat',
  price_per_night: 70,
  number_of_guests: 4
)

Flat.create!(
  name: 'Big Johnson\'s flat',
  address: 'Ginza',
  description: 'A BIG flat',
  price_per_night: 150,
  number_of_guests: 8
)

#Display message
puts "Finished seeding database. Created #{Flat.count} flats."
