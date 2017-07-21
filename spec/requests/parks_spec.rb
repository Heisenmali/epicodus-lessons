require 'rails_helper'

describe "parks API" do
  it 'sends a list of parks' do
    FactoryGirl.create_list(:park, 10)

    get '/parks'
    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response).to be_success

    # check to make sure the right amount of messages are returned, tests the pagination
    expect(json.length).to eq(5)
  end

  it 'sends a single park found by id' do
    park = FactoryGirl.create_list(:park, 10).first

    get '/parks/' + park.id.to_s
    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response).to be_success

    # check to make sure the right amount of messages are returned
    expect(json['id']).to eq(park.id)
  end

  it 'creates a park' do
    FactoryGirl.create_list(:park, 10)

    post '/parks', params: {"name": "helloworld"}
    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response).to be_success

    # check to make sure the right amount of messages are returned
    expect(json['name']).to eq("helloworld")
  end

  it 'updates a park' do
    park = FactoryGirl.create_list(:park, 10).first

    put '/parks/' + park.id.to_s, params: {"name": "helloworld"}
    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response).to be_success

    # check to make sure the right amount of messages are returned
    expect(json['message']).to eq("song was updated")
  end

  it 'deletes a park' do
    park = FactoryGirl.create_list(:park, 10).first

    delete '/parks/' + park.id.to_s
    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response).to be_success

    # check to make sure the right amount of messages are returned
    expect(json['message']).to eq("song was deleted")
  end
end