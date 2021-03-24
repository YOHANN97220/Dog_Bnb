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
  name: 'Garderie LORELEI ',
  address: 'Bussigny',
    description: "On nous demande parfois si nous sommes une pension familiale ou un chenil !
    Eh bien… Nous sommes un chenil familial, puisque nous travaillons en famille ! Nos pensionnaires ont leurs lieux propres, notre famille les siens. Mais nous habitons ici et pouvons ainsi assurer la surveillance de nos pensionnaires. Ce qui compte aussi parfois aux yeux du propriétaire de chien, c’est de savoir si les chiens dorment dans un boxe ou au salon. Chez nous ils dorment dans des boxes, et sans canapé, certes, mais les lieux totalement adaptés aux besoins de votre compagnon. Nous sommes toujours étonnés de voir que peu de gens par contre se posent la question des compétences réelles du gardien !",
    price_per_day: 50,
    user: user1,
    image_url: "https://www.lorelei.ch/accueil/coronavirus.jpg"
    )
boxes2 = Box.create!(
  name: 'Chez Gus',
  address: "Route d'Eschiens 65, 1673 Ecublens",
    description: "Nous sommes particulièrement attentifs au bien-être de votre chien, mais également à celui de notre voisinage !
Pour cette raison, chaque nouveau chien ne sera accepté qu’après une période d’essai d’un à deux jours (à la charge du propriétaire). ",
    price_per_day: 100,
    user: user2,
    image_url: "https://chezgus.ch/wp-content/gallery/pensionnaires-2015/lilouquippo2-1.jpg"
    )

boxes3 = Box.create!(
  name: 'Truffes & Co.',
  address: 'Route du Stand 5, 1163 Etoy',
    description: "Depuis 2008, Truffes & Co. est un endroit où les maîtres amènent leurs fidèles compagnons sans culpabiliser et où les chiens viennent avec un plaisir énorme, pour y jouer et y retrouver leurs pairs.",
    price_per_day: 81,
    user: user3,
    image_url: "https://www.truffesandco.ch/uploads/1/0/8/4/108466537/pict3027.jpg"
    )

boxes4 = Box.create!(
  name: 'Fun Dog Garderie',
  address: 'Route Cantonale 12, 1077 Servion',
    description: "Chez nous tous les chiens ont la même attention de notre part, donc logiquement petit ou grand c’est le même prix. ",
    price_per_day: 35,
    user: user4,
    image_url:"https://fun-dog-garderie.ch/wp-content/uploads/2019/06/Fun-Dog-Garderie-1621x1080.jpg"
    )


puts '4 boxes created'
