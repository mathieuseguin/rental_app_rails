class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.string :name
      t.references :kind, index: true, foreign_key: true
      t.float :score
      t.references :user, index: true, foreign_key: true
      t.float :price
      t.boolean :instant_book

      t.timestamps null: false
    end
  end
end
