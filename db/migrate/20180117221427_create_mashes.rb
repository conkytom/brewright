class CreateMashes < ActiveRecord::Migration[5.1]
  def change
    create_table :mashes do |t|
      t.decimal :grain_bill
      t.integer :length
      t.integer :target_temp
      t.integer :strike_temp
      t.decimal :strike_volume
      t.decimal :sparge_volume
      t.decimal :efficiency
      t.decimal :thickness
      t.decimal :grain_absorption
      t.integer :grain_temp

      t.timestamps
    end
  end
end
