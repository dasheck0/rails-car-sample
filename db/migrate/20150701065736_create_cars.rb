class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :color
      t.float :width
      t.float :length
      t.float :height

      t.timestamps
    end
  end
end
