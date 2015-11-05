# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

new_york = City.create(name: 'New York')
san_francisco = City.create(name: 'San Francisco')

entire_home = Kind.create(name: 'Entire home/apt')
private_room = Kind.create(name: 'Private Room')

[
  {
    name: 'Harlem Alive!',
    city: new_york,
    kind: entire_home,
    score: 5,
    nb_guests: 2,
    price: 105,
    instant_book: true,
    user: { first_name: 'Rogelio', pic: '/images/appart1/profile.jpg' },
    pictures: [ '/images/appart1/1.jpg', '/images/appart1/2.jpg', '/images/appart1/3.jpg', '/images/appart1/4.jpg',
                '/images/appart1/5.jpg', '/images/appart1/6.jpg', '/images/appart1/7.jpg', '/images/appart1/8.jpg' ],
    availabilities: [ 10.days.from_now, 11.days.from_now, 12.days.from_now ],
    reviews: [
      {
        user: { first_name: 'Mara', pic: '/images/appart1/9.jpg' },
        content: "Nuestra estadía en el dpto fue excelente. El mismo muy limpio e impecable. Nos sorprendió que todos los electrodomésticos eran nuevos y en perfecto estado. Por ser un monoambiente era grande, luminoso y cómodo. Y todo lo que prometió lo cumplió. Para recomendar sin dudas!."
      },
      {
        user: { first_name: 'Samantha', pic: '/images/appart1/10.jpg' },
        content: "Rogelio was an excellent host. All of the pictures are exactly like the apartment. It's a very cozy place only a few blocks from the subway with a grocery store around the corner. Rogelio was extremely helpful when our flight got cancelled and we had to fly into Long Island, 60 miles away. He provided me with instructions on how to make it to his location and instructions on where to find the key. It's a very clean place and it's perfect for any couples adventure to New York. This was my first time to use air bnb and I have recommended it to so many people. Rogelio also responded within minutes of sending him messages. I would definitely stay here again."
      },
      {
        user: { first_name: 'Briana', pic: '/images/appart1/11.jpg' },
        content: "Fabulous. The family is the sweetest. The location is quiet and accessible to great food and bars. The apt is clean, bright and modern. It's a great, safe, and convenient stay."
      },
      {
        user: { first_name: 'Rae', pic: '/images/appart1/12.jpg' },
        content: "Rogelio and his wife were wonderful hosts and always available when we needed to ask a question. Their apartment was extremely clean and very lovely. They put a lot of attention into the details, including the soft, clean linen sheets! This studio apartment was the perfect place for my mother to stay while visiting me in nyc and was very convenient to the best parts of Harlem. We will absolutely stay here again!"
      }
    ]
  },
  {
    name: 'Modern Studio Apartment',
    city: new_york,
    kind: entire_home,
    score: 4.5,
    nb_guests: 2,
    price: 179,
    instant_book: false,
    user: { first_name: 'Rafael & Rosita', pic: '/images/appart2/profile.jpg' },
    pictures: [ '/images/appart2/1.jpg', '/images/appart2/2.jpg', '/images/appart2/3.jpg', '/images/appart2/4.jpg',
                '/images/appart2/5.jpg' ],
    availabilities: [ 12.days.from_now, 13.days.from_now, 20.days.from_now ],
    reviews: [
      {
        user: { first_name: 'Melanie', pic: '/images/appart2/6.jpg' },
        content: "L'appartement est idéalement situé - dans un quartier animé et à deux pas de union square avec de nombreux métros à proximité. Nos hôtes ont été très arrangeants et disponibles pour répondre à nos questions. Nous le recommandons pour un jeune couple qui souhaite découvrir New York."
      },
      {
        user: { first_name: 'Rajeev', pic: '/images/appart2/7.jpg' },
        content: "Cute little apartment in the East Village. Was perfect location for us. Close to tons of fantastic restaurants and bars. Communications with the owners was easy and responsive. Would totally use again."
      }
    ]
  },
  {
    name: 'Charming Large Studio',
    city: new_york,
    kind: entire_home,
    score: 4.5,
    nb_guests: 2,
    price: 99,
    instant_book: true,
    user: { first_name: 'Yana', pic: '/images/appart3/profile.jpg' },
    pictures: [ '/images/appart3/1.jpg', '/images/appart3/3.jpg', '/images/appart3/4.jpg',
                '/images/appart3/5.jpg', '/images/appart3/6.jpg' ],
    availabilities: [ 10.days.from_now, 11.days.from_now, 20.days.from_now, 21.days.from_now ],
    reviews: [
      {
        user: { first_name: 'Renuka', pic: '/images/appart3/7.jpg' },
        content: "Had a great time. Yana's place is perfect if you want to spend time in Central Park. It was clean and cute. Nice brunch place around the corner and a safe neighbourhood."
      },
      {
        user: { first_name: 'Beppe', pic: '/images/appart3/8.jpg' },
        content: "The apartment might have been ok - although the 'next-to' subway station was 500m away by G-maps, and the 'beautiful courtyard' was overgrown with weeds and bordering a construction site. But what we found really unacceptable was that the place was not clean at all, particularly the bathroom and inside the fridge. Also, \"essentials\" were a single towel per person (for a 6-day stay), some soap scraps and half a roll of toilet paper. Both rickety chairs broke down under our very normal weight, and were not replaced. Nothing fundamental, but clearly no effort had been made towards paying guests with even minimal expectations."
      },
      {
        user: { first_name: 'Rachel', pic: '/images/appart3/9.jpg' },
        content: "Yana's apartment is cute and cozy. She left me towels and extra blankets if needed. It was a great place to stay for my extra night in the city. There was construction going on next door but it didn't bother me because I was out most of the time they were working. Obviously there isn't anything Yana could do about the construction and I booked the apartment far enough in advance I don't think the construction was going on then. There are some great eateries in the neighborhood. There is an amazing French bakery just one block away. I would recommend Yana's place for anyone wanting to stay in the city."
      },
      {
        user: { first_name: 'Ahmed', pic: '/images/appart3/10.jpg' },
        content: "The apt was in a good location on the upper west side about a 5-7 minute walk to subway and bus. Apt was as advertised and in a nice and quiet building. The air conditioner was very helpful as it was very hot in NYC, the few days that we stayed. Picking up the keys and getting to the apt was easy as it is right on the first floor in a small corner building. We did not meet Yana in person, but she was very quick to respond to our texts and provided a laundry card so we could use the washer in the building. The apt is a very basic studio in manhattan, small and compact, with a kitchenette and bath, although we did not cook anything -but fridge and stove are provided -the location and amenities, including wifi were excellent. Towels and linens were provided. A few extra pillows would have been better as we only had 1 each. The queen size bed, while big and comfortable was a bit noisy as it was a metal frame, but otherwise we had a good stay. recommended."
      },
      {
        user: { first_name: 'Jessie', pic: '/images/appart3/11.jpg' },
        content: "Yana was a great host! The studio was clean and charming and in a great location. She was very easy to communicate with and answered any questions I had quickly. I would definitely recommend staying here!"
      },
      {
        user: { first_name: 'Mark', pic: '/images/appart3/12.jpg' },
        content: "Almost everything was just as stated. Quick replies from Yana were were always appreciated except when I expressed one complaint. The complaint was about my dissatisfaction of thick black spider webs surrounding ALL ceiling corners of the sleeping area. And one of the corner still had the host spider lurking down. It made me wonder how long it had been since the last cleaning. I received a reply the following day without any apologies or embarrassment. She totally disregarded the fact that, the webs had made me feel uneasy. She said that the room was cleaned before my check-in and that she verified the cleanliness personally and basically told me to just deal with it by saying \"unless you have a fear of spiders, spider web in a corner should not cause inconvenience\" A good host wpuld not have replied like that. These webs covered over 50% of thes ceiling area - of course I have photos. One can only miss them if the lights are off and never look up. Just a simple \"oh my, I'm sorry to have missed it\" would have been enough."
      }
    ]
  },
  {
    name: 'Most Cheerful in Cole Valley',
    city: san_francisco,
    kind: private_room,
    score: nil,
    nb_guests: 5,
    price: 185,
    instant_book: true,
    user: { first_name: 'Kay', pic: '/images/appart4/profile.jpg' },
    pictures: [ '/images/appart4/1.jpg', '/images/appart4/2.jpg', '/images/appart4/3.jpg', '/images/appart4/4.jpg',
                '/images/appart4/5.jpg', '/images/appart4/6.jpg', '/images/appart4/7.jpg', '/images/appart4/8.jpg' ],
    availabilities: [ 9.days.from_now, 10.days.from_now, 11.days.from_now, 21.days.from_now ],
    reviews: []
  },
  {
    name: 'Best location,cozy, super fast wifi',
    city: san_francisco,
    kind: entire_home,
    score: 3.5,
    nb_guests: 3,
    price: 119,
    instant_book: true,
    user: { first_name: 'Dario', pic: '/images/appart5/profile.jpg' },
    pictures: [ '/images/appart5/1.jpg', '/images/appart5/2.jpg', '/images/appart5/3.jpg', '/images/appart5/4.jpg',
                '/images/appart5/5.jpg', '/images/appart5/6.jpg' ],
    availabilities: [ 11.days.from_now, 20.days.from_now, 21.days.from_now ],
    reviews: [
      {
        user: { first_name: 'James', pic: '/images/appart5/7.jpg' },
        content: "A wonderful studio in a wonderful location! This studio was immaculate from the sheets to the little details like chocolates on the towels. The hosts were kind and responsive. I highly recommend this spot!"
      },
      {
        user: { first_name: 'Philip', pic: '/images/appart5/8.jpg' },
        content: "The room was exactly as advertised on the website. It is small and cozy, but definitely enough space for the two of us. Amenities were great and even had some nice touches like water and coffee. Place was very clean. Area was great in the castro area right next to a park and with great restaurants and bars nearby. It was also very close to lots of different public transportation which is easy to use to get to all different parts of the city. Dario was extremely organized, easy to contact, and very descriptive. This was my first time using airbnb and has set a very high standard. I would highly recommend."
      }
    ]
  }
].each do |data|

  user_data = data.delete(:user)
  user = User.find_or_initialize_by(first_name: user_data[:first_name], last_name: user_data[:last_name])
  p filename = File.dirname(__FILE__) + user_data[:pic]
  user.update!(avatar: File.open(filename)) unless user.persisted?

  pics = data.delete(:pictures)
  availabilities = data.delete(:availabilities)
  reviews = data.delete(:reviews)

  rental = user.rentals.create!(data)

  pics.each do |pic|
    p filename = File.dirname(__FILE__) + pic
    rental.pictures.create!(file: File.open(filename))
  end

  availabilities.each do |day|
    rental.availabilities.create!(day: day)
  end

  reviews.each do |review|
    user = User.find_or_initialize_by(first_name: review[:user][:first_name])
    p filename = File.dirname(__FILE__) + review[:user][:pic]
    user.update!(avatar: File.open(filename)) unless user.persisted?
    rental.reviews.create(user: user, content: review[:content])
  end
end