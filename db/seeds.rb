# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# AdminUser.create!(email: 'brandhousekz@gmail.com', password: 'password', password_confirmation: 'password')

BRANDS = %w( Adidas Nike Fendi Louis-Vuitton Salvatore-Ferragamo Gucci
  Dolce&Gabbana Prada Giorgio-Armani Channel Christian-Dior Versace Burberry  )
CATEGORY = %w( Верхняя-Одежда Брюки Джинсы Головные-Уборы Костюмы Спортивные-Костюмы )

BRANDS.map{ |title| Brand.create title: title }
CATEGORY.map{ |title| Category.create title: title }