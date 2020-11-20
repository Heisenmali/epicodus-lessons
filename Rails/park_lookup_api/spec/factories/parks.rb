FactoryGirl.define do
  sequence :name { |n| "#{n}park" }

  factory :park do
    name
  end
end