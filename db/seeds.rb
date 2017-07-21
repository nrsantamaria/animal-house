# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
class Seed

  def self.begin
    seed = Seed.new
    seed.generate_type
  end

  def generate_type
    type1 = Type.create!(species: 'Cat')
    type2 = Type.create!(species: 'Dog')
    type3 = Type.create!(species: 'Dragon')
    20.times do |i|
      cats = Animal.create!(
        name: Faker::Pokemon.name,
        color: Faker::Color.color_name,
        breed: Faker::Cat.breed,
        age: Faker::Number.between(1,18),
        gender: Faker::Demographic.sex,
        weight: Faker::Measurement.weight,
        description: Faker::MostInterestingManInTheWorld.quote,
        photo: 'https://s-media-cache-ak0.pinimg.com/originals/c9/cd/c5/c9cdc5b5e26ff792195fe5af0a329413.jpg',
        type_id: type1.id
      )
    end
    20.times do |i|
      dogs = Animal.create!(
        name: Faker::Pokemon.name,
        color: Faker::Color.color_name,
        breed: Faker::Cat.breed,
        age: Faker::Number.between(1,18),
        gender: Faker::Demographic.sex,
        weight: Faker::Measurement.weight,
        description: Faker::MostInterestingManInTheWorld.quote,
        photo: 'https://s-media-cache-ak0.pinimg.com/736x/79/a9/41/79a941de1bfe8d9fbea2369fef8c2e35--pomeranians-chihuahuas.jpg',
        type_id: type2.id
      )
    end
    20.times do |i|
      dragons = Animal.create!(
        name: Faker::Pokemon.name,
        color: Faker::Color.color_name,
        breed: Faker::Cat.breed,
        age: Faker::Number.between(1,108),
        gender: Faker::Demographic.sex,
        weight: Faker::Measurement.weight,
        description: Faker::MostInterestingManInTheWorld.quote,
        photo: 'https://dcassetcdn.com/w1k/submissions/461000/461131_eb1f.jpg',
        type_id: type3.id
      )
    end
  end

end

Seed.begin
