require 'rails_helper'

describe Account do
  it { should belong_to(:user) }
  it { should have_many(:chat_rooms).through(:messages) }
  it { should have_many(:messages) }
end
