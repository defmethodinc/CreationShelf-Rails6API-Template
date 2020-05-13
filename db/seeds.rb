# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.first_or_create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

user_1 = User.find_or_create_by! name: 'test user 1', email: 'test_user_1@example.com'
user_2 = User.find_or_create_by! name: 'test user 2', email: 'test_user_2@example.com'

creation_1 = Creation.find_or_create_by! name: 'superman rollercoaster', creator: user_1
creation_2 = Creation.find_or_create_by! name: 'banana bread', creator: user_1
creation_3 = Creation.find_or_create_by! name: 'metal sculpture', creator: user_2
creation_4 = Creation.find_or_create_by! name: 'paper boat', creator: user_2

Photo.find_or_create_by! url: 'https://img2.10bestmedia.com/Images/Photos/352283/Superman_54_990x660.jpg', holder: creation_1
Photo.find_or_create_by! url: 'https://upload.wikimedia.org/wikipedia/commons/9/9b/Movie_world_superman_escape_zz.JPG', holder: creation_1

Photo.find_or_create_by! url: 'https://www.simplyrecipes.com/wp-content/uploads/2014/08/banana-bread-vertical-c-1200.jpg', holder: creation_2
Photo.find_or_create_by! url: 'https://natashaskitchen.com/wp-content/uploads/2018/05/Banana-Bread-Recipe-6.jpg', holder: creation_2

Photo.find_or_create_by! url: 'https://i.etsystatic.com/13333509/r/il/a04650/1894940099/il_570xN.1894940099_kjin.jpg', holder: creation_3
Photo.find_or_create_by! url: 'https://i.pinimg.com/474x/ce/c5/40/cec540bf1609c5391975d07adb59cafe--steel-sculpture-modern-sculpture.jpg', holder: creation_3

Photo.find_or_create_by! url: 'https://www.bgs.org.uk/sites/default/files/styles/nugget-mobile/public/content/paragraphs/text/images/2018-07-11/paper%20boat.jpg?itok=VAYI0dOy&timestamp=1531318731', holder: creation_4
Photo.find_or_create_by! url: 'https://onelittleproject.com/wp-content/uploads/2020/01/Paper-Boats.jpg', holder: creation_4

