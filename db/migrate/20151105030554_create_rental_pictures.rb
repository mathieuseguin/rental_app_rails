class CreateRentalPictures < ActiveRecord::Migration
  def change
    create_table :rental_pictures do |t|
      t.references :rental
      t.attachment :file

      t.timestamps null: false
    end
  end
end
