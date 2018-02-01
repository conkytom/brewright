class CreateRecipeYeasts < ActiveRecord::Migration[5.1]
  def change
    create_table :recipe_yeasts do |t|
      t.string :name
      t.text :comment
      t.decimal :amount
      t.string :amount_unit
      t.string :location
      t.string :type
      t.string :lab
      t.string :product_id
      t.string :flocculation
      t.integer :tolerance
      t.string :temp_range
      t.string :attenuation_range
      t.integer :attenuation
      t.string :form

      t.timestamps
    end
  end
end
