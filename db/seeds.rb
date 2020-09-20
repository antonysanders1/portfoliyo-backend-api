User.destroy_all
Work.destroy_all


#Dummy Users -- Actual designers and their works!
User.create(name: 'Antony Sanders', title: 'Software Eng. | UX/UI', bio: "I'm a Creative Enthusiast who has a passion for family and entrepreneurship.'", email: 'antony@me.com', password: '12345678').avatar.attach(
    io: File.open('./public/avatars/antony.png'), filename: 'antony.png', content_type: 'image/png')

User.create(name: 'Wallace Campbell', title: 'Industrial Designer', bio: 'Industrial designer - Automotive enthusiast', email: 'wallace@me.com', password: '12345678').avatar.attach(
    io: File.open('./public/avatars/wallace.png'), filename: 'wallace.png', content_type: 'image/png')

User.create(name: 'Saru Davenchy', title: 'Illustrator', bio: "Commissions: FULL🔒\nTraditional/Digital 2D Artist ✍🏼\nCreator of: Melanoir💫", email: 'saru@me.com', password: '12345678').avatar.attach(
    io: File.open('./public/avatars/saru.png'), filename: 'saru.png', content_type: 'image/png')


    
#Dummy Works   
work1 = Work.create({ title: 'ShadyRays E-Commerce', description: "A quick product view design to keep the 
UI skills sharp!", user_id: 1 }).image.attach(
io: File.open('./public/works/shadyrays.png'), filename: 'shadyrays.png', content_type: 'image/png')

work2 = Work.create({ title: 'Polestar//P O S I T I O N', description: "Polestar//P O S I T I O N.\n
My vision of Polestar’s design evolution in the year 2040.", user_id: 2 }).image.attach(
io: File.open('./public/works/polestar.png'), filename: 'polestar.png', content_type: 'image/png')

work3 = Work.create({ title: 'R.I.H. Nipsey', description: "Rest easy Nipsey Hu$$le.\n You were a true legend.", user_id: 3 }).image.attach(
io: File.open('./public/works/Nipsey.png'), filename: 'Nipsey.png', content_type: 'image/png')

work4 = Work.create({ title: 'Hyliion 6x4HSEA', description: "It is my pleasure to introduce the Hyliion 6x4HSEA, only available today 04.01.19 😆\n
Tons of fun to to work on and always a joy to flex the 3D modeling & rendering skills + snippet story telling.
Enjoy!\n\nTools: 3DSMax, Keyshot, photoshop", user_id: 2 }).image.attach(
io: File.open('./public/works/Hyliion6x4HSEA.png'), filename: 'hyliion6x4HSEA.png', content_type: 'image/png')

work5 = Work.create({ title: 'Check Out UI Design', description: "A UI Design for a checkout page for Rent-A-Car. What do you think?", user_id: 1 }).image.attach(
io: File.open('./public/works/rentacar.png'), filename: 'rentacar.png', content_type: 'image/png')

work6 = Work.create({ title: 'Clownin..', description: 'All female cast..', user_id: 3 }).image.attach(
io: File.open('./public/works/clowns.png'), filename: 'clowns.png', content_type: 'image/png')

work7 = Work.create({ title: 'Neumorphic UI', description: 'What an interesting design style!
I had a lot of fun creating this and learning neumorphism!', user_id: 1 }).image.attach(
io: File.open('./public/works/neumorphic_design.png'), filename: 'neumorphic_design.png', content_type: 'image/png')

work8 = Work.create({ title: 'Adidas Ketchums', description: 'For those who have to catch them all!', user_id: 2 }).image.attach(
io: File.open('./public/works/AdidasKetchums.png'), filename: 'AdidasKetchums.png', content_type: 'image/png')

work9 = Work.create({ title: 'Black Panther Tribute', description: "🖤👑🖤 RIP and thank you to Chadwick 
Boseman for bringing such black boy magic and EXCELLENCE on and off the big screen. And 
thank you for igniting the black beauty and power and excellence in all of us🙏🏼", user_id: 3 }).image.attach(
io: File.open('./public/works/blackpanther.png'), filename: 'blackpanther.png', content_type: 'image/png')


