require 'faker'


10.times do
    User.create(first_name: Faker::StarWars.character, last_name: Faker::Zelda.character, email: Faker::Internet.email)
end 