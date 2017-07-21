require 'rails_helper'

describe "get random animals route", :type => :request do
  before do
    Type.destroy_all
    type = FactoryGirl.create(:type_with_animals)
    get "/types/#{type.id}/animals/random"
  end

  it 'returns all animals' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
