survey1 = Survey.create!(name: "food in the Star Wars galaxy")
survey2 = Survey.create!(name: "Survey 2")

3.times do |i|
	survey1.questions.create!(content: "do you like #{Faker::Food.dish}?")
end

5.times do |i|
	Participant.create(name: Faker::StarWars.character)
end



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
