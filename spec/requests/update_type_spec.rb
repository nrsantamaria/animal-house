require 'rails_helper'

describe "put a type route", :type => :request do

  it 'returns the updated species' do
    type = FactoryGirl.create(:type)
    put "/types/#{type.id}", params: { :species => 'Elephant' }
    get "/types/#{type.id}"
    expect(JSON.parse(response.body)['species']).to eq('Elephant')
  end
end
