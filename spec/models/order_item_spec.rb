require 'rails_helper'

describe OrderItem do
  it { should belong_to(:account) }
  it { should belong_to(:product) }
end