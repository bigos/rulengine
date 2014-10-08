class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :depot_id
      t.string :block
      t.integer :column
      t.integer :level
      t.boolean :mixed

      t.timestamps
    end
  end
end
