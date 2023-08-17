# db/seeds.rb
Garden.destroy_all if Rails.env.development?

little = Garden.create!(
  name: 'My Little Garden',
  banner_url: 'https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg'
)

Garden.create!(
  name: 'My Other Garden',
  banner_url: 'https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg'
)

Plant.create!(
  name: 'Agave',
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Agave_americana_R01.jpg/1280px-Agave_americana_R01.jpg',
  garden: little
)

Plant.create!(
  name: 'Oak',
  image_url: 'https://images.unsplash.com/photo-1611859328053-3cbc9f9399f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1026&q=80',
  garden: little
)

Plant.create!(
  name: 'Palm Tree',
  image_url: 'https://images.unsplash.com/photo-1573261289561-d584b9e07feb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=60',
  garden: little
)

Plant.create!(
  name: 'Sakura',
  image_url: 'https://www.artmajeur.com/medias/hd/k/l/klaus-vartzbed/artwork/11663708_dsc03657.jpg',
  garden: little
)
