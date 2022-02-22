# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 30.times do
#   user = User.new(email: "bob@bob.gmail")
#   user.save
# end

30.times do
  venue = Venue.new(title: ['Cozy Chalet', 'Magnificent Castle', 'Stately Manor'].sample,
              location: ['Vail, Colorado', 'Lyon, France', ].sample,
              description: ['Warm and cozy chalet, nice views, great for couples',
              'Splendid and spacious castle, very regal, great large parties',
              'Comfortable 19th century manor, fully furnished, perfect for weekend getaways'].sample,
              rate: [250, 999, 499].sample, square_meters: [100, 250, 500].sample,
              user_id: 1)
  venue.save
end
puts 'Seed finished'
