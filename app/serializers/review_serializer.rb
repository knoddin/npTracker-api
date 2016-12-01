class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :description, :rating, :park, :user
end
