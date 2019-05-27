# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


puts "Cleaning up database..."
Island.destroy_all
User.destroy_all

puts "Creating users..."

jean = User.create!(
  email: "jean.saglio@gmail.com",
  password: "12345678",
  first_name: "Jean",
  last_name: "Saglio",
  birth_date: "29/02/1988",
  description: "Jean Saglio lead dev of Islander"
  )


franz = User.create!(
  email: "franz@gmail.com",
  password: "12345678",
  first_name: "Franz",
  last_name: "Franz",
  birth_date: "29/02/1988",
  description: "Franz Franz Chief Happiness Officer at Islander"
  )

marieauxille = User.create!(
  email: "marieauxille@gmail.com",
  password: "12345678",
  first_name: "marie-Auxille",
  last_name: "Denis",
  birth_date: "29/02/2000",
  description: "Porquerolles girl"
  )



puts "Creating islands..."

# corse = Island.create!(
#   name: "Corse",
#   country: "France",
#   lat: 42.039604,
#   lng: 9.012893,
#   title: "Louez la Corse",
#   description: "Saucisses et indépendantistes au rdv",
#   rating: 5.2,
#   number_of_guests: 4,
#   price_per_day: 1,
#   photo: "hrvoje-klaric-1470744-unsplash_cykfzc",
#   user_id: 1
# )
u = User.first
angleterre = Island.new(
  name: "Angleterre",
  country: "United Kingdom",
  latitude: 51.509865,
  longitude: -0.118092,
  title: "Tirez en premier messieurs les Anglais",
  description: "Temps de merde et beaucoup d'Anglais. Excellente équipe de rugby",
  number_of_guests: 11,
  price_per_day: 999,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558704355/john-westrock-706905-unsplash_pr7vc7.jpg",
  user_id: u.id
)
angleterre.save

puts "Seeding completed!"



