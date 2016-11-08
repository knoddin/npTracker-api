class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  # has_many :parks

  def park
    object.park.id
  end

  # def my_parks
  #   object.park.id
  # end

end
