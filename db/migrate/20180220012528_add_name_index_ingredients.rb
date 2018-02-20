class AddNameIndexIngredients < ActiveRecord::Migration[5.1]
  def change
    add_index :fermentables, :name, :unique => true
    add_index :hops, :name, :unique => true
    add_index :yeasts, :name, :unique => true
    add_index :others, :name, :unique => true
    add_index :recipe_fermentables, :name, :unique => true
    add_index :recipe_hops, :name, :unique => true
    add_index :recipe_yeasts, :name, :unique => true
    add_index :recipe_others, :name, :unique => true
  end
end
