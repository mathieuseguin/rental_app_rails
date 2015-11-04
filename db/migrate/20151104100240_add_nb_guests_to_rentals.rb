class AddNbGuestsToRentals < ActiveRecord::Migration
  def change
    add_column :rentals, :nb_guests, :integer
  end
end
