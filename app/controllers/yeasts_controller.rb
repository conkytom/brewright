class YeastsController < ApplicationController
  def show
    @yeast = Yeast.find(params[:id])
  end

  def new
    @yeast = Yeast.new
  end

  def create
    @yeast = Yeast.new(yeast_params)
    
    if @yeast.save
      redirect_to yeasts_path
    else
      flash.now[:alert] = "Error creating yeast. Please try again."
      redirect_to yeasts_path
    end
  end

  def index
    @yeasts = Yeast.all
    
  end

  def destroy
    @yeast = Yeast.find(params[:id])

    if @yeast.destroy
      flash[:notice] = "#{@yeast.name} was deleted."
      redirect_to yeasts_path
    else
      flash.now[:alert] = "There was an error deleting the yeast."
      redirect_to yeasts_path
    end
  end

  def edit
    @yeast = Yeast.find(params[:id])
  end

  def update
    @yeast = Yeast.find(params[:id])
    
    @yeast.assign_attributes(yeast_params)
    
    if @yeast.save
      redirect_to yeasts_path
    else
      flash.now[:alert] = "Error saving yeast. Please try again."
      redirect_to yeasts_path
    end
  end

  private
  def yeast_params
    params.require(:yeast).permit(:name, :attenuation, :yeast_type, :flocculation, :tolerance, :lab, :product_id, :temp_range, :form, :comment)
  end
end
