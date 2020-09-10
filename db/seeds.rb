# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Work.destroy_all

work1 = Work.create({ title: 'Work 1', description: 'this is the description area.
    Here is some text to fill up this space! Working hard or hardly working?
    To be or not to be... That is the question!', user_id: 1 }).image.attach(
        io: File.open('./public/works/work.png'), filename: 'work.png', content_type: 'image/png')


work2 = Work.create({ title: 'Work 2', description: 'this is the description area.
    Here is some text to fill up this space! Working hard or hardly working?
    To be or not to be... That is the question!', user_id: 1 }).image.attach(
        io: File.open('./public/works/ballHype.png'), filename: 'ballhype.png', content_type: 'image/png')

work3 = Work.create({ title: 'Work 3', description: 'this is the description area.
    Here is some text to fill up this space! Working hard or hardly working?
    To be or not to be... That is the question!', user_id: 1 }).image.attach(
        io: File.open('./public/works/fitness.png'), filename: 'fitness.png', content_type: 'image/png')

work4 = Work.create({ title: 'Work 4', description: 'this is the description area.
    Here is some text to fill up this space! Working hard or hardly working?
    To be or not to be... That is the question!', user_id: 1 }).image.attach(
        io: File.open('./public/works/shadyrays.png'), filename: 'shadyrays.png', content_type: 'image/png')

work5 = Work.create({ title: 'Work 5', description: 'this is the description area.
    Here is some text to fill up this space! Working hard or hardly working?
    To be or not to be... That is the question!', user_id: 1 }).image.attach(
        io: File.open('./public/works/login.png'), filename: 'login.png', content_type: 'image/png')


