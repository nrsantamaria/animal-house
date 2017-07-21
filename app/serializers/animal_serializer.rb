class AnimalSerializer < ActiveModel::Serializer
  attributes :id, :name, :color, :breed, :age, :gender, :weight, :description, :photo
  belongs_to :type
end
