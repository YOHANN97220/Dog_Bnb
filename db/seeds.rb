# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
puts 'all user destroyed'
user1 = User.create!(username:"daniela", phonenumber:"079118201", password:"123456", email:"daniela@email.com")
user2 = User.create!(username:"bruno", phonenumber:"079118202", password:"123456", email:"bruno@email.com")
user3 = User.create!(username:"alexia", phonenumber:"079118203", password:"123456", email:"alexia@email.com")
user4 = User.create!(username:"yohann", phonenumber:"079118204", password:"123456", email:"yohann@email.com")

puts '4 users created'


boxes1 = Box.create!(
  name: 'pension maya',
  address: 'bienne',
    description: "pension maya et une pension où votre annimal pourra s'epanouire avec ses congenaire ",
    price_per_day: 100,
    user: user1
    )
boxes2 = Box.create!(
  name: 'pension maya',
  address: 'sion',
    description: "pension maya et une pension où votre annimal pourra s'epanouire avec ses congenaire ",
    price_per_day: 100,
    user: user2
    )

boxes3 = Box.create!(
  name: 'pension maya',
  address: 'vevey',
    description: "pension maya et une pension où votre annimal pourra s'epanouire avec ses congenaire ",
    price_per_day: 100,
    user: user3
    )

boxes4 = Box.create!(
  name: 'pension maya',
  address: 'lausanne',
    description: "pension maya et une pension où votre annimal pourra s'epanouire avec ses congenaire ",
    price_per_day: 100,
    user: user4
    )


puts '4 boxes created'
