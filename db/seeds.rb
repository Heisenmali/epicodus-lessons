Product.destroy_all
User.destroy_all

user = User.create(name: "nkls")

20.times do |i|
  product = Product.create(name: Faker::Ancient.unique.primordial, cost:Faker::Number.digit, country: Faker::Address.country, description: Faker::Hipster.paragraph(6))

  Faker::Number.between(1, 10).times do |j|
    review = Review.create(rating: Faker::Number.between(1, 5), content: Faker::Hipster.paragraph(3))

    user.reviews << review
    product.reviews << review
  end
end