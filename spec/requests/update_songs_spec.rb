require 'rails_helper'

describe "delete a song route", :type => :request do
  let!(:songs) { FactoryGirl.create_list(:song, 1)}

  before do
    song = Song.all.last
    put "/songs/#{song.id}", params: {"data"=>{"attributes"=>{"artist"=>"new_artist", "title"=>"new_title"}, "type"=>"songs"}, "song"=>{}}
  end

  it 'updates a song' do
    expect(JSON.parse(response.body)['message']).to eq('Your song has successfully been updated.')
  end
  
  it 'updates a song' do
    expect(JSON.parse(response.body)['message']).to eq('Your song has successfully been updated.')
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
