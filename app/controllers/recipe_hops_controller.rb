class RecipeHopsController < ApplicationController
  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_hop = RecipeHop.find(params[:id])
    if @recipe_hop.destroy
      redirect_to edit_recipe_path(@recipe.id)
    end
  end
end
