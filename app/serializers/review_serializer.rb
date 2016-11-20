class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :description, :rating
  has_one :park
end
