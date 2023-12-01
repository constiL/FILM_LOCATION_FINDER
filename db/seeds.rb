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
  address: 'Hasenauerstr 2, 1190 Wien',
  city: 'Vienna',
  rooms: 3,
  user: User.all.sample,
  style: styles.sample,
  description: 'A charming cabin in a peaceful setting.',
  image_url: 'https://gallery.streamlinevrs.com/units-gallery/00/07/F6/image_161211384.jpeg',
  cost_per_day: "200"
}

urban_lost_oasis = {
  name: 'Urban Loft Oasis',
  address: 'Str. Lamberti, 8, 70122 Bari BA, Italy',
  city: 'Bari',
  rooms: 2,
  user: User.all.sample,
  style: styles.sample,
  description: 'A stylish loft in the heart of the city.',
  image_url: 'https://images.ctfassets.net/0gqf8nju6pz6/3cOPiQIUvo8jlkT1Qq2dkY/63a730409462d2366e8bcf6f4fae28a5/image2.jpg',
  cost_per_day: "300"
}

sunny_beach_house = {
  name: 'Sunny Beach House',
  address: '90 Haymarket Terrace, Edinburgh EH12 5LQ, United Kingdom',
  city: 'Edinburgh',
  rooms: 4,
  user: User.all.sample,
  style: styles.sample,
  description: 'A beautiful beach house with stunning ocean views.',
  image_url: 'https://thecottagejournal.com/wp-content/uploads/2022/06/TheCottageJournal_Exterior-1.jpg',
  cost_per_day: "100"
}

mountain_retreat_lodge = {
  name: 'Mountain Retreat Lodge',
  address: 'Av. Mal. Craveiro Lopes 390, 1749-009 Lisboa, Portugal',
  city: 'Lisbon',
  rooms: 5,
  user: User.all.sample,
  style: styles.sample,
  description: 'Escape to the mountains in this cozy log cabin.',
  image_url: 'https://redmountainalpinelodge.com/wp-content/uploads/revslider/private-room/living.room_.bigger-1024x683.jpg',
  cost_per_day: "500"
}

pent_house = {
  name: 'Luxury Penthouse Suite',
  address: '636 Fulham Rd., London SW6 5RT, United Kingdom',
  city: 'London',
  rooms: 3,
  user: User.all.sample,
  style: styles.sample,
  description: 'Experience luxury living in this high-rise penthouse.',
  image_url: 'https://s.hdnux.com/photos/01/33/20/00/23920647/3/1200x0.jpg',
  cost_per_day: "600"
}

riverside = {
  name: 'Riverside Cottage',
  address: 'Wienerstraße 14, 7442 Lockenhaus',
  city: 'Lockenhaus',
  rooms: 2,
  user: User.all.sample,
  style: styles.sample,
  description: 'A charming cottage by the river for a peaceful getaway.',
  image_url: 'https://images.snaptrip.com/optim/image/file/17804307/hero_sc_14664365275696_932942_21-j.jpg',
  cost_per_day: "900"
}

downtown_loft = {
  name: 'Downtown Loft Living',
  address: 'Carrer de Marià Cubí, 195, 08021 Barcelona, Spain',
  city: 'Barcelona',
  rooms: 1,
  user: User.all.sample,
  style: styles.sample,
  description: 'Live in the heart of the city with this trendy loft space.',
  image_url: 'https://www.flooringcanada.ca/root/clientImages/CX7979WEB/empty-big-413.jpg',
  cost_per_day: "500"
}

elegant_manor = {
    name: 'Elegant Manor House',
    address: '15 Tun. de Nanterre-La Défense, 92800 Puteaux, France',
    city: 'Paris',
    rooms: 8,
    user: User.all.sample,
    style: styles.sample,
    description: 'Step back in time with this grand manor house.',
    image_url: 'https://st.hzcdn.com/simgs/pictures/exteriors/elegant-georgian-manor-house-and-garden-douglas-c-lynn-llc-landscape-architecture-img~9c117e7f0038fed7_4-9190-1-370252c.jpg',
    cost_per_day: "1000"
}

zen_garden = {
  name: 'Zen Garden Retreat',
  address: 'Av. de Luis Aragonés, 4, 28022 Madrid, Spain',
  city: 'Madrid',
  rooms: 3,
  user: User.all.sample,
  style: styles.sample,
  description: 'Find peace and relaxation in this zen garden retreat.',
  image_url: 'https://amitmurao.com/wp-content/uploads/2019/08/amitmurao_beautiful_zen_garden_ideas_1519b0d4-898a-46b7-8d8d-59485f05a2e9.jpg',
  cost_per_day: "1500"
}

[cozy_cabin, urban_lost_oasis, sunny_beach_house, mountain_retreat_lodge, pent_house, riverside, downtown_loft, elegant_manor, lakeview_cabin, zen_garden]. each do |attributes|
  location = Location.create!(attributes)
  puts "Created #{location.name}"
end
puts "finished"
