class UserSerializer < ActiveModel::Serializer
  attributes :id, :email

  def park
    object.park.id
  end

  # def my_parks
  #   object.park.id
  # end

end
