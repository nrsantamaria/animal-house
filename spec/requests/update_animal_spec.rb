require 'rails_helper'

describe "put a type route", :type => :request do
  let!(:type) {FactoryGirl.create(:type_with_animals)}

  it 'returns the updated animal name' do
    put "/types/#{type.id}/animals/#{type.animals[0].id}", params: { :name => 'Joey' }
    get "/types/#{type.id}/animals/#{type.animals[0].id}"
    expect(JSON.parse(response.body)['name']).to eq('Joey')
  end

  it 'returns an individual animal status' do
    put "/types/#{type.id}/animals/#{type.animals[0].id}", params: { :name => 'Joey' }
    expect(JSON.parse(response.body)['message']).to eq('Yay! A new animal!')
  end
end
