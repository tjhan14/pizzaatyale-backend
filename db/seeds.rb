# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts " Deleting old database ..."
Pizza.destroy_all
Restaurant.destroy_all
Type.destroy_all
UserPizza.destroy_all
User.destroy_all

puts "Seeding restaurants..."
    5.times do 
        restaurant = Restaurant.create!(
            name: Faker::Restaurant.name, 
            address: Faker::Address.full_address, 
            phone_number: Faker::PhoneNumber.cell_phone,
            website: Faker::Internet.email
            )
    end

puts "Seeding types..."
    10.times do 
        type = Type.create!(
            name: Faker::Food.dish,
            description: Faker::Food.description
        )
    end


puts "Seeding pizzas..."
    30.times do 
        pizza = Pizza.create!(
            name: Faker::Food.dish, 
            description: Faker::Food.description,
            price: rand(30...50),
            restaurant_id: Restaurant.ids.sample,
            type_id: Type.ids.sample,
            image_url: Faker::Avatar.image
        )
    end

puts "Seeding users..."
    50.times do 
        user = User.create!(
            first_name: Faker::Name.first_name, 
            last_name: Faker::Name.last_name,  
            phone_number: Faker::PhoneNumber.cell_phone,
            email: Faker::Internet.email
        )
    end

puts "Seeding ratings and comments..."
    30.times do 
        user_pizza = UserPizza.create!(
            rating: rand(1...5),
            comment: Faker::Quotes::Shakespeare.hamlet_quote, 
            user_id: User.ids.sample,
            pizza_id: Pizza.ids.sample
        )
    end

puts "Finished seeding!"
