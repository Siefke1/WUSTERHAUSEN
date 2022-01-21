# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# puts "deleting categories"

# Category.delete_all
# puts "Creating 5 Categories"

# Category.create!(title: "Sport")
# Category.create!(title: "Handwerk")
# Category.create!(title: "Kunst")
# Category.create!(title: "Kurse")
# Category.create!(title: "Sonstiges")

puts "creating a user"

User.create!(email: "user@user.de", password: "123456")

puts "Creating 2 offers"

Offer.create!(title: "Test", description: "This is a test description", user_id: 1, category_id: 11)

puts "done"
