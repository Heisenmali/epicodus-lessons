require 'rails_helper'

describe User do
  it { should validate_presence_of :name }

  it { should have_many(:reviews).dependent(:destroy) }
  it { should have_many(:products).through(:reviews) }
end