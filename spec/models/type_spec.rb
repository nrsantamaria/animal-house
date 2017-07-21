require 'rails_helper'

describe Type do
  it { should have_many :animals }
  it { should validate_presence_of :species }
end
