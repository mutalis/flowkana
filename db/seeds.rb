# Create farms
polykulture_farm = Farm.create!(
  name: 'Polykulture Farm',
  county: 'Mendocino'
)
happy_day_farm = Farm.create!(
  name: 'Happy Day Farm',
  county: 'Humboldt'
)
alpine_glow_farm = Farm.create!(
  name: 'Alpine Glow',
  county: 'Trinity'
)

# Create strains
Strain.create!([
  {
    name: 'In The Pines',
    farm: polykulture_farm,
    family: 'Sativa Dominant',
    thc: 8.92,
    cbd: 10.15,
    purchase_price_per_gram: 3.75,
    weight: 1512.32
  },
  {
    name: 'Blue Dream',
    farm: happy_day_farm,
    family: 'Sativa',
    thc: 21.20,
    cbd: 0.90,
    purchase_price_per_gram: 3.75,
    weight: 3410.05
  },
  {
    name: 'Black Lime Reserve',
    farm: happy_day_farm,
    family: 'Indica',
    thc: 18.60,
    cbd: 0.20,
    purchase_price_per_gram: 3.75,
    weight: 800.50
  },
  {
    name: 'Royal Ogre',
    farm: alpine_glow_farm,
    family: 'Indica Dominant',
    thc: 23.10,
    cbd: 0.10,
    purchase_price_per_gram: 3.75,
    weight: 1200
  }
])
