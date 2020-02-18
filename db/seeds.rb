require "open-uri"

puts "Cleaning database..."
Terrace.destroy_all

puts "Creating terraces..."
file = URI.open('https://images.unsplash.com/photo-1414497370617-1d23dd92ab2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80')
terrace = Terrace.new(name: "Wood", description: "Beautiful wood balcony with a spectacular view of the forest", address: "20 Rue Saint-Vincent-de-Paul, 33800 Bordeaux", status: true, user_id: 1)
terrace.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
terrace.save!

file = URI.open('https://images.unsplash.com/photo-1560448204-444f743ef6e7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
terrace = Terrace.new(name: "Building", description: "A rooftop with view of all the buildings and a BBQ", address: "82 Cours du Raccordement, 33000 Bordeaux", status: true, user_id: 1)
terrace.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
terrace.save!

file = URI.open('https://images.unsplash.com/photo-1543443420-0ba89573e15a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80')
terrace = Terrace.new(name: "La Vie en Rose", description: "A lovely outdoor terrace, where you can enjoy beautiful sunsets with a glass of wine.", address: "ZA Quai des Queyries, Port Bastide, 33100 Bordeaux", status: true, user_id: 1)
terrace.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
terrace.save!

file = URI.open('https://images.unsplash.com/photo-1531065208531-4036c0dba3ca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
terrace = Terrace.new(name: "Machu Picchu", description: "I get a bit lonely in these mountains, so feel free to come and share the view with me. If you're lucky, you'll even see my llama!", address: "Place Pey Berland, 33000 Bordeaux", status: true, user_id: 1)
terrace.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
terrace.save!

file = URI.open('https://images.unsplash.com/photo-1566220562628-f3e76d0c0c22?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=716&q=80')
terrace = Terrace.new(name: "Bondi", description: "I have this huuuge pool by myself, all the time, lucky me. Don't hesitate to rent it for you and your family, plenty of space, beautiful sunset, heaps of fun in this tidal pool.", address: "164 Rue Judaïque, 33000 Bordeaux", status: true, user_id: 1)
terrace.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
terrace.save!

file = URI.open('https://images.unsplash.com/photo-1518973318836-3ba856327fbc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
terrace = Terrace.new(name: "Coco Cabana", description: "Yes! That's right! My own private beach for rent! Come enjoy this little piece of paradise. The sand is white, the water, turquoise, la vita e bella!", address: "Place de la Bourse, 33000 Bordeaux", status: true, user_id: 1)
terrace.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
terrace.save!

file = URI.open('https://images.unsplash.com/photo-1535205148555-bcbbc2a78913?ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80')
terrace = Terrace.new(name: "No Bad Days", description: "Don't worry about a thing. Every little thing, is gonna be alright!", address: "19 Rue Poquelin Molière, 33000 Bordeaux", status: true, user_id: 1)
terrace.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
terrace.save!

file = URI.open('https://images.unsplash.com/photo-1563567795533-75e32e10f361?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80(191 kB)')
terrace = Terrace.new(name: "Calm and peaceful place", description: "A little paradis in the centre of the city, where you will enjoy the silent, and may be take a break and medidate, please don't hesitate. We are also vegan, vege, and animals friendly, so there are welcome in our sweet home", address: "5 Place Longchamps, 33000 Bordeaux", status: true, user_id: 1)
terrace.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
terrace.save!

file = URI.open('https://images.unsplash.com/photo-1463149364514-6c3e89b00382?ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80')
terrace = Terrace.new(name: "Chillax", description: "A little paradise sheltered from prying eyes", address: "Place de la Comédie, 33000 Bordeaux", status: true, user_id: 1)
terrace.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
terrace.save!

puts "50% done"

file = URI.open('https://images.unsplash.com/photo-1564204957512-5b03761f0f92?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80')
terrace = Terrace.new(name: "Chillax", description: "If you want to dip your feet in water and enjoy the sun", address: "18 Quai des Queyries, 33100 Bordeaux", status: true, user_id: 1)
terrace.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
terrace.save!

file = URI.open('https://images.unsplash.com/photo-1564204957512-5b03761f0f92?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80')
terrace = Terrace.new(name: "Big Pool", description: "A pool as deep as your eyes !", address: "7 Quai des Queyries, 33100 Bordeaux", status: true, user_id: 1)
terrace.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
terrace.save!

file = URI.open('https://images.pexels.com/photos/3608220/pexels-photo-3608220.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260')
terrace = Terrace.new(name: "best view in the world", description: "Impress your date", address: "38-28 Rue Vantrasson, 33000 Bordeaux", status: true, user_id: 1)
terrace.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
terrace.save!

file = URI.open('https://images.unsplash.com/photo-1482068417235-8f51fac7fc30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1060&q=80')
terrace = Terrace.new(name: "Sweet place in Bordeaux", description: "From this spot you can enjoy the best view of your life, and if you take time you could observe St-Emilion", address: "115 Quai des Chartrons, 33000 Bordeaux", status: true, user_id: 1)
terrace.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
terrace.save!

file = URI.open('https://images.pexels.com/photos/1106480/pexels-photo-1106480.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
terrace = Terrace.new(name: "Sun is out, so should you", description: "Enjoy the sun in Bordeaux while there's still some.", address: "45 Rue François de Sourdis, 33000 Bordeaux", status: true, user_id: 1)
terrace.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
terrace.save!

file = URI.open('https://images.unsplash.com/photo-1580469322701-45b34d5e6e9b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
terrace = Terrace.new(name: "Modern terrace in Chartrons", description: "Enjoy the large terrace with a table for 8 persons maximum, it's perfect for little party in Bordeaux. 5min walking distance from the first tram station", address: "107 Cours Balguerie Stuttenberg, 33300 Bordeaux", status: true, user_id: 1)
terrace.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
terrace.save!

file = URI.open('https://images.pexels.com/photos/271815/pexels-photo-271815.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
terrace = Terrace.new(name: "Best view in the neibourhood", description: "Come and enjoy a drink over here", address: "161bis Rue Emile Combes, 33270 Floirac", status: true, user_id: 1)
terrace.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
terrace.save!

file = URI.open('https://images.unsplash.com/photo-1554780330-95c7fd3e7b44?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
terrace = Terrace.new(name: "Best view of Bordeaux", description: "two white wicker chairs in front of blue river, You are in the hyper-center of the city, closed to every shop", address: "6 Rue Porte de la Monnaie, 33800 Bordeaux", status: true, user_id: 1)
terrace.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
terrace.save!

file = URI.open('https://images.unsplash.com/photo-1549619493-576366b4ed0f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1026&q=80')
terrace = Terrace.new(name: "View on the Garonne River", description: "Nice balcony with kumquat plant on white wooden pot near body of water", address: "7 Rue Ferrere, 33000 Bordeaux", status: true, user_id: 1)
terrace.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
terrace.save!

puts "Finish !"
