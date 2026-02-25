puts "Cleaning database..."
Review.destroy_all
Restaurant.destroy_all

puts "Creating restaurants..."

chez = Restaurant.create!(
  name: "Chez Marcel",
  address: "12 rue de Rivoli, Paris",
  phone_number: "01 42 68 53 00",
  category: "french"
)

luigi = Restaurant.create!(
  name: "Luigi’s Trattoria",
  address: "45 Via Roma, Milan",
  phone_number: "+39 02 1234 5678",
  category: "italian"
)

sakura = Restaurant.create!(
  name: "Sakura House",
  address: "8 Shibuya Crossing, Tokyo",
  phone_number: "+81 3 1234 5678",
  category: "japanese"
)

dragon = Restaurant.create!(
  name: "Golden Dragon",
  address: "99 Chinatown Street, San Francisco",
  phone_number: "+1 415 555 0199",
  category: "chinese"
)

brussels = Restaurant.create!(
  name: "Brussels Delight",
  address: "3 Grand Place, Brussels",
  phone_number: "+32 2 555 0101",
  category: "belgian"
)

puts "Creating reviews..."

Review.create!(content: "Amazing food!", rating: 5, restaurant: chez)
Review.create!(content: "Very cozy place.", rating: 4, restaurant: chez)

Review.create!(content: "Authentic Italian taste.", rating: 5, restaurant: luigi)
Review.create!(content: "Pasta was good.", rating: 4, restaurant: luigi)

Review.create!(content: "Fresh sushi.", rating: 5, restaurant: sakura)

Review.create!(content: "Great flavors.", rating: 4, restaurant: dragon)

Review.create!(content: "Lovely atmosphere.", rating: 4, restaurant: brussels)

puts "✅ Done!"

