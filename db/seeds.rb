# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "deleting users"
Venue.delete_all
puts "deleting venues"
User.delete_all
puts "creating user"
hello = User.create( email:"hello@hello.com", password: "jkjjkljl")
puts "creating venues"
a = Venue.new(title:"16-Century Castle" ,location: "Fife, Scotland", description:"Outstanding opportunity rent a 'B' listed Scottish castle hotel located within the popular town of Fife. A fantastic location for filming or grand weddings. The  Castle was built around 1500 as the home of the Bishops of Caithness. Bishop Robert Stewart gifted the castle to John Gordon, 11th Earl of Sutherland in 1557. In 1570 the castle was set alight in a feud between the McKays and Murrays. The rebuilding which followed included the addition of the upper part of the tower. The castle decayed during the 18th century but was restored in 1813–1814 to serve as a hunting lodge for visiting sportsmen. In 1947 it became a hotel.", rate:3500 ,square_meters:155521, user: hello, image_url: "https://images.unsplash.com/photo-1549224174-8c0e61705985?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2064&q=80")
# b = Venue.new(title:"Private Island" ,location: "Rangyai, Thailand", description:"Located just east of the island of Phuket, an island popular with tourists and estate owners, Rangyai is the largest island currently available for rent in the region. At 110 acres in size, the island boasts the perfect picturesque landscape for a lavish  wedding party or any high-class event. The island comes complete with fresh water, electric generator, and mobile signal. The island is located only 20 minutes form Phuket International Airport and just 10 minutes by boat from the nearest town.", rate:2500,square_meters:487,  user: hello, image_url: image_path("thai-island.jpg"))
# c = Venue.new(title:"French Chateau" ,location: "Bordeaux, France", description: "Very beautiful 18th century Chateau of around 950m2 on two levels with authentic patterned cement tiles and pretty parquet floors, plus the attic of around 90m2 to be completely converted. It offers an exceptional view on the Garonne, the Canal du Midi and on a wooded park of several hectares... The domain has, all around 11.5 hectares of meadows and woods and, on a very beautiful “terroir”, 7, 5 Ha of red and white vines (AOC Entre Deux Mers, Bordeaux Supérieur and Bordeaux), cultivated organically.", rate:5000 ,square_meters:950,  user: hello, image_url: image_path("french-chateau.jpg"))
# d = Venue.new(title:"Luxury Hotel" ,location: "London, United Kingdom", description: "Situated in the West End of London, just a few minutes walk to Covent Garden Piazza and Charing Cross station. The hotel is available for conferences, events, parties and weddings. The hotel features air-conditioned rooms with free WiFi. Popular points of interest nearby include Theatre Royal Drury Lane, Savoy Theatre and The National Gallery. Royal Opera House is 750 yards away.", rate:1800 ,square_meters:4800, user: hello, image_url:image_path("london-hotel.jpg"))
# e = Venue.new(title:"Island Beach" ,location: "Whitby, Turks and Caicos", description: "The Turks and Caicos Islands are one of the most sought after tourist destinations in the world with its warm tropical climate, calm azure waters, excellent fine dining, endless activities, the most luxurious villas and above all, the most incredible beaches, including the world's best beach, Grace Bay Beach. This beach is available for booking and very popular for weddings, movie shoots and lavish parties.", rate:1500 ,square_meters:4800,  user: hello, image_url:image_path("turks-and-caicos.jpg"))
# f = Venue.new(title:"Skyscraper" ,location:"New York, USA", description: "With floor to ceiling windows, high ceilings, Penthouse offers gorgeous 360-degree views of the New York skyline and the Hudson River. Features restored fireplace and HD multimedia amenities. Popular for corporate events and dinners", rate:988 ,square_meters:4501,  user: hello, image_url: image_path("park-avenue.jpeg"))
# g = Venue.new(title:"Desert Dunes" ,location:"Wadi-rum, Jordan", description: "Wadi Rum is everything you would expect of a quintessential desert: it is extreme in summer heat and winter cold; it is violent and moody as the sun slices through chiselled siqs (canyons) at dawn or melts the division between rock and sand at dusk. Wadi-rum offers mesmerising views and has been the location for popular movies such as: Dune (2021), The Martian (2015), Star Wars: The Rise Of Skywalker (2019) and Lawrence of Arabia (1962) .", rate: 2000,square_meters:1000,  user: hello, image_url: image_path("wadi-rum.jpg"))
a.save!

# venues = [a,b,c,d,e,f,g]
# venues.each do |venue|
#   venue.save!
# end
# puts 'Seed finished'
