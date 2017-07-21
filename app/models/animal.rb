class Animal < ApplicationRecord
  belongs_to :type
  validates :name, :color, :breed, :age, :gender, :weight, :description, :photo, :presence => true
  paginates_per 5
end
