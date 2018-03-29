# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

arbi1 = User.create(username: 'Arbi', password: '1234', password_confirmation: '1234')
paul1 = User.create(username: 'Paul', password: '1234', password_confirmation: '1234')

skiing = Activity.create(category: "Skiing")
shaving = Activity.create(category: "Shaving")
skydiving = Activity.create(category: "Skydive")
squirrel_suit = Activity.create(category: "Squirel suit")


surfing = Activity.create(category: "Surfing")
travelling = Activity.create(category: "Travelling")
star_gazing = Activity.create(category: "Star gazing")
scuba_diving = Activity.create(category: "Scuba Diving")
horseback_riding = Activity.create(category: "Horseback riding")
fishing = Activity.create(category: "Fishing")
hiking = Activity.create(category: "Hiking")
base_jumping = Activity.create(category: "Base jumping")
rafting = Activity.create(category: "Rafting")
dog_sledding = Activity.create(category: "Dog sledding")
climbing = Activity.create(category: "Climbing")
snowboarding = Activity.create(category: "Snowboarding")
cliff_diving = Activity.create(category: "Cliff diving")
driving = Activity.create(category: "Driving")
camping = Activity.create(category: "Camping")
bouldering = Activity.create(category: "Bouldering")

list1 = List.create(user_id: 1, activity_id: 1, description: 'Ski Japanuary', location: 'Japan')
list2 = List.create(user_id: 2, activity_id: 2, description: 'Refrain from shaving in November',location: 'Anywhere')
list3 = List.create(user_id: 1, activity_id: 3, description: 'Jump off a plane with no parachute',location: 'Anywhere')
list4 = List.create(user_id: 2, activity_id: 4, description: 'Fly through the air in a squirrelsuit',location: 'Anywhere')

list5 = List.create(user_id: 2, activity_id: 5, description: 'Learn how to surf',location: 'Philippines')
list6 = List.create(user_id: 2, activity_id: 6, description: 'Travel to Madascar',location: 'Madascar')
list7 = List.create(user_id: 2, activity_id: 7, description: 'Star gaze',location: 'National Park')
list8 = List.create(user_id: 2, activity_id: 8, description: 'Scuba Dive',location: 'Great Barrier Reef')
list9 = List.create(user_id: 2, activity_id: 9, description: 'Horseback ride across the Andes',location: 'Argentina and Chile')
list10 = List.create(user_id: 2, activity_id: 10, description: 'Catch tropical fish',location: 'Seychelles')
list11 = List.create(user_id: 2, activity_id: 11, description: 'Go on a hike',location: 'Milford Track, New Zealand')
list12 = List.create(user_id: 2, activity_id: 12, description: 'Base jump',location: 'Anywhere')
list13 = List.create(user_id: 2, activity_id: 13, description: 'Go white water rafting',location: 'Grand Canyon')
list14 = List.create(user_id: 2, activity_id: 14, description: 'Dog sled',location: 'Finland')
list15 = List.create(user_id: 2, activity_id: 15, description: 'Climb a mountain',location: 'Anywhere')
list16 = List.create(user_id: 2, activity_id: 16, description: 'Learn to snowboard',location: 'Anywhere')
list17 = List.create(user_id: 2, activity_id: 17, description: 'Go cliff diving',location: 'Anywhere')
list18 = List.create(user_id: 2, activity_id: 18, description: 'Drive on the Autobahn',location: 'Germany')
list19 = List.create(user_id: 2, activity_id: 19, description: 'Go on a multi day camping trip',location: 'Anywhere')
list20 = List.create(user_id: 2, activity_id: 20, description: 'Go bouldering',location: 'Anywhere')




uc1 = UserComment.create(posted_id: 2, received_id: 1, content: 'Arbi the best')
uc2 = UserComment.create(received_id: 2, posted_id: 1, content: 'Paul ok')

lc1 = ListComment.create(list_id: 1, user_id: 2, content: 'Sweet list idea!')
