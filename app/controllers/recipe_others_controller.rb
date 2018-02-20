class RecipeOthersController < ApplicationController
  def show
    @recipe_other = RecipeOther.find(params[:id])
    @other = Other.find(params[:id])
  end

  def index
    @recipe_others = RecipeOther.all
  end

  def new
    @recipe_others = RecipeOther.all
    @recipe_other = RecipeOther.new
    
    @other = Other.new
  end

  def create
    @recipe_other = RecipeOther.new(recipe_other_params)
    @other = Other.new(other_params)
  end

  def destroy
    @recipe_other = RecipeOther.find(params[:id])

  end

  def edit
    @recipe_other = RecipeOther.find(params[:id])
  end

  def update
    @recipe_other = RecipeOther.find(params[:id])
    
    @recipe_other.assign_attributes(recipe_other_params)
    
  end

  
  def recipe_other_params
    params.require(:other).permit(:name, :comment, :amount, :amount_unit, :location, :recipe_id)
  end
  def other_params
    params.require(:other).permit(:name, :comment)
  end
end
