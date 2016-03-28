# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Person
taki = Person.create!(first_name: "taki", last_name: "bell")
burge = Person.create!(first_name: "burge", last_name: "king")
kyla = Person.create!(first_name: "kyla", last_name: "bigh")
qingl = Person.create!(first_name: "qingl", last_name: "yull")
lastp = Person.create!(first_name: "lastp", last_name: "this")


# Food
pizza = Food.create!(item: "pizza")
burger = Food.create!(item: "burger")
chicken = Food.create!(item: "chicken")
rib = Food.create!(item: "ribs")
sandwich = Food.create!(item: "sandwich")

# User
taki1 = User.create!(email: "tbell@memphis.edu", password: "Passw0rd")
burge1 = User.create!(email: "burge@memphis.edu", password: "Burgeking0")
kyla1 = User.create!(email: "kyla@memphis.edu", password: "Kylabigh0")
qing11 = User.create!(email: "qing1@memphis.edu", password: "Qingyull0")
lastp1 = User.create!(email: "a@memphis.edu", password: "Passw0rd")


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

# Event
event1 = Event.create!(title: "Free Pizza", description: "This event serves 150 Free Pizzas", event_date: "09-10-2016", event_time: "15:00" ,validity: true, image: "", link: " ")
event2 = Event.create!(title: "Free Coffee", description: "This event serves 150 cups of Free Coffee", event_date: "12-10-2016", event_time: "17:00" ,validity: true, image: "", link: " ")
event3 = Event.create!(title: "Free Pizza and Burgers", description: "This event serves 200 Free Pizzas and 100 Free burger", event_date: "11-10-2016", event_time: "11:00" ,validity: true, image: "", link: " ")
event4 = Event.create!(title: "Free Chicken", description: "This event serves 150 pounds Free Chicken. We will provide you the chicken pieces of desired weights", event_date: "6-10-2016", event_time: "15:00" ,validity: true, image: "", link: " ")
event5 = Event.create!(title: "Free Sandwiches", description: "This event serves Free Sandwiches", event_date: "09-10-2016", event_time: "11:00" ,validity: true, image: "", link: " ")
event6 = Event.create!(title: "Free Food", description: "This event serves Free Food", event_date: "09-10-2016", event_time: "11:00" ,validity: true, image: "", link: " ")

# Location
fit = Location.create!(department: "Computer Science", building: "FIT", floor: "first floor", room: "")
smith = Location.create!(department: "Bio Informatics", building: "Smith Hall", floor: "fourth floor", room: "416")
dunn = Location.create!(department: "Computer Science", building: "Dunn Hall", floor: "third floor", room: "352")
fit2 = Location.create!(department: "Computer Science", building: "FIT", floor: "second floor", room: "270")
psc = Location.create!(department: "Psychology", building: "Psychology Building", floor: "first floor", room: "")

#Keyword
key1 = Keyword.create!(tag: "coffee")
key2 = Keyword.create!(tag: "pizza")
key3 = Keyword.create!(tag: "sandwich")
key4 = Keyword.create!(tag: "burger")
key5 = Keyword.create!(tag: "chicken")

# event location association
event1.location = fit
event2.location = smith
event3.location = dunn
event4.location = fit2
event5.location = psc

# event keyword association
 event1.keywords << key2
 event2.keywords << key1
 event3.keywords << key2 << key4
 event4.keywords << key5
 event5.keywords << key3
 

# Person User association
taki1.person = taki
burge1.person = burge
kyla1.person = kyla
qing11.person = qingl
lastp1.person = lastp

# # Person comment association
taki.comments << C1
burge.comments << C4 << C5
kyla.comments << C6 << C7
qingl.comments << C3 << C4 << C5
lastp.comments << C6 << C9 << C5 << C1

# # Event keywords association
event1.keywords << key1 << key3 << key4
event2.keywords << key2 << key4
event3.keywords << key1 << key4
key1.events << event4 << event5
key5.events << event4 << event5

# # Event Food association
event1.foods << pizza << burger
event2.foods << burger
event3.foods << chicken
event4.foods << rib
event5.foods << sandwich

# # Event Comment association
event1.comments << C1 << C2
event2.comments << C3 << C5
event3.comments << C4 << C6
event4.comments << C9 << C7
event5.comments << C3 << C8

# Event Person association 
taki.events << event1 << event2
burge.events << event3
lastp.events << event4 << event5