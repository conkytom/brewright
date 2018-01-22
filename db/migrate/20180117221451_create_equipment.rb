class CreateEquipment < ActiveRecord::Migration[5.1]
  def change
    create_table :equipment do |t|
      t.string :name
      t.decimal :kettle_volume
      t.string :kettle_volume_unit
      t.decimal :loss
      t.string :loss_unit
      t.decimal :evaporation_rate
      t.string :eavopration_rate_unit
      t.decimal :wort_shrinkage

      t.timestamps
    end
  end
end
