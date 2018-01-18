class CreateBoils < ActiveRecord::Migration[5.1]
  def change
    create_table :boils do |t|
      t.integer :length
      t.string :length_unit
      t.decimal :pre_volume
      t.decimal :post_volume
      t.string :volume_unit

      t.timestamps
    end
  end
end
