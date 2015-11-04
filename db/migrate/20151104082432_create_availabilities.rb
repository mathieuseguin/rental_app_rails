class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.references :rental, index: true, foreign_key: true
      t.date :day, index: true, unique: true

      t.timestamps null: false
    end
  end
end
