class RecipesController < ApplicationController
  def new
    @recipe = Recipe.create
    if @recipe.save
      redirect_to edit_recipe_path(Recipe.maximum('id'))
    end
  end

  def index
    @recipes = Recipe.all
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    if @recipe.destroy
      redirect_to recipes_path
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @recipe_fermentables = RecipeFermentable.where(recipe_id: @recipe.id) 
    @recipe_hops = RecipeHop.where(recipe_id: @recipe.id) 
    @recipe_yeasts = RecipeFermentable.where(recipe_id: @recipe.id)
    @recipe_others = RecipeFermentable.where(recipe_id: @recipe.id)
    @fermentables = Fermentable.all
    @recipe.save!
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe_fermentables = RecipeFermentable.where(recipe_id: @recipe.id) 
    @recipe.assign_attributes(recipe_params)
    @recipe.save!
    if @recipe.save
      redirect_to recipes_path
    end
  end

  def add_copy_2
    @recipe = Recipe.find(params[:recipe_id])
    @fermentable = Fermentable.find(params[:fermentable_id])
    recipe_fermentable = RecipeFermentable.create(@fermentable.attributes.except("id", "created_at", "updated_at"))
    recipe_fermentable.recipe = @recipe
    puts recipe_fermentable.attributes
    puts recipe_fermentable.save
    puts recipe_fermentable.attributes
    if recipe_fermentable.save
      redirect_to edit_recipe_path(@recipe.id)
    end

  end
  
  def recipe_params
    params.require(:recipe).permit(
      :name, 
      :style, 
      :size,
      :size_unit,
      :recipe_type,
      :trub_loss,
      :trub_loss_unit,
      :original_gravity,
      :final_gravity,
      :gravity_unit,
      :abv,
      :abw,
      :ibu,
      :color,
      :color_unit,
      :bu_gu_ratio,
      :bu_gu_description,
      :grain_bill,
      :mash_length,
      :mash_target_temp,
      :mash_strike_temp,
      :mash_strike_volume,
      :mash_sparge_volume,
      :mash_efficiency,
      :mash_thickness,
      :mash_grain_absorption,
      :grain_temp,
      :fermentation_primary_time,
      :fermentation_primary_time_unit,
      :fermentation_primary_temp,
      :fermentation_secondary,
      :fermentation_secondary_time,
      :fermentation_secondary_time_unit,
      :fermentation_secondary_temp,
      :fermentation_volume,
      :fermentation_volume_unit,
      :fermentation_location,
      :boil_length,
      :boil_length_unit,
      :boil_pre_volume,
      :boil_post_volume,
      :boil_volume_unit,
      :equipment_kettle_volume,
      :equipment_kettle_volume_unit,
      :equipment_loss,
      :equipment_loss_unit,
      :equipment_evaporation_rate,
      :equipment_evaporation_rate_unit,
      :equipment_wort_shrinkage,
      :comment,
      recipe_fermentables_attributes: RecipeFermentable.attribute_names.map(&:to_sym).push(:_destroy),
      recipe_hops_attributes:         RecipeHop.attribute_names.map(&:to_sym).push(:_destroy),
      recipe_yeasts_attributes:       RecipeYeast.attribute_names.map(&:to_sym).push(:_destroy),
      recipe_others_attributes:       RecipeOther.attribute_names.map(&:to_sym).push(:_destroy)
      )
  end
end
