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
  remote_photo_url:"https://res.cloudinary.com/dwkzd2xzh/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1559061780/self_party_zx1udl.png"
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
  title: "The Nantucket of the Mediterranean",
  description: "It is a magical place with many faces. Its paradisiacal beaches, its picturesque village, its splendid landscapes, its vineyards... Porquerolles has everything to please you! To the south, a steep coast made of abrupt cliffs and where some creeks are hidden. While in the north, the landscape is like the Caribbean with its fine sandy beaches and turquoise waters. Porquerolles is a paradise on earth for those who love dream beaches.",
  number_of_guests: 11,
  price_per_day: 999,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558950173/porquerolles/Porquerolles-3_bjk2e1.jpg",
  user_id: jean.id,
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
  user_id: frantz.id,
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
  user_id: frantz.id,
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
  user_id: marieauxille.id,
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
  user_id: frantz.id,
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
  user_id: marieauxille.id,
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
  user_id: basile.id,
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
  user_id: jean.id,
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
  user_id: marieauxille.id,
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
  user_id: marieauxille.id,
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
  user_id: frantz.id,
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
  user_id: basile.id,
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
  user_id: jean.id,
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
  user_id: basile.id,
  address: "Sicily, Italy"
)
sicily.save


ushaia = Island.new(
  name: "Ushaia",
  country: "Argentina",
  title: "A little stay at the end of the world",
  description: "Separated from the mainland by the Strait of Magellan, Ushuaia is commonly known as the 'End of the World'. Considered the southernmost city on the planet, it's perched on a steep hill that overlooks the Beagle Channel, famously populated by penguins and sea lions. Not cold enough? Hop on the boat to Antarctica",
  number_of_guests: 1,
  price_per_day: 13,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558975692/ushuaia_nizyej.jpg",
  user_id: frantz.id,
  address: "Ushaia, Argentina"
)
ushaia.save

islay = Island.new(
  name: "Islay",
  country: "Scotland",
  title: "Have a sip of Lagavulin",
  description: " A peaty malt from the likes of Lagavulin or Laphroaig should take the bite out of the air.",
  number_of_guests: 34,
  price_per_day: 160,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558975914/islay_pxszje.jpg",
  user_id: u.id,
  address: "Islay, Scotland"
)
islay.save


iceland = Island.new(
  name: "Iceland",
  country: "Iceland",
  title: "Wonderful place",
  description: "Think of Iceland and there are several familiar associations: hip Reykjavík, the beautiful therapeutic Blue Lagoon, or perhaps our musical exports Björk or Sigur Rós. But this land of boiling mud pools, spurting geysers, glaciers and waterfalls is also an adventure playground.",
  number_of_guests: 34,
  price_per_day: 160,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558976240/iceland_jbrg0a.jpg",
  user_id: marieauxille.id,
  address: "Iceland"
)
iceland.save

galapagos = Island.new(
  name: "Galapagos",
  country: "Republic of Ecuador",
  title: "The Enchanted Archipelago ",
  description: "The Galapagos Islands offers everyone the possibility to enjoy a great variety of activities for all ages, interests, and fitness, ranging from the contemplative to the adventurous, and knowing that in everything you do you will experience the best of the wildlife and nature.",
  number_of_guests: 14,
  price_per_day: 70,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558979468/galapagos_hj3l2a.jpg",
  user_id: u.id,
  address: "Galapagos, Ecuador"
  )
galapagos.save


macquarie = Island.new(
  name: "Macquarie Islands",
  country:"New Zealand",
  title:"The island of penguins",
  description: "Has been declared a World Heritage Site by UNESCOowing to its extraordinary wildlife. While there are typically no more than 40 people living there at any time, the island supports about 3.5 million breeding seabirds, including nearly a million penguins.",
  number_of_guests: 12,
  price_per_day: 36,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558979613/macquairie_n5tsio.jpg",
  user_id: u.id,
  address:"Macquarie Islands, New Zealand"
  )
macquarie.save


brehat = Island.new(
  name: "Brehat island",
  country:"France",
  title:"The flower island ",
  description: "Off the coast of Paimpol is Ile Bréhat, one of Brittany’s loveliest islands",
  number_of_guests: 12,
  price_per_day: 36,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558979861/brehat_qsksen.jpg",
  user_id: u.id,
  address:"Brehat, France"
  )
brehat.save


aix = Island.new(
  name: "Aix Island",
  country:"France",
  title:"Pearl of the estuary of the Charente",
  description: "Aix Island deserves a stop for a day, the time of a weekend to relax and even longer for people looking to return to the bare essentials. This small crescent of land of 129 hectares is located near the coasts of Charente-Maritime. It offers a 360° panorama with an impressive view on Fort Boyard, to the west with in the background the Ile d'Oléron and the Ile de Ré is to the north, and Madame Island to the south.",
  number_of_guests: 120,
  price_per_day: 78,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558980321/aix_p7rie6.jpg",
  user_id: u.id,
  address:"Ile d'Aix, France"
  )
aix.save

groix = Island.new(
  name: "Groix Island",
  country:"France",
  title:"A miracle of nature",
  description: "The island of Groix (L’ile de Groix) is a real miracle of nature that you can access only by ferry from Lorient. This is a small island with mild micro-climate and a beautiful coastal path that goes all around the island. Here, you can find the spectacular high cliffs, beaches with wonderful fine sand and many small coves. The island of Groix also has a lot of secret and charming places, such as a convex shape beach, the most unusual one in Europe, accessible by a small path and sheltered by a high cliff",
  number_of_guests: 145,
  price_per_day: 76,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558980624/groix_d1b567.jpg",
  user_id: basile.id,
  address:"Groix, France"
  )
groix.save

spm = Island.new(
  name: "Saint Pierre et Miquelon",
  country:"France",
  title:"A French archipelago only steps away from Canada",
  description: "Saint-Pierre and Miquelon, an island of astonishing landscapes, sharp relief and a welcoming population.",
  number_of_guests: 14,
  price_per_day: 12,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558980745/spm_nsh1hf.jpg",
  user_id: frantz.id,
  address:"Saint Pierre et Miquelon, France"
  )
spm.save


bora = Island.new(
  name: "Bora Bora",
  country:"France",
  title:"The most celebrated island in the South Pacific",
  description: "Undoubtedly the most celebrated island in the South Pacific, Bora Bora is French Polynesia's leading lady. Her beauty is unrivaled and her fame, unwavering. Bora Bora is one of the few places on earth that everyone hopes to witness in their lifetime—and once you see it, you are forever enamored",
  number_of_guests: 14,
  price_per_day: 12,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558981323/borabora_hidsqo.jpg",
  user_id: basile.id,
  address:"Bora Bora, France"
  )
bora.save

easter = Island.new(
  name: "Easter island",
  country:"Chile",
  title:"The ultimate bucket-list destination",
  description: "Located at the far eastern point of Polynesia in the middle of the Pacific Ocean, Rapa Nui is a place that has long been shrouded in mystery.",
  number_of_guests: 14,
  price_per_day: 12,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558981535/easter_v1twno.jpg",
  user_id: marieauxille.id,
  address:"Easter Island, Chile"
  )
easter.save


prince = Island.new(
  name: "Prince Edward Island",
  country:"Canada",
  title:"The garden province",
  description: "Prince Edward Island is known for its natural beauty, including its 800 km of beaches.",
  number_of_guests: 10,
  price_per_day: 25,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558982071/prince_dmooiy.webp",
  user_id: marieauxille.id,
  address:"Prince Edward Island, Canada"
  )
prince.save


nansha = Island.new(
  name: "Nansha Island",
  country:"China",
  title:"The islands with the most widely spread of oval coral reefs",
  description: "Surrounding countries in turn from the west, south, east is Vietnam, Indonesia, Malaysia, Brunei and the Philippines. Nansha Islands consists of more than 550 islands, continents and reefs, sands, beaches, but just about one fifth is come out the sea. ",
  number_of_guests: 56,
  price_per_day: 89,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558982607/nansha-islands-01_yyv8ai.png",
  user_id: frantz.id,
  address:"Nansha Islands, China"
  )
nansha.save

baffin = Island.new(
  name: "Baffin Island",
  country:"Canada",
  title:"The largest island in Canada",
  description: "Accessed only by boat or plane, visitors can have a truly unique, remote experience where they'll encounter an environment and wildlife unlike any they've seen before. The Inuit people who live here value sharing as one of the most important characteristics and warmly welcome visitors ",
  number_of_guests: 78,
  price_per_day: 87,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558982528/baffin_w6obfs.webp",
  user_id: frantz.id,
  address:"Baffin Island, Nunavut, China"
  )
baffin.save

kos = Island.new(
  name: "Kos",
  country:"Greece",
  title:"Holidays in the Aegean sea",
  description: "Golden sand beaches, crystal clear waters, archaeological sites and activities for the whole family...",
  number_of_guests: 7,
  price_per_day: 89,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558991399/kos_evhf3l.jpg",
  user_id: basile.id,
  address:"Kos, Greece"
  )
kos.save

alcatraz = Island.new(
  name: "Alcatraz",
  country:"USA",
  title:"On the steps of Al Capone",
  description: "Spend holidays at the Rock !",
  number_of_guests: 10,
  price_per_day: 3,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558992991/alcatraz_txwcks.jpg",
  user_id: v.id,
  address:"San Francisco, USA"
  )
alcatraz.save

cook = Island.new(
  name: "Cook Islands",
  country:"Greece",
  title:"Best kept secret in the Pacific Ocean",
  description: "Enticing aquamarine lagoons, palm-fringed beaches, and volcanic peaks. Best of all, the locals are among the friendliest in the South Pacific.",
  number_of_guests:18,
  price_per_day: 79,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558991924/cook_u3oew1.jpg",
  user_id: v.id,
  address:"Cook Islands, New Zealand"
  )
cook.save

bali = Island.new(
  name: "Bali",
  country:"Indonesia",
  title:"Soak up the spiritual side of Bali",
  description: "Incense wafts from Hindu temples, rice paddies glow in electric greens, and the food jolts the taste buds... Surfing, swimming, shopping, and sunbathing are the prime pursuits on this exotic isle, as well as sightseeing in the lush countryside",
  number_of_guests: 200,
  price_per_day: 87,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558991869/bali_n9o5le.jpg",
  user_id: jean.id,
  address:"Bali, Indonesia"
  )
bali.save


ellis = Island.new(
  name: "Ellis Island",
  country:"USA",
  title:"Close to the Big Apple",
  description: "Give me your tired, your poor, your huddled masses yearning to breathe free, the wretched refuse of your teeming shore, send these, the homeless, tempest-tossed to me, I lift my lamp beside the golden door!",
  number_of_guests: 200,
  price_per_day: 87,
  remote_photo_url: "https://res.cloudinary.com/dwkzd2xzh/image/upload/v1558993018/ellisisland_ffn3l8.jpg",
  user_id: marieauxille.id,
  address:"Ellis Island"
  )
ellis.save

# d1 = DateTime.new(2015,22,06)
# d2 = DateTime.new(2016,11,06)

# booking = Booking.new(
#   start_date: d1,
#   end_date: d2,
#   total_price: 150,
#   island_id: bali.id,
#   user_id: marieauxille.id)
# booking.save


puts "Seeding completed!"
