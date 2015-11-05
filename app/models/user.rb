class User < ActiveRecord::Base
  has_many :rentals, dependent: :destroy

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  do_not_validate_attachment_file_type :avatar

  def full_name
    first_name.to_s + ' ' + last_name.to_s
  end
end
