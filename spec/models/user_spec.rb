require 'rails_helper'

describe User do
  it { should have_many :reviews }
  it { should have_many(:products).through(:reviews)}
  it { should validate_presence_of :email }
  it { should validate_presence_of :password }
end
