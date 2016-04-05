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
qingl = User.create!(first_name: "qingl", last_name: "yull")
lastp = User.create!(first_name: "lastp", last_name: "this")


# Food
pizza = Food.create!(item: "pizza")
burger = Food.create!(item: "burger")
chicken = Food.create!(item: "chicken")
rib = Food.create!(item: "ribs")
sandwich = Food.create!(item: "sandwich")


# Login
taki1 = Login.create!(email: "taki@memphis.edu", password: "Takibell0")
burge1 = Login.create!(email: "burge@memphis.edu", password: "Burgeking0")
kyla1 = Login.create!(email: "kyla@memphis.edu", password: "Kylabigh0")
qing11 = Login.create!(email: "qing1@memphis.edu", password: "Qingyull0")
lastp1 = Login.create!(email: "lastp@memphis.edu", password: "Lastpthis0")


# Comment
C1 = Comment.create!(comment: "I liked the event.", score: 10)
C2 = Comment.create!(comment: "The event was very educational. I expect the same kind of event in future.", score: 8)
C3 = Comment.create!(comment: "The event was great.", score: 9)
C4 = Comment.create!(comment: "The event was unforgettable and the team has put together the commendable job. The food was also very nice.", score: 10)
C5 = Comment.create!(comment: "Learned some new things which will surely help me for the future. Also they served a really good quality food.", score: 9)
C6 = Comment.create!(comment: "The overall experience was good but the event could be better organised.", score: 6)
C7 = Comment.create!(comment: "The host was very nice.", score: 7)
C8 = Comment.create!(comment: "The event was on time", score: 8)
C9 = Comment.create!(comment: "I made the olt of connections in the event.", score: 9)
C10 = Comment.create!(comment: "The event started little late also they could have arranged sufficient amount of food since later they were out of food", score:6)


