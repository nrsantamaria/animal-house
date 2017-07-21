require 'rails_helper'

describe "the delete an individual animal route", :type => :request do

  it 'deletes an individual animal status' do
    type = FactoryGirl.create(:type_with_animals)
    get "/types/#{type.id}/animals/#{type.animals[0].id}"
    delete "/types/#{type.id}/animals/#{type.animals[0].id}"
    expect(JSON.parse(response.body)['message']).to eq('Successfully deleted animal.')
  end
end
