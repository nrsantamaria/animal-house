require 'rails_helper'

describe "put a type route", :type => :request do
  type = FactoryGirl.create(:type)

  it 'returns the updated species' do
    put "/types/#{type.id}", params: { :species => 'Elephant' }
    get "/types/#{type.id}"
    expect(JSON.parse(response.body)['species']).to eq('Elephant')
  end
end
