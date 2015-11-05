class City < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :rentals, dependent: :destroy
end
