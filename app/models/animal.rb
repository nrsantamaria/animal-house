class Animal < ApplicationRecord
  belongs_to :type
  paginates_per 5
end
