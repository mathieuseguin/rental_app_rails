class Rental < ActiveRecord::Base
  belongs_to :kind
  belongs_to :user
  has_many :reviews
end
