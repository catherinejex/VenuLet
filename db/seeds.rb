require 'open-uri'

puts "deleting users"
User.delete_all

puts "creating user"
user1 = User.create( email:"hello@hello.com", password: "123456")
user2 = User.create( email:"bob@hello.com", password: "123456")

puts "creating venues"

file = URI.open("https://image.jimcdn.com/app/cms/image/transf/none/path/sa6549607c78f5c11/image/icf3d9bcaa80b18bc/version/1587472380/best-castles-in-scotland.jpg")
venue = Venue.new(title: "16-Century Castle", location: "Fife, Scotland", description: "Outstanding opportunity rent a 'B' listed Scottish castle hotel located within the popular town of Fife. A fantastic location for filming or grand weddings. The  Castle was built around 1500 as the home of the Bishops of Caithness. Bishop Robert Stewart gifted the castle to John Gordon, 11th Earl of Sutherland in 1557. In 1570 the castle was set alight in a feud between the McKays and Murrays. The rebuilding which followed included the addition of the upper part of the tower. The castle decayed during the 18th century but was restored in 1813–1814 to serve as a hunting lodge for visiting sportsmen. In 1947 it became a hotel.", rate:3500 ,square_meters:155521, user: user1)
venue.photo.attach(io: file, filename:'nes.jpg', content_type: 'image/jpg')
venue.save!

file = URI.open('https://www.theworldbucketlist.com/wp-content/uploads/2016/03/koh-phangan-thailand.jpg')
venue = Venue.new(title: "Private Island", location: "Rangyai, Thailand", description:"Located just east of the island of Phuket, an island popular with tourists and estate owners, Rangyai is the largest island currently available for rent in the region. At 110 acres in size, the island boasts the perfect picturesque landscape for a lavish  wedding party or any high-class event. The island comes complete with fresh water, electric generator, and mobile signal. The island is located only 20 minutes form Phuket International Airport and just 10 minutes by boat from the nearest town.", rate:2500,square_meters:487,  user: user2)
venue.photo.attach(io: file, filename:'nes.jpg', content_type: 'image/jpg')
venue.save!

file = URI.open('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/french-chateau-1525445279.jpg')
venue = Venue.new(title: "French Chateau", location: "Bordeaux, France", description: "Very beautiful 18th century Chateau of around 950m2 on two levels with authentic patterned cement tiles and pretty parquet floors, plus the attic of around 90m2 to be completely converted. It offers an exceptional view on the Garonne, the Canal du Midi and on a wooded park of several hectares... The domain has, all around 11.5 hectares of meadows and woods and, on a very beautiful “terroir”, 7, 5 Ha of red and white vines (AOC Entre Deux Mers, Bordeaux Supérieur and Bordeaux), cultivated organically.", rate:5000 ,square_meters:950,  user: user1 )
venue.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue.save!

file = URI.open('https://www.travelanddestinations.com/wp-content/uploads/2018/01/Stunning-luxury-hotels-in-London.jpg')
venue = Venue.new(title: "Luxury Hotel", location: "London, United Kingdom", description: "Situated in the West End of London, just a few minutes walk to Covent Garden Piazza and Charing Cross station. The hotel is available for conferences, events, parties and weddings. The hotel features air-conditioned rooms with free WiFi. Popular points of interest nearby include Theatre Royal Drury Lane, Savoy Theatre and The National Gallery. Royal Opera House is 750 yards away.", rate:1800 ,square_meters:4800, user: user2)
venue.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue.save!

file = URI.open('https://www.abercrombiekent.co.uk/-/media/abercrombieandkent/images/page-header-images/holiday-types/beach-holidays.jpg?w=1920&h=940')
venue = Venue.new(title: "Island Beach", location: "Whitby, Turks and Caicos", description: "The Turks and Caicos Islands are one of the most sought after tourist destinations in the world with its warm tropical climate, calm azure waters, excellent fine dining, endless activities, the most luxurious villas and above all, the most incredible beaches, including the world's best beach, Grace Bay Beach. This beach is available for booking and very popular for weddings, movie shoots and lavish parties.", rate:1500 ,square_meters:4800,  user: user1)
venue.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue.save!

file = URI.open('https://robbreport.com/wp-content/uploads/2020/08/432-park-ave-18.jpg?w=1000')
venue = Venue.new(title: "Skyscraper", location:"New York, USA", description: "With floor to ceiling windows, high ceilings, Penthouse offers gorgeous 360-degree views of the New York skyline and the Hudson River. Features restored fireplace and HD multimedia amenities. Popular for corporate events and dinners", rate:988 ,square_meters:4501,  user: user2)
venue.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
venue.save!

file = URI.open('https://media.istockphoto.com/photos/red-mars-like-landscape-in-wadi-rum-desert-jordan-this-location-was-picture-id1281287664?b=1&k=20&m=1281287664&s=170667a&w=0&h=JxOR3BtsiDiFwg96l1bVhhtFiMTIbiZ2fBOJut8PI-w=')
venue = Venue.new(title:"Desert Dunes" ,location:"Wadi-rum, Jordan", description: "Wadi Rum is everything you would expect of a quintessential desert: it is extreme in summer heat and winter cold. It is violent and moody as the sun slices through chiselled siqs (canyons) at dawn or melts the division between rock and sand at dusk. Wadi-rum offers mesmerising views and has been the location for popular movies such as: Dune (2021), The Martian (2015), Star Wars: The Rise Of Skywalker (2019) and Lawrence of Arabia (1962) .", rate: 2000,square_meters:1000,  user: user2)
venue.photo.attach(io: file, filename:'nes.jpg', content_type: 'image/jpg')
venue.save!

puts 'Seed finished'
