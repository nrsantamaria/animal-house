require 'rails_helper'

describe "get an individual type route by searching for specific species", :type => :request do
  type = FactoryGirl.create(:type)

  it 'returns successfull response' do
    get "/types/by_species?species=#{type.species}"
    expect(response).to have_http_status(200)
  end
end
