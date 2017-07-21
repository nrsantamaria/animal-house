class Type < ApplicationRecord
  has_many :animals, dependent: :destroy
  validates :species, :presence => true
  paginates_per 5
  scope :by_species, -> (search) { where("species like ?", "%#{search}")}
end
