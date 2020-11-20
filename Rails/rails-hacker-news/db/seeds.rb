# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Link.destroy_all


10.times do |index|
  Link.create!(title: Faker::Friends.unique.quote, url: Faker::Internet.unique.url)
end

Link.all.each do |link|
  10.times do |index|
    link.comments.create(content: Faker::Hipster.unique.sentence, link_id: link.id)
  end
end

p "Faker created #{Link.count} links"
p "Faker created #{Comment.count} comments"
