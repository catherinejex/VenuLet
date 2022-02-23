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
  a= Venue.new(title:"16-Century Castle" ,location: "Fife, Scotland", description:"blah blah blah", rate:3500 ,square_meters:155521, user: hello, image_url: "/assets/castle")
  b= Venue.new(title:"Private Island" ,location: "Rangyai, Thailand", description:"blah blah blah", rate:2500,square_meters:487,  user: hello, image_url: "/assets/thai-island")
  c = Venue.new(title:"French Chataeu" ,location: "Bordeaux, France", description: "blah blah blah", rate:5000 ,square_meters:158,  user: hello, image_url: "/assets/french-chateau" )
  d= Venue.new(title:"Luxury Hotel" ,location: "London, United Kingdom", description: "blah blah blah", rate:1800 ,square_meters:4800, user: hello, image_url:"/assets/london-hotel")
  e= Venue.new(title:"Island Beach" ,location: "Whitby, Turks and Caicos", description: "blah blah blah", rate:1500 ,square_meters:4800,  user: hello, image_url:"/assets/turks-and-caicos")
  f= Venue.new(title:"Skyscraper" ,location:"New York, USA", description: "blah blah blah", rate:988 ,square_meters:4501,  user: hello, image_url: "/assets/park-avenue")
  g = Venue.new(title:"Desert Dunes" ,location:"Wadi-rum, Jordan", description: "blah blah blah", rate: 2000,square_meters:1000,  user: hello, image_url: "/assets/wady-rum")
  venues = [a,b,c,d,e,f,g]
  venues.each do |venue|
    venue.save!
  end



puts 'Seed finished'
