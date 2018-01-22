class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :style
      t.decimal :size
      t.string :size_unit
      t.string :type
      t.decimal :trub_loss
      t.string :trub_loss_unit
      t.decimal :original_gravity
      t.decimal :final_gravity
      t.string :gravity_unit
      t.decimal :abv
      t.decimal :abw
      t.integer :ibu
      t.integer :color
      t.string :color_unit
      t.decimal :bu_gu_ratio
      t.string :bu_gu_description

      t.timestamps
    end
  end
end
