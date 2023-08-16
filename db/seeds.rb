# db/seeds.rb
Garden.destroy_all if Rails.env.development?

garden1 = Garden.create!(
  name: 'My Little Garden',
  banner_url: 'https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg'
)

Garden.create!(
  name: 'My Other Garden',
  banner_url: 'https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg'
)

Plant.create!(
  name: 'Cactus',
  image_url: 'https://picsum.photos/200',
  garden: garden1
)

Plant.create!(
  name: 'Oak',
  image_url: 'https://picsum.photos/200',
  garden: garden1
)

Plant.create!(
  name: 'Palm Tree',
  image_url: 'https://picsum.photos/200',
  garden: garden1
)
