require 'rails_helper'

describe "delete a type route", :type => :request do

  it 'returns the updated species' do
    type = FactoryGirl.create(:type)
    get "/types/#{type.id}"
    delete "/types/#{type.id}"
    expect(response).to have_http_status(200)
  end
end
