require 'rails_helper'

describe Chat do
  it { should have_many(:member_accounts).through(:messages) }
  it { should have_many(:messages) }
end
