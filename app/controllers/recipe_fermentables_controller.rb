class RecipeFermentablesController < ApplicationController
  def show
    @recipe_fermentable = RecipeFermentable.find(params[:id])
    
  end

  def index
    @recipe_fermentables = RecipeFermentable.all
  end

  def new
  
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_fermentable = @recipe.recipe_fermentables.build(recipe_fermentable_params)
    

    if @recipe_fermentable.save
      redirect_to edit_recipe_path(@recipe.id)
    end
    
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_fermentable = RecipeFermentable.find(params[:id])
    if @recipe_fermentable.destroy
      redirect_to edit_recipe_path(@recipe.id)
    end

  end

  def edit
    
    @recipe_fermentable = RecipeFermentable.find(params[:id])
    @recipe_fermentable.assign_attributes(recipe_fermentable_params)
    puts @recipe_fermentable.name
    puts recipe_id
    
  end

  def update
    puts @recipe_fermentable.name
    puts recipe_id
    @recipe_fermentable = RecipeFermentable.find(params[:id])
    
    @recipe_fermentable.assign_attributes(recipe_fermentable_params)
    @recipe_fermentable.save!
    
    if @recipe_fermentable.save
      redirect_to edit_recipe_path(recipe_id)
    end
    
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
    params.require(:recipe, :recipe_fermentable).permit(:name, :color, :color_unit, :extract, :ferm_type, :origin, :maltster, :usage_rate, :comment, :amount, :amount_unit, :percent_malt_bill, :location, :recipe_id)
  end
  
end