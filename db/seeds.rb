# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


ivan = User.create(email: "ivan@betterbet.com", password_digest: "ivan", name: "Ivan", bio: Faker::Lorem.paragraph)
brittany = User.create(email: "brittany@betterbet.com", password_digest: "Brittany", name: "Brittany", bio: Faker::Lorem.paragraph)
jose = User.create(email: "jose@betterbet.com", password_digest: "jose", name: "Jose", bio: Faker::Lorem.paragraph)
irene = User.create(email: "irene@betterbet.com", password_digest: "irene", name: "Irene", bio: Faker::Lorem.paragraph)
anne = User.create(email: "anne@betterbet.com", password_digest: "anne", name: "Anne", bio: Faker::Lorem.paragraph)

