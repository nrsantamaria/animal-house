class Type < ApplicationRecord
  has_many :animals
  validates :species, :presence => true
end
