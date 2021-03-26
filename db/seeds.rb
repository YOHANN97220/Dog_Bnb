# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Box.destroy_all
User.destroy_all
puts 'all user destroyed'
user1 = User.create!(username:"daniela", phonenumber:"079118201", password:"123456", email:"daniela@email.com")
user2 = User.create!(username:"bruno", phonenumber:"079118202", password:"123456", email:"bruno@email.com")
user3 = User.create!(username:"alexia", phonenumber:"079118203", password:"123456", email:"alexia@email.com")
user4 = User.create!(username:"yohann", phonenumber:"079118204", password:"123456", email:"yohann@email.com")

puts '4 users created'


boxes1 = Box.create!(
  name: 'Garderie LORELEI ',
  address: 'Bussigny',
    description: "Chez nous tous les chiens ont la même attention de notre part, donc logiquement petit ou grand c’est le même prix. ",
    price_per_day: 50,
    user: user1,
    image_url: "https://images.unsplash.com/photo-1508568230916-c2692a5d7b1d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1052&q=80"
    )
boxes2 = Box.create!(
  name: 'Chez Gus',
  address: "Route d'Eschiens 65, 1673 Ecublens",
description: "Chez nous tous les chiens ont la même attention de notre part, donc logiquement petit ou grand c’est le même prix. ",
    price_per_day: 90,
    user: user2,
    image_url: "https://images.unsplash.com/photo-1534120247760-c44c3e4a62f1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1074&q=80"
    )

boxes3 = Box.create!(
  name: 'Truffes & Co.',
  address: 'Route du Stand 5, 1163 Etoy',
    description: "Chez nous tous les chiens ont la même attention de notre part, donc logiquement petit ou grand c’est le même prix. ",
    price_per_day: 81,
    user: user3,
    image_url: "https://images.unsplash.com/photo-1511467134950-e3c968bf539d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80"
    )

boxes4 = Box.create!(
  name: 'Fun Dog Garderie',
  address: 'Route Cantonale 12, 1077 Servion',
    description: "Chez nous tous les chiens ont la même attention de notre part, donc logiquement petit ou grand c’est le même prix. ",
    price_per_day: 20,
    user: user4,
    image_url:"https://images.unsplash.com/photo-1520891309540-863309442d8a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1041&q=80"
    )

boxes5 = Box.create!(
  name: 'Chez Urs',
  address: 'Kapuzinerweg 12, 6006 Luzern',
    description: "Chez nous tous les chiens ont la même attention de notre part, donc logiquement petit ou grand c’est le même prix. ",
    price_per_day: 80,
    user: user4,
    image_url:"https://images.unsplash.com/photo-1585071550721-fdb362ae2b8d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
    )

boxes6 = Box.create!(
  name: 'Start Up Garderie',
  address: 'Neumattstrasse 29, 5000 Aarau',
    description: "Chez nous tous les chiens ont la même attention de notre part, donc logiquement petit ou grand c’est le même prix. ",
    price_per_day: 40,
    user: user4,
    image_url:"https://images.unsplash.com/photo-1551209028-8bbf88d0044f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80"
    )

boxes7 = Box.create!(
  name: 'Biscot de Chien',
  address: 'Via Tesserete 46, 6900 Lugano',
    description: "Chez nous tous les chiens ont la même attention de notre part, donc logiquement petit ou grand c’est le même prix. ",
    price_per_day: 35,
    user: user4,
    image_url:"https://images.unsplash.com/photo-1596653048897-c0f1484995d3?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1909&q=80"
    )

boxes8 = Box.create!(
  name: 'Garderie de Rue',
  address: 'Teufener Strasse 20, 9000 St. Gallen',
    description: "Chez nous tous les chiens ont la même attention de notre part, donc logiquement petit ou grand c’est le même prix. ",
    price_per_day: 5,
    user: user4,
    image_url:"https://images.unsplash.com/photo-1596478263363-a5f6ed89d1ee?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
    )


puts '8 boxes created'
