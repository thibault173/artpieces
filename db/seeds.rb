# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'open-uri'
# require 'nokogiri'

# Cleaning the DB

puts "Cleaning database..."

if Rails.env.development?
  Tag.destroy_all
  User.destroy_all
  Piece.destroy_all
  Booking.destroy_all
end

# Creating Tags = ok

puts "Creating tags"

tags = [
"Paintings",
"Prints",
"Photography",
"Drawings",
"Sculpture",
"Collage",
"Installation"
]

for i in (0...tags.length)
 Tag.create(name: tags[i])
end
puts "#{Tag.count} Tags created !"

# Creating Users = ok

puts " Creating users"

User.create(email: "leonard@devin.ci", password: '123456', password_confirmation: '123456')
User.create(email: "bernard@lvmh.money", password:'123456', password_confirmation: '123456')

puts "#{User.count} Users created !"

# Creating Art Pieces

puts "Creating Art pieces"

Piece.create(name: "Cafe Terrace at Night", description: "Painted by Vincent Van Gogh, this painting shows an everyday setting in bright colors. A simple dinner at a cafe along a street is well-depicted in this simple painting."+"http://wisetoast.com/wp-content/uploads/2015/10/Cafe-Terrace-at-Night-van-gogh-painting.jpg", price: 20000, user: User.all.sample )
Piece.create(name: "The Kiss", description: "One of the first pieces of art in the Art Nouveau style, this painting used gold leaf as the background. Created by Gustav Klimt, this painting is renowned for this style."+"http://wisetoast.com/wp-content/uploads/2015/10/the-kiss-gustav-klimt-painting.jpg",price: 40000, user: User.all.sample )
Piece.create(name: "Starry Night", description: "Starry Night by Vincent Van Gogh shows the village of Saint-Remy under a swirling sun. It is one of the most well-known images in modern culture and is currently housed in the Museum of Modern Art in New York."+"http://wisetoast.com/wp-content/uploads/2015/10/Starry-Night-by-Vincent-Van-Gogh-painting.jpg", price: 18000,user: User.all.sample )
Piece.create(name: "Girl with a Pearl Earring", description: "The Girl With a Pearl Earring is often known as Dutch Monalisa because the expression on the girl’s face is hard to understand. This painting by Johannes Vermeer has her pearl earrings as the focal point."+"http://wisetoast.com/wp-content/uploads/2015/10/girl-with-a-pearl-earring-johannes-painting.jpg", price: 25000,user: User.all.sample )
Piece.create(name: "Lunch Atop A Skyscraper", description: "It’s the most perilous yet playful lunch break ever captured: 11 men casually eating, chatting and sneaking a smoke as if they weren’t 840 feet above Manhattan with nothing but a thin beam keeping them aloft. That comfort is real; the men are among the construction workers who helped build Rockefeller Center."+"https://static.boredpanda.com/blog/wp-content/uploads/2016/11/top-100-world-photos-influential-all-time-66-5835a6ee25f26__880.jpg", price: 30000, user: User.all.sample )
Piece.create(name: "Tank Man, Jeff Widener, 1989", description: "On the morning of June 5, 1989, photographer Jeff Widener was perched on a sixth-floor balcony of the Beijing Hotel. It was a day after the Tiananmen Square massacre, when Chinese troops attacked pro-democracy demonstrators camped on the plaza, and the Associated Press sent Widener to document the aftermath"+"https://static.boredpanda.com/blog/wp-content/uploads/2016/11/top-100-world-photos-influential-all-time-3-5835a63ef23db__880.jpg", price: 100000, user: User.all.sample )
Piece.create(name: "Abraham Lincoln Statue", description: ""+"http://amolife.com/image/images/stories/Art&Abstract/most_popular_sculptures%20(16).jpg", price: 300000, user: User.all.sample )


puts "#{Piece.count} Art pieces created !"

# Creating bookings

puts "Creating Bookings"

2.times do
  Booking.create(user: User.all.sample, piece: Piece.all.sample, start_on: Date.today.next_week, end_on: Date.today.next_week.next_week)
end

puts " #{Booking.count} Bookings created !"

