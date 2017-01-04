# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Starry night
van_gogh = Artist.create(name: "Vincent Van Gogh")
starry_night = Display.create(title: "The Starry Night")
oil_on_canvas = Medium.create(name: 'Oil on Canvas')
starry_night.artist = van_gogh
starry_night.medium = oil_on_canvas
starry_night.save

# Mona Lisa
da_vinci = Artist.create(name: "Leonardo Da Vinci")
mona_lisa = Display.create(title: "Mona Lisa")
mona_lisa.artist = da_vinci
mona_lisa.medium = oil_on_canvas
mona_lisa.save

# Chicago Picasso
picasso = Artist.create(name: "Pablo Picasso")
chicago = Display.create(title: "Chicago Picasso")
steel = Medium.create(name: "Steel")
chicago.artist = picasso
chicago.medium = steel
chicago.save
