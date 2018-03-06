class RemoveNameIndexIngredients < ActiveRecord::Migration[5.1]
  def change
    remove_index :fermentables, :name
    remove_index :hops, :name
    remove_index :yeasts, :name
    remove_index :others, :name
    remove_index :recipe_fermentables, :name
    remove_index :recipe_hops, :name
    remove_index :recipe_yeasts, :name
    remove_index :recipe_others, :name
  end
end
