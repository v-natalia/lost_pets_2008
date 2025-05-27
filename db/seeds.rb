# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "date"
require "faker"
puts "Start creating pets..."
10.times do
  Pet.create!(
    name: Faker::Creature::Animal.name,
    address: Faker::Address.full_address,
    species: Pet::SPECIES.sample,
    date: Date.today - rand(0..5)
  )
end
puts "Finished! #{Pet.count}"
