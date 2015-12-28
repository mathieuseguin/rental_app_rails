class AddLatLngToRental < ActiveRecord::Migration
  def change
    add_column :rentals, :lat, :float
    add_column :rentals, :lng, :float
  end
end
