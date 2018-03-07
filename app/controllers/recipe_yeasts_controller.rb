class RecipeYeastsController < ApplicationController
  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_yeast = RecipeYeast.find(params[:id])
    if @recipe_yeast.destroy
      redirect_to edit_recipe_path(@recipe.id)
    end
  end
end
