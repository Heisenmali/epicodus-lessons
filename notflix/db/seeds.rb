
Movie.destroy_all
User.destroy_all
Rating.destroy_all

user = User.create(name: "Aubrey")

50.times do |i|
  movie = Movie.create(title: Faker::Cat.name, image: "https://i-d-images.vice.com/images/2016/09/16/bill-murray-has-a-couple-of-shifts-at-a-brooklyn-bar-this-weekend-body-image-1473999364.jpg?resize=300:*&output-quality=75")
  Faker::Number.between(0, 10).times do |j|
    rating = Rating.create(
      title: Faker::Lorem.sentence,
      stars: Faker::Number.between(0, 5),
      review: Faker::Lorem.sentence(10),
    )
    movie.ratings << rating
    user.ratings << rating
  end
end
