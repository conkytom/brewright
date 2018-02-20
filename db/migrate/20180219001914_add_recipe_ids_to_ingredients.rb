class AddRecipeIdsToIngredients < ActiveRecord::Migration[5.1]
  def change
    add_column :recipe_yeasts, :recipe_id, :integer
    add_column :recipe_others, :recipe_id, :integer
    add_column :recipe_hops, :recipe_id, :integer
  end
end
