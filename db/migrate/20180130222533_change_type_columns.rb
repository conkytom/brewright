class ChangeTypeColumns < ActiveRecord::Migration[5.1]
  def change
    rename_column :recipe_hops, :type, :hop_type
    rename_column :fermentables, :type, :ferm_type
    rename_column :recipe_fermentables, :type, :ferm_type
    rename_column :yeasts, :type, :yeast_type
    rename_column :recipe_yeasts, :type, :yeast_type
    rename_column :recipes, :type, :recipe_type
  end
end
