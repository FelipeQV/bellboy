# HOTEL CONSTANTS
HOTEL_LIST = [ { name: "Room Mate Emma Hotel", address: "Carrer del Rosselló, 205, 08008 Barcelona", city: "Barcelona" },
 { name: "Room Mate Pau", address: "Carrer de Fontanella, 7, 08010 Barcelona", city: "Barcelona" },
 { name: "Room Mate Ederik", address: "Carrer de Mallorca, 288, 08037 Barcelona", city: "Barcelona" },
 { name: "Room Mate Anna Hotel", address: "Carrer d'Aragó, 271, 08007 Barcelona", city: "Barcelona" },
 { name: "Room Mate Carla Hotel", address: "Carrer d'Ausiàs Marc, 34, 08010 Barcelona", city: "Barcelona" } ]

# CREATE LOCATIONS
LOCATION_LIST = [ { name: "Sagrada Familia", address: "Carrer de la Marina, 253 08013 Barcelona", category: "Sights" },
 { name: "Park Güell", address: "Carrer d'Olot, 7 08024 Barcelona", category: "Sights" },
 { name: "La Rambla", address: "Rambla dels Caputxins, 1807 08002 Barcelona", category: "Sights" },
 { name: "Tickets", address: "Av. del Paraŀlel, 164, 08015 Barcelona", category: "Restaurants" },
 { name: "Tapas 24", address: "Carrer de la Diputació, 269, 08007 Barcelona", category: "Restaurants" },
 { name: "El atril", address: "Carrer dels Carders, 23, 08003 Barcelona", category: "Restaurants" },
 { name: "EuropeCar", address: "Gran Via de les Corts Catalanes, 680, 08010 Barcelona", category: "Rentals" },
 { name: "Hertz", address: "Avinguda Diagonal, 622, 08023 Barcelona", category: "Rentals" },
 { name: "Moto Rent", address: "Carrer de Roger de Llúria, 31, 08009 Barcelona", category: "Rentals" }
]

# CREATE SERVICES
SERVICE_LIST = [ { title: "Restaurant", description: "Welcome to BRAVO24 where Catalan chef Carles Abellán cooks up the true essence of each local ingredient in its freshest.", end_time: "23:00", start_time: "19:00" },
 { title: "Massage", description: "Boasts a brisk rub of freshly-grated ginger root and warm detoxifying essential oils, a cozy warming foil wrap, a 20-minute soak and a 100-minute body-melting massage.", end_time: "21:00", start_time: "10:00", price: 200 },
 { title: "Swimming Pool", description: "Take it outside to the terrace where perfect cocktails, light fare, small dishes, snacks, and tapas are inspired by Barcelona with a modern twist.", end_time: "23:00", start_time: "7:00" },
 { title: "Entertainment Room", description: "The best way to find game room ideas is to take a cue from your favorite activities and the things you do for fun.", end_time: "22:00", start_time: "18:00" },
 { title: "Transportation", description: "The journey time from the airport to the centre is between 20 to 30 minutes depending on the time of day.", end_time: "23:59", start_time: "00:00" }, { title: "Laundry", description: "Tell us when we should wash your dirty laundry", end_time: "23:59", start_time: "00:00" }
]

# MESSAGE LIST
MESSAGE_LIST =[ { welcome: { "text": "Welcome to the our hotel" } },
  { question: { "text": "what is the wifi password?" } , answer: { "text": "The wifi password is: RoomMate2017" } },
  { question: { "text": "when is the breakfast" } , answer: { "text": "Starts at 8:00 am and ends at 11:00 am" } },
  { question: { "text": "what services do you offer" } , answer: { "text": "Cleaning, massage, transportation"  } },
  { question: { "text": "what´s my room number" } , answer: { "text": "Your room number is 216" } },
  { question: { "text": "do you have a room for events" } , answer: { "text": "Yes we do" } },
  { question: { "text": "what time does the pool open" } , answer: { "text": "It opens at 1:00 pm and closes at 9:00 pm" } },
  { question: { "text": "are there any interesting places to visit nearby" } , answer: { "text": "La sagrada familia! and Park Guell" } }
]

# ROOM TYPES
ROOM_TYPE_LIST = ["Single", "Double", "Triple", "Suite", "Studio"]

SERVICES_URLS = ["http://res.cloudinary.com/montolio/image/upload/v1498636625/restaurant_k6uge4.png", "http://res.cloudinary.com/montolio/image/upload/v1498410082/Thai-Massage_cn2wjv.jpg", "http://res.cloudinary.com/montolio/image/upload/v1498636680/swimming_pool_naoxt1.jpg", "http://res.cloudinary.com/montolio/image/upload/v1498636719/entretainment_room_kxkr3w.jpg", "http://res.cloudinary.com/montolio/image/upload/v1498636768/cab_zcsxvu.jpg", "http://res.cloudinary.com/montolio/image/upload/v1498636810/laundry_cuzpna.png"]
LOCATIONS_URLS = ["http://res.cloudinary.com/montolio/image/upload/v1498483970/sagrada_familia_yc6s0o.jpg", "http://res.cloudinary.com/montolio/image/upload/v1498484022/park_guell_vl3bpi.jpg", "http://res.cloudinary.com/montolio/image/upload/v1498484064/la_rambla_smwgx0.jpg", "http://res.cloudinary.com/montolio/image/upload/v1498484124/ticket_restaurant_luybra.jpg", "http://res.cloudinary.com/montolio/image/upload/v1498484181/tapas_24_uscrme.jpg", "http://res.cloudinary.com/montolio/image/upload/v1498484221/el_atril_zqrotq.jpg", "http://res.cloudinary.com/montolio/image/upload/v1498484261/europcar_xf94lv.png", "http://res.cloudinary.com/montolio/image/upload/v1498484306/hertz_wzybeu.jpg", "http://res.cloudinary.com/montolio/image/upload/v1498484420/avis_lrscwa.jpg" ]
CALL_TO_ACTION = ["Book a table", "Book a massage", "Where is it?", "Where is it?", "Get a cab", "Book a pick up time"]


puts "Starting seeding process..."

# DESTROY ALL (OVERIDING THE PARANOIA GEM)
Service.all.with_deleted.each { |i| i.really_destroy! }
Location.all.with_deleted.each { |i| i.really_destroy! }
Room.all.with_deleted.each { |i| i.really_destroy! }
Message.all.with_deleted.each { |i| i.really_destroy! }
Stay.all.with_deleted.each { |i| i.really_destroy! }
User.all.with_deleted.each { |i| i.really_destroy! }
Hotel.all.with_deleted.each { |i| i.really_destroy! }

# SEEDING PROCESS

# CREATE AND SAVE HOTEL
hotel = Hotel.new(HOTEL_LIST[4])
hotel.save

i=0
# CREATE LOCATIONS AND SAVE
LOCATION_LIST.each do |attraction|
  location = Location.new(attraction)
  location.hotel = hotel
  location.photo_url = LOCATIONS_URLS[i]
  location.save
  i += 1
end

# CREATE SERVICE AND SAVE
i = 0
SERVICE_LIST.each do |type|
  service = Service.new(type)
  service.hotel = hotel
  service.photo_url = SERVICES_URLS[i]
  service.save
  i += 1
end

20.times do

  # CREATE USER
  user = User.new(email: Faker::Internet.free_email, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, passport: Faker::Number.number(8), password: "1234567890")
  user.save

  # ASIGN STAY TO USER
  1.times do

    # STAY FIELDS (INCLUIDING STAYS ALREADY FINISHED AND OPEN ONES)
    start_booking_date = Date.today + (rand(1..9) < 5 ? +1 : -1) * rand(2..30)
    end_booking_date = start_booking_date + rand(1..15)
    checked_in = start_booking_date <= Date.today ? (start_booking_date - rand(0..3)) : nil
    checked_out = end_booking_date if end_booking_date < Date.today

    # CREATE STAY INSTANCE
    stay = Stay.new(start_booking_date: start_booking_date, end_booking_date: end_booking_date, checked_in: checked_in, checked_out: checked_out)
    # ASIGN STAY INSTANCE TO USER
    stay.user = user

    # ASIGN STAY INSTANCE TO HOTEL
    stay.hotel = hotel

    # CREATE AND ASIGN ROOM
    room = Room.new(number: rand(100..500), room_type: ROOM_TYPE_LIST.sample)
    room.hotel = hotel
    room.save

    # ASIGN ROOM TO STAY
    stay.room = room

    # SAVE STAY
    stay.save

    # CREATE MESSAGES IF THE DATE OF BOOKING IS PASSED
    # unless checked_in.blank?

    #   # WELCOME MESSAGE
    #   msg = Message.new(from: "bot", content: MESSAGE_LIST[0][:welcome])
    #   msg.stay = stay
    #   msg.save

    #   # RANDOM MESSAGES
    #   rand(1..10).times do
    #     random = rand(1..7)
    #     msg_user = Message.new(from: "user", content: MESSAGE_LIST[random][:question])
    #     msg_user.stay = stay
    #     msg_user.save
    #     msg_bot = Message.new(from: "bot", content: MESSAGE_LIST[random][:answer])
    #     msg_bot.stay = stay
    #     msg_bot.save
    #   end
    # end
  end

end


# ###########################################################  BOOKING SEEDS

users = User.all

services = Service.all

bookable_services = []

services.each_with_index do |service, index|
  if index == 0 or index == 1 or index == 4 or index == 5
    bookable_services << service
  end
end

# RESTAURANTS start
start_booking_strings = [
  "07/9/2017 9:00 PM",
  "07/8/2017 7:00 PM",
  "07/8/2017 6:00 PM",
  "07/7/2017 6:00 PM",
  "07/6/2017 8:00 PM",
  "07/6/2017 7:00 PM",
  "07/5/2017 6:00 PM",
  "07/4/2017 8:00 PM",
  "07/3/2017 9:00 PM",
  "07/2/2017 7:00 PM",
  "07/1/2017 6:00 PM",
  "06/30/2017 6:00 PM",
  "06/30/2017 8:00 PM",
  "06/29/2017 7:00 PM",
  "06/28/2017 6:00 PM",
  "06/28/2017 8:00 PM",
  "06/27/2017 7:00 PM",
  "06/26/2017 7:00 PM",
  "06/25/2017 7:00 PM",
  "06/24/2017 5:00 PM",
  "06/24/2017 7:00 PM",
  "06/23/2017 7:00 PM",
  "06/22/2017 6:00 PM",
  "06/22/2017 8:00 PM",
  "06/21/2017 7:00 PM",
  "06/20/2017 6:00 PM",
  "06/19/2017 8:00 PM",
  "06/19/2017 7:00 PM",
  "06/18/2017 7:00 PM",
  "06/17/2017 7:00 PM",
  "06/16/2017 5:00 PM",
  "06/16/2017 7:00 PM",
  "06/15/2017 7:00 PM",
  "06/14/2017 7:00 PM",
  "06/13/2017 6:00 PM",
  "06/12/2017 8:00 PM",
  "06/11/2017 7:00 PM",
  "06/11/2017 6:00 PM",
  "06/10/2017 6:00 PM",
  "06/9/2017 8:00 PM",
  "06/8/2017 7:00 PM",
  "06/7/2017 7:00 PM",
  "06/6/2017 7:00 PM",
  "06/6/2017 8:00 PM",
  "06/5/2017 5:00 PM",
  "06/4/2017 7:00 PM",
  "06/4/2017 9:00 PM",
  "06/3/2017 7:00 PM",
  "06/2/2017 7:00 PM",
  "06/1/2017 5:00 PM",
  "05/22/2017 7:00 PM",
  "05/22/2017 8:00 PM",
  "05/21/2017 7:00 PM",
  "05/21/2017 9:00 PM",
  "05/20/2017 7:00 PM",
  "05/2/2017 8:00 PM",
  "04/20/2017 5:00 PM",
  "04/19/2017 6:00 PM",
  "04/19/2017 8:00 PM",
  "03/26/2017 4:00 PM",
  "03/26/2017 7:00 PM",
  "02/26/2017 6:00 PM",
  "02/26/2017 8:00 PM",
  "02/26/2017 9:00 PM",
  "01/10/2017 4:00 PM",
  "01/11/2017 8:00 PM",
  "01/12/2017 9:00 PM",
  "01/14/2017 7:00 PM"
]

# RESTAURANTS end
end_booking_strings = [
  "07/9/2017 9:00 PM",
  "07/8/2017 7:00 PM",
  "07/8/2017 6:00 PM",
  "07/7/2017 6:00 PM",
  "07/6/2017 8:00 PM",
  "07/6/2017 7:00 PM",
  "07/5/2017 6:00 PM",
  "07/4/2017 8:00 PM",
  "07/3/2017 9:00 PM",
  "07/2/2017 7:00 PM",
  "07/1/2017 6:00 PM",
  "06/30/2017 6:00 PM",
  "06/30/2017 8:00 PM",
  "06/29/2017 7:00 PM",
  "06/28/2017 6:00 PM",
  "06/28/2017 8:00 PM",
  "06/27/2017 7:00 PM",
  "06/26/2017 7:00 PM",
  "06/25/2017 7:00 PM",
  "06/24/2017 5:00 PM",
  "06/24/2017 7:00 PM",
  "06/23/2017 7:00 PM",
  "06/22/2017 6:00 PM",
  "06/22/2017 8:00 PM",
  "06/21/2017 7:00 PM",
  "06/20/2017 6:00 PM",
  "06/19/2017 8:00 PM",
  "06/19/2017 7:00 PM",
  "06/18/2017 7:00 PM",
  "06/17/2017 7:00 PM",
  "06/16/2017 5:00 PM",
  "06/16/2017 7:00 PM",
  "06/15/2017 7:00 PM",
  "06/14/2017 7:00 PM",
  "06/13/2017 6:00 PM",
  "06/12/2017 8:00 PM",
  "06/11/2017 7:00 PM",
  "06/11/2017 6:00 PM",
  "06/10/2017 6:00 PM",
  "06/9/2017 8:00 PM",
  "06/8/2017 7:00 PM",
  "06/7/2017 7:00 PM",
  "06/6/2017 7:00 PM",
  "06/6/2017 8:00 PM",
  "06/5/2017 5:00 PM",
  "06/4/2017 7:00 PM",
  "06/4/2017 9:00 PM",
  "06/3/2017 7:00 PM",
  "06/2/2017 7:00 PM",
  "06/1/2017 5:00 PM",
  "05/22/2017 7:00 PM",
  "05/22/2017 8:00 PM",
  "05/21/2017 7:00 PM",
  "05/21/2017 9:00 PM",
  "05/20/2017 7:00 PM",
  "05/2/2017 8:00 PM",
  "04/20/2017 5:00 PM",
  "04/19/2017 6:00 PM",
  "04/19/2017 8:00 PM",
  "03/26/2017 4:00 PM",
  "03/26/2017 7:00 PM",
  "02/26/2017 6:00 PM",
  "02/26/2017 8:00 PM",
  "02/26/2017 9:00 PM",
  "01/10/2017 4:00 PM",
  "01/11/2017 8:00 PM",
  "01/12/2017 9:00 PM",
  "01/14/2017 7:00 PM"
]

start_datetimes_tobook = []
start_booking_strings.each do |start_booking_string|
  start_datetimes_tobook << DateTime.strptime(start_booking_string, "%m/%d/%Y %H:%M %P")
end

end_datetimes_tobook = []
end_booking_strings.each do |end_booking_string|
  end_datetimes_tobook << DateTime.strptime(end_booking_string, "%m/%d/%Y %H:%M %P")
end

i = 0
start_datetimes_tobook.size.times do
  booking = Booking.new(start_datetime: start_datetimes_tobook[i], end_datetime: end_datetimes_tobook[i])
  booking.user = users.sample
  booking.service = bookable_services[0]
  booking.save
  i += 1
end

# MASSAGES ---------------------------------------------------------------------------------
start_booking_strings = [
  "07/5/2017 9:00 PM",
  "07/4/2017 5:00 PM",
  "07/3/2017 4:00 PM",
  "07/2/2017 9:00 PM",
  "07/1/2017 7:00 PM",
  "06/30/2017 8:00 PM",
  "06/29/2017 6:00 PM",
  "06/28/2017 7:00 PM",
  "06/27/2017 8:00 PM",
  "06/26/2017 9:00 PM",
  "06/26/2017 7:00 PM",
  "06/25/2017 6:00 PM",
  "06/25/2017 7:00 PM",
  "06/25/2017 8:00 PM",
  "06/24/2017 5:00 PM",
  "06/24/2017 7:00 PM",
  "06/24/2017 8:00 PM",
  "06/23/2017 7:00 PM",
  "05/22/2017 7:00 PM",
  "05/22/2017 8:00 PM",
  "05/21/2017 7:00 PM",
  "05/21/2017 9:00 PM",
  "05/20/2017 7:00 PM",
  "05/2/2017 8:00 PM",
  "05/2/2017 9:00 PM",
  "04/20/2017 5:00 PM",
  "04/20/2017 5:00 PM",
  "04/19/2017 6:00 PM",
  "04/19/2017 8:00 PM",
  "03/26/2017 4:00 PM",
  "03/26/2017 7:00 PM",
  "02/26/2017 6:00 PM",
  "02/26/2017 8:00 PM",
  "02/26/2017 9:00 PM",
  "01/10/2017 4:00 PM",
  "01/11/2017 8:00 PM",
  "01/12/2017 9:00 PM",
  "01/14/2017 7:00 PM"]

end_booking_strings = [
  "07/5/2017 9:59 PM",
  "07/4/2017 5:59 PM",
  "07/3/2017 4:59 PM",
  "07/2/2017 9:59 PM",
  "07/1/2017 7:59 PM",
  "06/30/2017 8:59 PM",
  "06/29/2017 6:59 PM",
  "06/28/2017 7:59 PM",
  "06/27/2017 8:59 PM",
  "06/26/2017 9:59 PM",
  "06/26/2017 7:59 PM",
  "06/25/2017 6:59 PM",
  "06/25/2017 7:59 PM",
  "06/25/2017 8:59 PM",
  "06/24/2017 5:59 PM",
  "06/24/2017 7:59 PM",
  "06/24/2017 8:59 PM",
  "06/23/2017 7:59 PM",
  "05/22/2017 7:59 PM",
  "05/22/2017 8:59 PM",
  "05/21/2017 7:59 PM",
  "05/21/2017 9:59 PM",
  "05/20/2017 7:59 PM",
  "05/2/2017 8:59 PM",
  "05/2/2017 9:59 PM",
  "04/20/2017 5:59 PM",
  "04/20/2017 5:59 PM",
  "04/19/2017 6:59 PM",
  "04/19/2017 8:59 PM",
  "03/26/2017 4:59 PM",
  "03/26/2017 7:59 PM",
  "02/26/2017 6:59 PM",
  "02/26/2017 8:59 PM",
  "02/26/2017 9:59 PM",
  "01/10/2017 4:59 PM",
  "01/11/2017 8:59 PM",
  "01/12/2017 9:59 PM",
  "01/14/2017 7:59 PM"]

start_datetimes_tobook = []
start_booking_strings.each do |start_booking_string|
  start_datetimes_tobook << DateTime.strptime(start_booking_string, "%m/%d/%Y %H:%M %P")
end

end_datetimes_tobook = []
end_booking_strings.each do |end_booking_string|
  end_datetimes_tobook << DateTime.strptime(end_booking_string, "%m/%d/%Y %H:%M %P")
end

i = 0
start_datetimes_tobook.size.times do
  booking = Booking.new(start_datetime: start_datetimes_tobook[i], end_datetime: end_datetimes_tobook[i])
  booking.user = users.sample
  booking.service = bookable_services[1]
  booking.save
  i += 1
end

# USER BOT BACKEND

  # User Admin
  user = User.new(email: "ederik@bellboy.com", first_name: "Ederik", last_name: "Van Koldenhoven", passport: Faker::Number.number(8), password: "bellboy", uid: "987221848047540")
  user.save

  # Asign Hotel
  hotel.user = user
  hotel.save

# HOTEL BACKEND

  # User Admin
  user = User.new(email: "ruben@bellboy.com", first_name: "Ruben", last_name: "Suet", passport: Faker::Number.number(8), password: "bellboy")
  user.save

  # Asign Hotel
  hotel.user = user
  hotel.save

puts "Finished seeding process!"
