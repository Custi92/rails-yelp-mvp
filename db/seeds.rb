# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# 1. Clean the database 🗑️
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese")
puts "Created Dishoom"
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian")
puts "Created Pizza East"
Restaurant.create!(name: "Fries Lover", address: "75011 Paris", category: "belgian")
puts "Created Fries Lover"
Restaurant.create!(name: "La Marmite", address: "75004 Paris", category: "french")
puts "Created La Marmite"
Restaurant.create!(name: "Awesome Sushi", address: "92700 Colombes", category: "japanese")
puts "Created Awesome Sushi"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
