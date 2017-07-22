require 'rails_helper'

describe "get all songs route", :type => :request do
  let!(:songs) { FactoryGirl.create_list(:song, 20)}

  before { get '/songs'}

  it 'returns all songs' do

    expect(JSON.parse(response.body)["data"].size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
