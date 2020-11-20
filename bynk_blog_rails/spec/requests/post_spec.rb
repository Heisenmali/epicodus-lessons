require 'rails_helper'

describe "Messages API" do
  it 'sends a list of posts' do
    FactoryGirl.create_list(:component, 10)

    get '/posts'
    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response).to be_success

    # check to make sure the right amount of messages are returned
    expect(json['data'].length).to eq(10)
  end

  it 'sends a list of posts' do
    component = FactoryGirl.create(:component)
    post = component.post

    get '/posts/' + post.id.to_s
    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response).to be_success

    # check to make sure the right amount of messages are returned
    expect(json['data']['id']).to eq(post.id.to_s)
  end
end