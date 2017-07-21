require 'rails_helper'

describe Animal do
  it { should belong_to :type }
  it { should validate_presence_of :name }
  it { should validate_presence_of :color }
  it { should validate_presence_of :breed }
  it { should validate_presence_of :age }
  it { should validate_presence_of :gender }
  it { should validate_presence_of :weight }
  it { should validate_presence_of :description }
  it { should validate_presence_of :photo }
end
