require 'rails_helper'

describe Account do
  it { should have_many(:order_items) }
  it { should have_many(:products).through(:order_items) }
end