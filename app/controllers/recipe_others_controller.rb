class RecipeOthersController < ApplicationController
  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_other = RecipeOther.find(params[:id])
    if @recipe_other.destroy
      redirect_to edit_recipe_path(@recipe.id)
    end
  end
end
