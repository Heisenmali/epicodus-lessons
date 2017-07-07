Product.destroy_all
Review.destroy_all
User.destroy_all

user = User.create(email: 'rough@start', password: 'donkez', password_confirmation: "donkez")

20.times do |i|
  product = Product.create(name: Faker::Hipster.word, description: Faker::Hipster.paragraph(3))

  5.times do |i|
    review = Review.create(content: Faker::Hipster.paragraph(2))

    product.reviews << review
    user.reviews << review
  end
end