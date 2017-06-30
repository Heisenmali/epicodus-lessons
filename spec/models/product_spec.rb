require 'rails_helper'

describe Product do

  before(:all) do
    Rails.application.load_seed
  end

  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :country }

  it { should have_many(:reviews).dependent(:destroy) }
  it { should have_many(:users).through(:reviews) }


  describe '.most_reviewed' do
    it 'will return the product with the most reviews' do
      user = User.create(name: "lng")
      product = Product.create(name: Faker::Ancient.primordial, cost:Faker::Number.digit, country: Faker::Address.country)

      20.times do |j|
        review = Review.create(rating: Faker::Number.between(1, 5), content: Faker::Lorem.characters(51))

        user.reviews << review
        product.reviews << review
      end
      expect(Product.most_reviewed.reviews.length).to eq(20)
    end
  end
end