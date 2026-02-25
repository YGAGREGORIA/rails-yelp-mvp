# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

Restaurant.create!(
  name: "Chez Marcel",
  address: "12 rue de Rivoli, Paris",
  phone_number: "01 42 68 53 00",
  category: "french"
)

Restaurant.create!(
  name: "Luigi’s Trattoria",
  address: "45 Via Roma, Milan",
  phone_number: "+39 02 1234 5678",
  category: "italian"
)

Restaurant.create!(
  name: "Sakura House",
  address: "8 Shibuya Crossing, Tokyo",
  phone_number: "+81 3 1234 5678",
  category: "japanese"
)

Restaurant.create!(
  name: "Golden Dragon",
  address: "99 Chinatown Street, San Francisco",
  phone_number: "+1 415 555 0199",
  category: "chinese"
)

Restaurant.create!(
  name: "Brussels Delight",
  address: "3 Grand Place, Brussels",
  phone_number: "+32 2 555 0101",
  category: "belgian"
)

puts "✅ Done!"
