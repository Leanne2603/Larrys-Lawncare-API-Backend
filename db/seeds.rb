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

Service.create(service: "Small lawn (up to 350sqm)", price: 60, category: mowing)
Service.create(service: "Medium lawn (up to 650sqm)", price: 80, category: mowing)
Service.create(service: "Large lawn (up to 1000sqm)", price: 110, category: mowing)
Service.create(service: "More than 1000sqm", price: "Request quote", category: mowing)
Service.create(service: "Slashing", price: "75 p/hr", category: mowing)
Service.create(service: "Gardening regular", price: "70 p/hr", category: gardening)
Service.create(service: "Fertilising (up to 350sqm yard)", price: 30, category: gardening)
Service.create(service: "Fertilising (up to 650sqm yard)", price: 45, category: gardening)
Service.create(service: "Fertilising (up to 1000sqm yard)", price: 60, category: gardening)
Service.create(service: "Fertilising (more than 1000sqm)", price: "Request quote", category: gardening)
Service.create(service: "Landscaping", price: "Request quote", category: gardening)
Service.create(service: "Weed Control", price: "50 p/hr", category: gardening)
Service.create(service: "Lawn aerating", price: "60 p/hr", category: gardening)






