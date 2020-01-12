# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



require 'faker'
10.times do
  user = User.new(name: Faker::Name.name, email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone,high_school: 'West', password_digest:'password')

  user.save!
end

# require 'faker'
# 10.times do
#   organization = Organization.new(name: Faker::Company.name, industry: Faker::Company.industry, description: Faker::Company.bs, email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone, zip: Faker::Address.zip)

#   organization.save
# end