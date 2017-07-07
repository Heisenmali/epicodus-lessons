Product.destroy_all
Review.destroy_all
User.destroy_all

user = User.create(email: 'rough@start', password: 'donkez', password_confirmation: "donkez", admin: true)

10.times do |i|
  product = Product.create(name: Faker::Hipster.word, description: Faker::Hipster.paragraph(3), price: Faker::Number.decimal(2), image: File.open(ENV['HOME'] + "/desktop/music_store/public/seed_images/#{i}.jpg"))

  5.times do |j|
    review = Review.create(content: Faker::Hipster.paragraph(2))

    product.reviews << review
    user.reviews << review
  end
end