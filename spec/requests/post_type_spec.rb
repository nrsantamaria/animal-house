require 'rails_helper'

describe "post a type route", :type => :request do
  before do
    post '/types', params: { :species => 'test type' }
  end

  it 'returns the species' do
    expect(JSON.parse(response.body)['species']).to eq('test type')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
