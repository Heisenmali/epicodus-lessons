require 'rails_helper'

describe "Messages API" do
  it 'sends a list of parks' do
    FactoryGirl.create_list(:park, 10)

    get '/parks'

    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response).to be_success

    # check to make sure the right amount of messages are returned
    expect(json['parks'].length).to eq(10)
  end
end