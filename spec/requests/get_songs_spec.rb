require 'rails_helper'

describe "get all songs route", :type => :request do
  let!(:songs) { FactoryGirl.create_list(:song, 20)}

  before { get '/songs'}

  it 'returns all songs' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "post a song route", :type => :request do

  before do
    post '/songs', params: { :artist => 'test_artist', :title => 'test_title' }
  end

  it 'returns the artist name' do
    expect(JSON.parse(response.body)['artist']).to eq('test_artist')
  end

  it 'returns the song title' do
    expect(JSON.parse(response.body)['title']).to eq('test_title')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
