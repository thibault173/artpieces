# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
puts "Tags created !"

# Creating Users = ok

puts " reating users"

User.create(email: "leonard@devinci.it", password: '123456', password_confirmation: '123456')
User.create(email: "bernard@lvmh.pognon", password:'123456', password_confirmation: '123456')

puts "Users created !"

# Creating Art Pieces


