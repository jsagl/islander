puts "Cleaning up database..."
Island.destroy_all
User.destroy_all

puts "Creating users..."

jean = User.new(
  email: "jean.saglio@gmail.com",
  password: "12345678",
  first_name: "Jean",
  last_name: "Saglio",
  birth_date: "29/02/1988",
  description: "Jean Saglio lead dev of Islander",
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558955487/jean_rorail.jpg"
  )
jean.save


frantz = User.new(
  email: "frantz@gmail.com",
  password: "12345678",
  first_name: "Franz",
  last_name: "Franz",
  birth_date: "29/02/1990",
  description: "Franz Franz Chief Happiness Officer at Islander",
  remote_photo_url:"https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558955602/frantz_gjvxxx.jpg"
  )
frantz.save

marieauxille = User.new(
  email: "marieauxille@gmail.com",
  password: "12345678",
  first_name: "Marie-Auxille",
  last_name: "Denis",
  birth_date: "29/02/2000",
  description: "Porquerolles girl",
  remote_photo_url:"https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558955544/self_kbajgt.jpg"
  )
marieauxille.save

basile = User.new(
  email: "basile.sowka@gmail.com",
  password: "12345678",
  first_name: "Basile",
  last_name: "Sowka",
  birth_date: "29/02/2001",
  description: "Porquerolles girl",
  remote_photo_url:"https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558955513/basile_egclqi.jpg"
  )
basile.save



puts "Creating islands..."

u = User.first
v = User.last


porquerolles = Island.new(
  name: "Porquerolles",
  country: "France",
  title: "the Nantucket of the Mediterranean",
  description: "It is a magical place with many faces. Its paradisiacal beaches, its picturesque village, its splendid landscapes, its vineyards... Porquerolles has everything to please you! To the south, a steep coast made of abrupt cliffs and where some creeks are hidden. While in the north, the landscape is like the Caribbean with its fine sandy beaches and turquoise waters. Porquerolles is a paradise on earth for those who love dream beaches.",
  number_of_guests: 11,
  price_per_day: 999,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558950173/porquerolles/Porquerolles-3_bjk2e1.jpg",
  user_id: u.id,
  address: "Porquerolles, France"
)
porquerolles.save


patmos = Island.new(
  name: "Patmos",
  country: "Greece",
  title: "A perfectly lovely place to hole up during end times",
  description: "With its jet-set parties, picturesque beaches, and mountaintop mansions, it offers the sorts of Aegean delights beloved by sybarites and society folk — but in this place where the Book of Revelation was written, hedonism can take a slightly apocalyptic cast",
  number_of_guests: 11,
  price_per_day: 150,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558951295/patmos_yeaxeq.jpg",
  user_id: u.id,
  address: "Patmos, Greece"
)
patmos.save


guernesey = Island.new(
  name: "Guernesey",
  country: "United Kingdom",
  title: "Guernesey, the green island",
  description: "Just an hour away from Diélette or Carteret, discover Guernsey, Jersey's little sister.Here nature is queen and the sea generous.Afar from the daily hustle and bustle, Guernsey promises a stay out of time.English gardens, ramparts ... Many landscapes of irresistible beauty await you, you will also find castles, manor houses, museums ... and the famous Hauteville House house where Victor Hugo lived during his exile.",
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558951542/guernesey_cps4nb.jpg",
  price_per_day: 150,
  user_id: v.id,
  number_of_guests: 10,
  address: "Guernesey, United Kingdom"
  )
guernesey.save

antartica = Island.new(
  name: "Antipods Island",
  country: "Antarctica",
  title: "A stunningly beautiful place with landscapes and seascapes unlike any others",
  description: "No place on Earth compares to this vast white wilderness of elemental forces: snow, ice, water, rock. Antarctica is simply stunning",
  number_of_guests: 150,
  price_per_day: 13,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558951794/antartica_ybevp3.jpg",
  user_id: u.id,
  address: "Antipods Island, Antarctica"
)
antartica.save

vis = Island.new(
  name: "Vis",
  country: "Croatia",
  title: "The idyllic filming location of the hit movie 'Mamma Mia: Here We Go Again'",
  description: "Whether you like your beaches sandy or pebbly, remote or close to town, Vis has the perfect beach for you. Stiniva is the most famous: it's encircled by cliffs, with a small passage to the sea. It is regularly voted the most beautiful beach in Europe.",
  number_of_guests: 15,
  price_per_day: 3,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558952428/vis_iyp3xh.jpg",
  user_id: u.id,
  address: "Vis,Croatia "
)
vis.save

iff = Island.new(
  name: "Chateau d'if",
  country: "France",
  title: "The famous island fort facing Marseille immortalised by Alexander Dumas",
  description: "The Castle of If has been perfectly preserved and is one of the most impressive historical sites on the Mediterranean coastline",
  number_of_guests: 25,
  price_per_day: 130,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558952735/if_ecsikz.jpg",
  user_id: u.id,
  address: "Chateau d'if, France"
  )
iff.save


terceira = Island.new(
  name: "Terceira",
  country: "Portugal",
  title: "Beautiful island in the Azores archipelago",
  description: "With sandy beaches, dozens of stunning viewpoints, and even the ability to explore inside an extinct volcano",
  number_of_guests: 20,
  price_per_day: 100,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558953687/terceira_jpzmqv.jpg",
  user_id: v.id,
  address: "Terceira, Portugal"
  )
terceira.save


palawan = Island.new(
  name: "Palawan Island",
  country: "Philippines",
  title: "Stunning archipelago ranked as the most beautiful island in the world",
  description: "Visit the Balsahan or Tagbarung Swimming Resort, Kalis Point, or better yet, get a taste of El Nido. El Nido features black marble caves, tabletop corals, fantastic marine life, and the requisite white sand beach. Named after the swallow's nest which proliferates in its mountain caves, El Nido also features one of the most delicious samplings of the freshest seafood in the land.",
  number_of_guests: 50,
  price_per_day: 100,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558954043/Palawan-islands_dxppoz.jpg",
  user_id: v.id,
  address: "Palawan Island, Philippines"
  )
palawan.save

capri = Island.new(
  name: "Capri",
  country: "Italy",
  title: "Where endless waters and thermal springs meet Italian fashion and glittering nightlife",
  description: " A vivacious combination of laid-back modern glamour and ancient beauty. Tell us you want the best spot for a romantic dinner under a canopy of lemon groves and we’ll send you to one of Capri’s most exclusive restaurants",
  number_of_guests: 50,
  price_per_day: 100,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558954487/Capri-island_ag2opp.jpg",
  user_id: v.id,
  address: "Capri, Italy"
  )
capri.save

maldives = Island.new(
  name: "Maldives",
  country: "Maldives",
  title: "Tropical paradise",
  description: "The islands offer its visitors pure white sand beaches, turquoise waters, and an amazing marine life experience.",
  number_of_guests: 67,
  price_per_day: 100,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558954741/Maldives-islands_g05xgo.jpg",
  user_id: v.id,
  address: "Maldives"
  )
maldives.save

seychelles = Island.new(
  name: "Seychelles",
  country: "Seychelles",
  title: "The most beautiful islands on Earth",
  description:  "In addition to immaculate white sands and welcoming waters, this spectacular country is also home to a vibrant diversity of cultures",
  number_of_guests: 67,
  price_per_day: 100,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558954748/Seychelles-islands_jrrn44.jpg",
  user_id: v.id,
  address: "Seychelles"
  )
seychelles.save

polynesia = Island.new(
  name: "French Polynesia",
  country: "France",
  title: "The most stunning islands on earth",
  description:  "Few to no other place in the world has a more exotic feel to its name than what French Polynesia has.",
  number_of_guests: 67,
  price_per_day: 100,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558954745/French-Polynesia_fdzzva.jpg",
  user_id: v.id,
  address: "French Polynesia"
  )
polynesia.save


kauai = Island.new(
  name:"Kauai",
  country:"Hawai",
  title: "The Garden Isle",
  description: "Breathtaking island characterized by its wealth of lush, rich lands, including vast tropical rainforests, jaw-dropping mountains and stunning beaches",
  number_of_guests: 98,
  price_per_day: 190,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558956895/kauai_jhq6xf.jpg",
  user_id: v.id,
  address: "Kauai, Hawai"

  )
kauai.save

jamaica = Island.new(
  name:"Jamaica",
  country:"Jamaica",
  title: "Wonderful and always sunny",
  description: "Let the reggae and dancehall music set the tone for your stay as you fill your itinerary will everything from caving and swimming with dolphins to checking out the museums and finding the best jerk chicken on the island. Unfortunately, way too many people stay cooped up in their resorts and don’t get to experience the authentic Jamaican hot spots.",
  number_of_guests: 90,
  price_per_day: 100,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558958293/jamaica_kgaiz1.jpg",
  user_id: v.id,
  address: "Jamaica"
  )
jamaica.save


sicily = Island.new(
  name: "Sicily",
  country: "Italy",
  title: "Great place to have food and fun",
  description: "Sicily has beautiful black-sand beaches, a volcano to ski on and desserts to satisfy the sweetest tooth. Plus 8,000 mummified citizens in the catacombs of Palermo, to keep you awake at night",
  number_of_guests: 150,
  price_per_day: 13,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558959085/sicily_ng8bnf.jpg",
  user_id: u.id,
  address: "Sicily, Italy"
)
sicily.save



puts "Seeding completed!"
