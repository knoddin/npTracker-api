class CreateParks < ActiveRecord::Migration
  def change
    create_table :parks do |t|
      t.string :name
      t.decimal :latitude, precision: 9, scale: 6
      t.decimal :longitude, precision: 9, scale: 6
      t.string :state
      t.string :url

      t.timestamps null: false
    end
  end
end
