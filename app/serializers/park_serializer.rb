class ParkSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :description, :user_id, :editable
  has_one :user

  def user
    object.user.id
  end

  def editable
    scope == object.user
  end
end
