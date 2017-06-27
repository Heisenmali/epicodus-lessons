require 'rails_helper'

describe Link do
  it { should validate_presence_of :title }
  it { should validate_presence_of :url }

  # describe "update_score" do
  #   it "should update the score based on time and upvotes" do
  #     test_link = Link.create({title: "food", url: "food.com", votes: 0, score: 0})
  #     expect(test_link.update_score(test_link, 3)).to eq()
  #   end
  # end
end
