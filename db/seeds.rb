# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

arbi1 = User.create(username: 'Arbi1', password: '123', password_confirmation: '123')
paul1 = User.create(username: 'Paul1', password: '123', password_confirmation: '123')

japanuary = Activity.create(description: 'Ski Japanuary', location: 'Japan')

list1 = List.create(user_id: 1, activity_id: 1)
