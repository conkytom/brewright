class RecipeFermentablesController < ApplicationController
  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_fermentable = RecipeFermentable.find(params[:id])
    if @recipe_fermentable.destroy
      redirect_to edit_recipe_path(@recipe.id)
    end
  end
end