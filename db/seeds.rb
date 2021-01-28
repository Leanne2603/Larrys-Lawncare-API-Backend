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
Category.destroy_all()
Booking.destroy_all()



mowing = Category.create(category_name: "Mowing")
gardening = Category.create(category_name: "Gardening and Landscaping")

smalllawn = Service.create(service_name: "Small lawn (up to 350sqm)", price: 60, category: mowing)
mediumlawn = Service.create(service_name: "Medium lawn (up to 650sqm)", price: 80, category: mowing)
largelawn = Service.create(service_name: "Large lawn (up to 1000sqm)", price: 110, category: mowing)
xtralargelawn = Service.create(service_name: "More than 1000sqm", price: "Request quote", category: mowing)
slashing = Service.create(service_name: "Slashing", price: "75 p/hr", category: mowing)
gardeningregular = Service.create(service_name: "Gardening regular", price: "70 p/hr", category: gardening)
fertilising = Service.create(service_name: "Fertilising (up to 350sqm yard)", price: 30, category: gardening)
fertilising1 = Service.create(service_name: "Fertilising (up to 650sqm yard)", price: 45, category: gardening)
fertilising2 = Service.create(service_name: "Fertilising (up to 1000sqm yard)", price: 60, category: gardening)
fertilising3 = Service.create(service_name: "Fertilising (more than 1000sqm)", price: "Request quote", category: gardening)
lanscaping = Service.create(service_name: "Landscaping", price: "Request quote", category: gardening)
weedcontrol = Service.create(service_name: "Weed Control", price: "50 p/hr", category: gardening)
lawnaerating = Service.create(service_name: "Lawn aerating", price: "60 p/hr", category: gardening)

postcode4110 = Postcode.create(postcode: 4110)
postcode4109 = Postcode.create(postcode: 4109)
postcode4112 = Postcode.create(postcode: 4112)
postcode4113 = Postcode.create(postcode: 4113)
postcode4114 = Postcode.create(postcode: 4114)
postcode4115 = Postcode.create(postcode: 4115)
postcode4116 = Postcode.create(postcode: 4116)
postcode4117 = Postcode.create(postcode: 4117)
postcode4118 = Postcode.create(postcode: 4118)
postcode4119 = Postcode.create(postcode: 4119)
postcode4120 = Postcode.create(postcode: 4120)


suburb1 = Suburb.create(name: "Acacia Ridge", postcode: postcode4110)
suburb2 = Suburb.create(name: "Heathwood", postcode: postcode4110)
suburb3 = Suburb.create(name: "Larapinta", postcode: postcode4110)
suburb4 = Suburb.create(name: "Pallara", postcode: postcode4110)
suburb5 = Suburb.create(name: "Willawong", postcode: postcode4110)
suburb6 = Suburb.create(name: "Altandi", postcode: postcode4109)
suburb7 = Suburb.create(name: "Banoon", postcode: postcode4109)
suburb8 = Suburb.create(name: "Macgregor", postcode: postcode4109)
suburb9 = Suburb.create(name: "Robertson", postcode: postcode4109)
suburb10 = Suburb.create(name: "Sunnybank", postcode: postcode4109)
suburb11 = Suburb.create(name: "Sunnybank Hills", postcode: postcode4109)
suburb12 = Suburb.create(name: "Kuraby", postcode: postcode4112)
suburb13 = Suburb.create(name: "Eight Mile Plains", postcode: postcode4113)
suburb14 = Suburb.create(name: "Fruitgrove", postcode: postcode4113)
suburb15 = Suburb.create(name: "Runcorn", postcode: postcode4113)
suburb16 = Suburb.create(name: "Kingston", postcode: postcode4114)
suburb17 = Suburb.create(name: "Logan Central", postcode: postcode4114)
suburb18 = Suburb.create(name: "Trinder Park", postcode: postcode4114)
suburb19 = Suburb.create(name: "Woodridge", postcode: postcode4114)
suburb20 = Suburb.create(name: "Algester", postcode: postcode4115)
suburb21 = Suburb.create(name: "Parkinson", postcode: postcode4115)
suburb22 = Suburb.create(name: "Calamvale", postcode: postcode4116)
suburb23 = Suburb.create(name: "Drewvale", postcode: postcode4116)
suburb24 = Suburb.create(name: "Stretton", postcode: postcode4116)
suburb25 = Suburb.create(name: "Berrinba", postcode: postcode4117)
suburb26 = Suburb.create(name: "Karawatha", postcode: postcode4117)
suburb27 = Suburb.create(name: "Browns Plains", postcode: postcode4118)
suburb28 = Suburb.create(name: "Brownsleigh", postcode: postcode4118)
suburb29 = Suburb.create(name: "Forestdale", postcode: postcode4118)
suburb30 = Suburb.create(name: "Heritage Park", postcode: postcode4118)
suburb31 = Suburb.create(name: "Hillcrest", postcode: postcode4118)
suburb32 = Suburb.create(name: "Regents Park", postcode: postcode4118)
suburb33 = Suburb.create(name: "Underwood", postcode: postcode4119)
suburb34 = Suburb.create(name: "Greenslopes", postcode: postcode4120)
suburb35 = Suburb.create(name: "Loreto Hill", postcode: postcode4120)
suburb36 = Suburb.create(name: "Stones Corner", postcode: postcode4120)












