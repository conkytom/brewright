class AddRecipeIdToRecipeFermentables < ActiveRecord::Migration[5.1]
  def change
    add_column :recipe_fermentables, :recipe_id, :integer
  end
end
