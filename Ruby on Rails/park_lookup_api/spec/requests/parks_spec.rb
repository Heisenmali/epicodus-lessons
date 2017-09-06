require 'rails_helper'

describe "parks API" do

 # CRUD ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

  it 'sends a list of parks' do
    FactoryGirl.create_list(:park, 10)

    get '/parks'
    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response).to be_success

    # check to make sure the right amount of parks are returned, tests the pagination
    expect(json.length).to eq(5)
  end

  it 'sends a single park found by id' do
    park = FactoryGirl.create_list(:park, 10).first

    get '/parks/' + park.id.to_s
    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response).to be_success

    # check to make sure the right amount of parks are returned
    expect(json['id']).to eq(park.id)
  end

  it 'returns and error message if the park is not found'  do
    FactoryGirl.create_list(:park, 10)
    get '/parks/0'
    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response).to have_http_status(404)

    # check to make sure the right amount of parks are returned
    expect(json['message']).to eq("Couldn't find Park with 'id'=0")
  end

  it 'creates a park' do
    FactoryGirl.create_list(:park, 10)

    post '/parks', params: {"name": "helloworld"}
    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response).to be_success

    # check to make sure the new name is returned
    expect(json['name']).to eq("helloworld")
  end

  it 'updates a park' do
    park = FactoryGirl.create_list(:park, 10).first

    put '/parks/' + park.id.to_s, params: {"name": "helloworld"}
    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response).to be_success

    # check to make sure the success message is returned
    expect(json['message']).to eq("song was updated")
  end

  it 'deletes a park' do
    park = FactoryGirl.create_list(:park, 10).first

    delete '/parks/' + park.id.to_s
    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response).to be_success

    # check to make sure the deletion message is returned
    expect(json['message']).to eq("song was deleted")
  end

  # CUSTOM ROUTES ––––––––––––––––––––––––––––––––––––––––––––––––––––––

  it 'returns a random park' do
    FactoryGirl.create_list(:park, 100)
    parks = Park.all
    max = parks.last.id + 1
    min = parks.first.id
    range = (min..max)

    get '/random'
    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response).to be_success
    
    # check to make sure the deletion message is returned
    expect(range.include?(json['id'])).to eq(true)
  end

  it 'returns the searched park' do
    park = FactoryGirl.create_list(:park, 100).first
    
    get '/search', params: {"name": park.name}
    json = JSON.parse(response.body)
  
    # test for the 200 status-code
    expect(response).to be_success

    # check to make sure the deletion message is returned
    expect(json.first['name']).to eq(park.name)
  end

   it 'returns a message if the search yielded no results' do
    park = FactoryGirl.create_list(:park, 100).first
    
    get '/search', params: {"name": "d"}
    json = JSON.parse(response.body)
  
    # test for the 200 status-code
    expect(response).to be_success

    # check to make sure the deletion message is returned
    expect(json['message']).to eq("There are no results for your search")
  end
end
