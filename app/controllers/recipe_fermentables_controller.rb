class RecipeFermentablesController < ApplicationController
  def show
    @recipe_fermentable = RecipeFermentable.find(params[:id])
    
  end

  def index
    @recipe_fermentables = RecipeFermentable.all
  end

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_fermentable = RecipeFermentable.new(recipe_fermentable_params)

    
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_fermentable = @recipe.recipe_fermentables.build(recipe_fermentable_params)
    

    if @recipe_fermentable.save
      redirect_to edit_recipe_path(@recipe.id)
    end
    
  end

  def destroy
    @recipe_fermentable = RecipeFermentable.find(params[:id])

  end

  def edit
    @recipe_fermentable = RecipeFermentable.find(params[:id])
  end

  def update
    @recipe_fermentable = RecipeFermentable.find(params[:id])
    
    @recipe_fermentable.assign_attributes(recipe_fermentable_params)
    
  end

  def create_custom
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_fermentable = @recipe.recipe_fermentable.build(recipe_fermentable_params)
    @recipe_fermentable.recipe_id = @recipe.id
    
    if @recipe_fermentable.save
      redirect_to edit_recipe_path(@recipe.id)
    end

  end

  def recipe_fermentable_params
    params.require(:recipe_fermentable).permit(:name, :color, :color_unit, :extract, :ferm_type, :origin, :maltster, :usage_rate, :comment, :amount, :amount_unit, :percent_malt_bill, :location, :recipe_id)
  end
  
end