# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

styles = %w[modern minimalistic rustic chic mediterranean]
puts "Cleaning the database...."
Location.destroy_all

puts "Creating 10 locations...."
cozy_cabin =   {
  name: 'Cozy Cabin Retreat',
  address: '123 Main St',
  city: 'Vienna',
  rooms: 3,
  user: User.all.sample,
  style: styles.sample,
  description: 'A charming cabin in a peaceful setting.',
  image_url: 'https://example.com/cozy-cabin.jpg'
}

urban_lost_oasis = {
  name: 'Urban Loft Oasis',
  address: '456 Oak Ave',
  city: 'Bari',
  rooms: 2,
  user: User.all.sample,
  style: styles.sample,
  description: 'A stylish loft in the heart of the city.',
  image_url: 'https://example.com/urban-loft.jpg'
}

sunny_beach_house = {
  name: 'Sunny Beach House',
  address: '789 Ocean Blvd',
  city: 'Edinburgh',
  rooms: 4,
  user: User.all.sample,
  style: styles.sample,
  description: 'A beautiful beach house with stunning ocean views.',
  image_url: 'https://example.com/beach-house.jpg'
}

mountain_retreat_lodge = {
    name: 'Mountain Retreat Lodge',
    address: '101 Pine Rd',
    city: 'Lisbon',
    rooms: 5,
    user: User.all.sample,
    style: styles.sample,
    description: 'Escape to the mountains in this cozy log cabin.',
    image_url: 'https://example.com/mountain-lodge.jpg'
}

pent_house = {
  name: 'Luxury Penthouse Suite',
  address: '555 High Street',
  city: 'Metropolis',
  rooms: 3,
  user: User.all.sample,
  style: styles.sample,
  description: 'Experience luxury living in this high-rise penthouse.',
  image_url: 'https://example.com/luxury-penthouse.jpg'
}

riverside = {
  name: 'Riverside Cottage',
  address: '222 River Lane',
  city: 'Rivertown',
  rooms: 2,
  user: User.all.sample,
  style: styles.sample,
  description: 'A charming cottage by the river for a peaceful getaway.',
  image_url: 'https://example.com/riverside-cottage.jpg'
}

downtown_loft = {
  name: 'Downtown Loft Living',
  address: '789 Main Street',
  city: 'Downtown City',
  rooms: 1,
  user: User.all.sample,
  style: styles.sample,
  description: 'Live in the heart of the city with this trendy loft space.',
  image_url: 'https://example.com/downtown-loft.jpg'
}

elegant_manor = {
    name: 'Elegant Manor House',
    address: '444 Mansion Lane',
    city: 'Manorville',
    rooms: 8,
    user: User.all.sample,
    style: styles.sample,
    description: 'Step back in time with this grand manor house.',
    image_url: 'https://example.com/manor-house.jpg'
}
lakeview_cabin = {
  name: 'Lakeview Cabin',
  address: '77 Forest Road',
  city: 'Lakeside',
  rooms: 3,
  user: User.all.sample,
  style: styles.sample,
  description: 'Enjoy serene lake views from this cozy cabin.',
  image_url: 'https://example.com/lakeview-cabin.jpg'
}

zen_garden = {
  name: 'Zen Garden Retreat',
  address: '123 Tranquil Lane',
  city: 'Sereneville',
  rooms: 3,
  user: User.all.sample,
  style: styles.sample,
  description: 'Find peace and relaxation in this zen garden retreat.',
  image_url: 'https://example.com/zen-retreat.jpg'
}

[cozy_cabin, urban_lost_oasis, sunny_beach_house, mountain_retreat_lodge, pent_house, riverside, downtown_loft, elegant_manor, lakeview_cabin, zen_garden]. each do |attributes|
  location = Location.create!(attributes)
  puts "Created #{location.name}"
end
puts "finished"
