require 'rails_helper'

describe "delete a song route", :type => :request do
  let!(:songs) { FactoryGirl.create_list(:song, 1)}

  before do
    song = Song.all.last
    delete "/songs/#{song.id}"
  end

  it 'deletes a song' do
    expect(JSON.parse(response.body)['data']['attributes']['message']).to eq('The song was deleted')
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
