class CreateFermentations < ActiveRecord::Migration[5.1]
  def change
    create_table :fermentations do |t|
      t.integer :primary_time
      t.string :primary_time_unit
      t.integer :primary_temp
      t.boolean :secondary
      t.integer :secondary_time
      t.string :secondary_time_unit
      t.integer :secondary_temp
      t.decimal :volume
      t.string :volume_unit
      t.string :location

      t.timestamps
    end
  end
end
