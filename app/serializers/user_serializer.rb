class UserSerializer < ActiveModel::Serializer
  attributes :id, :email

  def park
    object.park.id
  end
end
