require 'rails_helper'

describe Product do
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :country }

  it { should have_many :reviews }
  it { should have_many :users }
end