# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User
taki = User.create!(first_name: "taki", last_name: "bell")
burge = User.create!(first_name: "burge", last_name: "king")
kyla = User.create!(first_name: "kyla", last_name: "bigh")
qingl = User.create!(first_name: "qingl", last_name: "yul")
lastp = User.create!(first_name: "lastp", last_name: "this")


# Food
pizza = Food.create!(item: "pizza")
burger = Food.create!(item: "burger")
chicken = Food.create!(item: "chicken")
rib = Food.create!(item: "rib")
sandwich = Food.create!(item: "sandwich")