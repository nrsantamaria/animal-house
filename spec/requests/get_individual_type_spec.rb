require 'rails_helper'

describe "get an individual type route", :type => :request do
  type = FactoryGirl.create(:type)

  it 'returns the type' do
    get "/types/#{type.id}"
    expect(response).to have_http_status(200)
  end
end
