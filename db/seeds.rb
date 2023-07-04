# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

categories = ["chinese", "italian", "japanese", "french", "belgian"]

puts "Destroying add restaurant"
Restaurant.destroy_all
puts "Done"


puts "creating fake restaurant"
5.times do
  name = Faker::Restaurant.name
  address = Faker::Address.full_address
  category = categories.sample
  phone = Faker::PhoneNumber.cell_phone
  Restaurant.create!(name: name, address: address, category: category, phone_number: phone)
  puts "#{name} Created."
end


puts "DONE!"