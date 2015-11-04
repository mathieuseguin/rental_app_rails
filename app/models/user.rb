class User < ActiveRecord::Base
  has_many :rentals

  def full_name
    first_name + ' ' + last_name
  end
end
