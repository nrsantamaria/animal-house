require 'rails_helper'

describe "post a type exception route", :type => :request do
  before do
    post '/types'
  end

  it 'returns an unprocessable entity status' do
    expect(response).to have_http_status(:unprocessable_entity)
  end
end
