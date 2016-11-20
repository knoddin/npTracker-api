class ParkSerializer < ActiveModel::Serializer
  attributes :id, :name, :latitude, :longitude, :state, :url
end
