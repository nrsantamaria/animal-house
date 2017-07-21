require 'rails_helper'

describe "get all types route", :type => :request do
  before { Type.destroy_all }
  let!(:types) { FactoryGirl.create_list(:type, 20)}

  before { get '/types'}

  it 'returns all types' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
