require 'rails_helper'

describe OrderItem do
  it { should belong_to(:account).dependent(:destroy) }
  it { should belong_to(:product).dependent(:destroy) }
end