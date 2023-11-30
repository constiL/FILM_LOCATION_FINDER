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
User.create!(email: "colerner@me.com", password: "123456")

puts "Creating 10 locations...."
cozy_cabin =   {
  name: 'Cozy Cabin Retreat',
  address: '123 Main St',
  city: 'Vienna',
  rooms: 3,
  user: User.all.sample,
  style: styles.sample,
  description: 'A charming cabin in a peaceful setting.',
  image_url: 'https://gallery.streamlinevrs.com/units-gallery/00/07/F6/image_161211384.jpeg'
}

urban_lost_oasis = {
  name: 'Urban Loft Oasis',
  address: '456 Oak Ave',
  city: 'Bari',
  rooms: 2,
  user: User.all.sample,
  style: styles.sample,
  description: 'A stylish loft in the heart of the city.',
  image_url: 'https://images.ctfassets.net/0gqf8nju6pz6/3cOPiQIUvo8jlkT1Qq2dkY/63a730409462d2366e8bcf6f4fae28a5/image2.jpg'
}

sunny_beach_house = {
  name: 'Sunny Beach House',
  address: '789 Ocean Blvd',
  city: 'Edinburgh',
  rooms: 4,
  user: User.all.sample,
  style: styles.sample,
  description: 'A beautiful beach house with stunning ocean views.',
  image_url: 'https://thecottagejournal.com/wp-content/uploads/2022/06/TheCottageJournal_Exterior-1.jpg'
}

mountain_retreat_lodge = {
  name: 'Mountain Retreat Lodge',
  address: '101 Pine Rd',
  city: 'Lisbon',
  rooms: 5,
  user: User.all.sample,
  style: styles.sample,
  description: 'Escape to the mountains in this cozy log cabin.',
  image_url: 'https://redmountainalpinelodge.com/wp-content/uploads/revslider/private-room/living.room_.bigger-1024x683.jpg'
}

pent_house = {
  name: 'Luxury Penthouse Suite',
  address: '555 High Street',
  city: 'Metropolis',
  rooms: 3,
  user: User.all.sample,
  style: styles.sample,
  description: 'Experience luxury living in this high-rise penthouse.',
  image_url: 'https://s.hdnux.com/photos/01/33/20/00/23920647/3/1200x0.jpg'
}

riverside = {
  name: 'Riverside Cottage',
  address: '222 River Lane',
  city: 'Rivertown',
  rooms: 2,
  user: User.all.sample,
  style: styles.sample,
  description: 'A charming cottage by the river for a peaceful getaway.',
  image_url: 'https://images.snaptrip.com/optim/image/file/17804307/hero_sc_14664365275696_932942_21-j.jpg'
}

downtown_loft = {
  name: 'Downtown Loft Living',
  address: '789 Main Street',
  city: 'Downtown City',
  rooms: 1,
  user: User.all.sample,
  style: styles.sample,
  description: 'Live in the heart of the city with this trendy loft space.',
  image_url: 'https://www.flooringcanada.ca/root/clientImages/CX7979WEB/empty-big-413.jpg'
}

elegant_manor = {
    name: 'Elegant Manor House',
    address: '444 Mansion Lane',
    city: 'Manorville',
    rooms: 8,
    user: User.all.sample,
    style: styles.sample,
    description: 'Step back in time with this grand manor house.',
    image_url: 'https://st.hzcdn.com/simgs/pictures/exteriors/elegant-georgian-manor-house-and-garden-douglas-c-lynn-llc-landscape-architecture-img~9c117e7f0038fed7_4-9190-1-370252c.jpg'
}
lakeview_cabin = {
  name: 'Lakeview Cabin',
  address: '77 Forest Road',
  city: 'Lakeside',
  rooms: 3,
  user: User.all.sample,
  style: styles.sample,
  description: 'Enjoy serene lake views from this cozy cabin.',
  image_url: 'https://images.adsttc.com/media/images/5f5f/c524/63c0/178c/4900/09a8/large_jpg/The_Lake_Cabin_High_Res_(59).jpg?1600111853'
}

zen_garden = {
  name: 'Zen Garden Retreat',
  address: '123 Tranquil Lane',
  city: 'Sereneville',
  rooms: 3,
  user: User.all.sample,
  style: styles.sample,
  description: 'Find peace and relaxation in this zen garden retreat.',
  image_url: 'https://amitmurao.com/wp-content/uploads/2019/08/amitmurao_beautiful_zen_garden_ideas_1519b0d4-898a-46b7-8d8d-59485f05a2e9.jpg'
}

[cozy_cabin, urban_lost_oasis, sunny_beach_house, mountain_retreat_lodge, pent_house, riverside, downtown_loft, elegant_manor, lakeview_cabin, zen_garden]. each do |attributes|
  location = Location.create!(attributes)
  puts "Created #{location.name}"
end
puts "finished"
