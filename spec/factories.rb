FactoryGirl.define do
  factory :type do
    species('Cat')
    factory :type_with_animals do
      transient do
        animals_count 10
      end
      after(:create) do |type, evaluator|
        create_list(:animal, evaluator.animals_count, type: type)
      end
    end
  end

  factory :animal do
    name(Faker::Pokemon.name)
    color(Faker::Color.color_name)
    breed(Faker::Cat.breed)
    age(Faker::Number.between(1,18))
    gender(Faker::Demographic.sex)
    weight(Faker::Measurement.weight)
    description(Faker::MostInterestingManInTheWorld.quote)
    photo(Faker::Avatar.image)
    type
  end
end
