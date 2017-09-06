require 'rails_helper'

describe "Messages API" do
  it 'sends a list of parks' do
    FactoryGirl.create_list(:park, 10)

    get '/parks'
    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response).to be_success

    # check to make sure the right amount of messages are returned
    expect(json['data'].length).to eq(10)
  end

  it 'gets a specific park' do
    park = FactoryGirl.create_list(:park, 10).first

    get '/parks/' + park.id.to_s
    json = JSON.parse(response.body)
   
    # test for the 200 status-code
    expect(response).to be_success

    # check to make sure the right amount of messages are returned
    expect(json.length).to eq(1)
    expect(json['data']['id']).to eq(park.id.to_s)
  end

  it 'creates a park' do
    park = FactoryGirl.create_list(:park, 10).first
    headers = { "CONTENT_TYPE" => "application/vnd.api+json", "ACCEPT" => "application/vnd.api+json"}
    post "/parks", params: {"data" => {"type" => "parks", "attributes" => {"name" => "To TDD or Not"}}}, headers: headers
    json = JSON.parse(response.body)
    byebug
   
    # test for the 200 status-code
    expect(response).to be_success

    # check to make sure the right amount of messages are returned
    expect(json.length).to eq(1)
    expect(json['data']['id']).to eq(park.id.to_s)
  end
end