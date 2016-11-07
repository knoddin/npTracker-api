class ParkSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :description
  has_one :user
end
