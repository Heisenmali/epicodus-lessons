require 'rails_helper'

describe Product do
  it { should have_many(:reviews).dependent(:destroy) }
  it { should have_many(:users).through(:reviews) }
  it { should validate_presence_of :name }
  it { should validate_presence_of :price }
  it { should validate_presence_of :description }
end