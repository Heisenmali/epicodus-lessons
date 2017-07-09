User.destroy_all
Photo.destroy_all

10.times do |index|
  newUser = User.create(email: Faker::Internet.email,
                        password: Faker::Internet.password(10, 20))

  3.times do
    newUser.photos.create(description: Faker::Ancient.god)
  end
end


p "Created #{User.count} users"
p "Created #{Photo.count} photos"
