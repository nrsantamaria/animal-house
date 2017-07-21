require 'rails_helper'

describe "post animal route", :type => :request do
  type = FactoryGirl.create(:type)

  it 'returns the success message' do
    get "/types/#{type.id}/animals"
    post "/types/#{type.id}/animals", params: { :name => 'name', :color => 'color', :breed => 'breed', :age => '1', :gender => 'gender', :weight => '10', :description => 'description', :photo => 'photo' }
    expect(response).to have_http_status(:created)
  end
end
