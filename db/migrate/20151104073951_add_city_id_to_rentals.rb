class AddCityIdToRentals < ActiveRecord::Migration
  def change
    add_reference :rentals, :city, index: true, foreign_key: true
  end
end
