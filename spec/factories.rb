FactoryGirl.define do
  factory :user do
    email 'rough@start'
    password 'example'
    password_confirmation "example"
  end
end
