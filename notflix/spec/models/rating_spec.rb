require 'rails_helper'

describe Rating do
  it { should validate_presence_of :title, :review, :stars, :movie_id, :user_id }
  it { should belong_to :movies }
  it { should belong_to :users }
end
