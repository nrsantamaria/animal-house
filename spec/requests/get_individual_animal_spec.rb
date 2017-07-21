require 'rails_helper'

describe "the get an individual animal route", :type => :request do

  it 'returns an individual animal status' do
    type = FactoryGirl.create(:type_with_animals)
    get "/types/#{type.id}/animals/#{type.animals[0].id}"
    expect(response).to have_http_status(200)
  end
end
