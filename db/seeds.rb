# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sequel = %w[2 3 4 5]
15.times do
  Movie.create(title: "#{Faker::Movie.unique.title} #{sequel.sample}: #{Faker::Coffee.blend_name}",
               overview: Faker::Movies::HitchhikersGuideToTheGalaxy.unique.quote,
               poster_url: Faker::Fillmurray.image, rating: Faker::Number.decimal(l_digits: 1, r_digits: 1))
end
