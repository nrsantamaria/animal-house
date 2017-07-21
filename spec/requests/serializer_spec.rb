require 'rails_helper'

describe "it shows type species when a request is made for getting animals", :type => :request do

  before do
    type = FactoryGirl.create(:type_with_animals)
    get "/types/#{type.id}/animals/#{type.animals[0].id}"
  end

  it 'returns type species for that animal' do
    expect(JSON.parse(response.body)["type"]["species"]).to eq("Cat")
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
