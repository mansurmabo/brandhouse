# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'brandhousekz@gmail.com', password: 'password', password_confirmation: 'password')

20.times do
  Product.create!(vendor_code: Faker::Code.isbn,
                  title: Faker::Commerce.product_name,
                  brand: Faker::Company.name,
                  availability: 'Есть в наличие' ,
                  price: Faker::Commerce.price ,
                  description: Faker::Lorem.paragraph(2) ,
                  image: Faker::LoremPixel.image("255x255")
                  )
end