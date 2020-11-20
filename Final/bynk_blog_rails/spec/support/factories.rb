FactoryGirl.define do

  factory :post do
    author "nkls"
    title Faker::Hipster.paragraph(1)
    teaser Faker::Hipster.paragraph(1)
    media "datatatata"
    date "real-date"
  end

  factory :component do
    component_type "post-paragraph"
    content Faker::Hipster.paragraph(3)
    post
  end

end