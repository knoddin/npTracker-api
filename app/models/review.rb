class Review < ActiveRecord::Base
  has_one :park
  belongs_to :user
end
