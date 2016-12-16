# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'ffaker'

p 'Seed file connect'

User.destroy_all
Wish.destroy_all
ContactInfo.destroy_all
  
5.times do
  username = FFaker::Internet.user_name
  password = FFaker::Internet.password
  wish_name = FFaker::Movie.title
  type = ['thing', 'person', 'place'].sample
  phone_number = FFaker::PhoneNumber.short_phone_number
  address = FFaker::AddressUS.street_address + ', ' + FFaker::AddressUS.city + ', ' + FFaker::AddressUS.state
  email = FFaker::Internet.free_email

  user = User.create({username: username, password_digest: password})
  wish = Wish.create({name: wish_name, wish_type: type})
  contact = ContactInfo.create({phone_number: phone_number, address: address, email: email})

  wish.contact_info = contact
  user.wishes << wish
end
