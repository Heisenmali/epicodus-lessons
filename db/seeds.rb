
Movie.destroy_all
User.destroy_all
Rating.destroy_all

user = User.create(name: "Aubrey")

50.times do |i|
  movie = Movie.create(title: Faker::Cat.name)
  rating = Rating.create(
    title: Faker::Lorem.sentence,
    stars: Faker::Number.between(0, 5),
    review: Faker::Lorem.sentence(10),
  )
  movie.ratings << rating
  user.ratings << rating
end
