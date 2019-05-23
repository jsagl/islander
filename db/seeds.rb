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

marie_auxille = User.create!(
  email: "marie-auxille@gmail.com",
  password: "12345678",
  first_name: "marie-Auxille",
  last_name: "Denis",
  birth_date: "29/02/2000",
  description: "Porquerolles girl"
  )



puts "Creating islands..."

corse = Island.create!(
  name: "Corse",
  country: "France",
  lat: 42.039604,
  lng: 9.012893,
  title: "Louez la Corse",
  description: "Saucisses et indépendantistes au rdv",
  rating: 5.2,
  number_of_guests: 4,
  price_per_day: 1,
  photo: "corse_tobxyj",
  user_id: 1
)

angleterre = Island.create!(
  name: "Angleterre",
  country: "United Kingdom",
  lat: 51.509865,
  lng: -0.118092,
  title: "Tirez en premier messieurs les Anglais",
  description: "Temps de merde et beaucoup d'Anglais. Excellente équipe de rugby",
  rating: 0.2,
  number_of_guests: 11,
  price_per_day: 999,
  photo: "lgwh5cz7nndtms0deold",
  user_id: 1
)

puts "Seeding completed!"



