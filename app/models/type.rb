class Type < ApplicationRecord
  has_many :animals
  validates :species, :presence => true
  paginates_per 5
end
