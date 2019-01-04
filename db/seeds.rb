# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




Movie.destroy_all
User.destroy_all


testuser = User.new( email: '1@2.com', password:'123456')

Movie.create( title: 'Star Wars', description: 'Space opera', rating:'PG-13', user:testuser)
Movie.create( title: 'Spider-Man', description: 'Into the Spider-Verse' ,user:testuser)
Movie.create( title: 'Ralph Breaks The internet', description: 'Wreck it Ralph 2' , user:testuser)
Movie.create( title: 'The Emoji Movie', description: 'Some Shitty Movie' , user:testuser)
