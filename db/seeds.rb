# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Suburb.destroy_all()
Postcode.destroy_all()
Service.destroy_all()
Booking.destroy_all()
Category.destroy_all()



mowing = Category.create(category: "Mowing")
gardening = Category.create(category: "Gardening and Landscaping")

Service.create(service: "Small lawn (up to 350sqm)", price: 50, category: mowing)
