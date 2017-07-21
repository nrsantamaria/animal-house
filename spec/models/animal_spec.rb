require 'rails_helper'

describe Animal do
  it { should belong_to :type }
end
