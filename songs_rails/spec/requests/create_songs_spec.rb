require 'rails_helper'

describe "post a song route", :type => :request do

  before do
    post '/songs', params: {"data"=>{"attributes"=>{"artist"=>"test_artist", "title"=>"test_title"}, "type"=>"songs"}, "song"=>{}}
  end

  it 'returns the artist name' do
    expect(JSON.parse(response.body)['data']['attributes']['artist']).to eq('test_artist')
  end

  it 'returns the song title' do
    expect(JSON.parse(response.body)['data']['attributes']['title']).to eq('test_title')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
