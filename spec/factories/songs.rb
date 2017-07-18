FactoryGirl.define do
  factory :song do
    artist Faker::RockBand.name
    title Faker::ChuckNorris.fact
  end
end
