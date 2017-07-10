Product.destroy_all
Review.destroy_all
User.destroy_all
OrderItem.destroy_all
Account.destroy_all

user = User.create(email: 'admin@test', password: 'admin_test', password_confirmation: "admin_test", admin: true)

user.create_account(cart_status: 'empty')

10.times do |i|
  product = Product.create(name: Faker::Space.unique.star_cluster, description: Faker::Hipster.paragraph(3), price: Faker::Number.decimal(2), image: File.open(ENV['HOME'] + "/Documents/Web\ development/Epicodus\ stuff/music_store/public/seed_images/#{i}.jpg"))

  5.times do |j|
    review = Review.create(content: Faker::Hipster.paragraph(2))

    product.reviews << review
    user.reviews << review
  end
end