class AddAttributesToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :grain_bill, :decimal
    add_column :recipes, :mash_length, :integer
    add_column :recipes, :mash_target_temp, :integer
    add_column :recipes, :mash_strike_temp, :integer
    add_column :recipes, :mash_strike_volume, :decimal
    add_column :recipes, :mash_sparge_volume, :decimal
    add_column :recipes, :mash_efficiency, :decimal
    add_column :recipes, :mash_thickness, :decimal
    add_column :recipes, :mash_grain_absorption, :decimal
    add_column :recipes, :grain_temp, :integer
    add_column :recipes, :fermentation_primary_time, :integer
    add_column :recipes, :fermentation_primary_time_unit, :string
    add_column :recipes, :fermentation_primary_temp, :integer
    add_column :recipes, :fermentation_secondary, :boolean
    add_column :recipes, :fermentation_secondary_time, :integer
    add_column :recipes, :fermentation_secondary_time_unit, :string
    add_column :recipes, :fermentation_secondary_temp, :integer
    add_column :recipes, :fermentation_volume, :decimal
    add_column :recipes, :fermentation_volume_unit, :string
    add_column :recipes, :fermentation_location, :string
    add_column :recipes, :boil_length, :integer
    add_column :recipes, :boil_length_unit, :string
    add_column :recipes, :boil_pre_volume, :decimal
    add_column :recipes, :boil_post_volume, :decimal
    add_column :recipes, :boil_volume_unit, :string
    add_column :recipes, :equipment_kettle_volume, :decimal
    add_column :recipes, :equipment_kettle_volume_unit, :string
    add_column :recipes, :equipment_loss, :decimal
    add_column :recipes, :equipment_loss_unit, :string
    add_column :recipes, :equipment_evaporation_rate, :decimal
    add_column :recipes, :equipment_evaporation_rate_unit, :string
    add_column :recipes, :equipment_wort_shrinkage, :decimal
  end
end
