class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :reviews
  has_many :parks, through: :reviews
end
