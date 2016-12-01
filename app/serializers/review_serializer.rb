class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :description, :rating
end
