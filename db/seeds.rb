# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

arbi1 = User.create(username: 'Arbi1', password: '1234567', password_confirmation: '1234567')
paul1 = User.create(username: 'Paul1', password: '1234567', password_confirmation: '1234567')

japanuary = Activity.create(category: "Ski")
noshavenovember = Activity.create(category: "Shaving")
skydiving = Activity.create(category: "Skydive")
squirrelsuit = Activity.create(category: "fly", )

list1 = List.create(user_id: 1, activity_id: 1, description: 'Ski Japanuary', location: 'Japan')
list2 = List.create(user_id: 2, activity_id: 2, description: 'Refrain from shaving during the month of november',location: 'Anywhere')
list3 = List.create(user_id: 3, activity_id: 3, description: 'Jump off a plane with no chute',location: 'anywhere')
list4 = List.create(user_id: 4, activity_id: 4, description: 'Fly through the air in a squirrelsuit',location: 'anywhere')

uc1 = UserComment.create(posted_id: 2, received_id: 1, content: 'Arbi the best')
uc2 = UserComment.create(received_id: 2, posted_id: 1, content: 'Paul ok')

lc1 = ListComment.create(list_id: 1, user_id: 2, content: 'Sweet list idea!')
