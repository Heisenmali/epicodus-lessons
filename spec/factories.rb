FactoryGirl.define do
  factory :user do
    email "basic@test"
    password  "testpassword"
    password_confirmation "testpassword"
    admin false
  end

  factory :product do
    name "test_product"
    description "test_description"
  end
end