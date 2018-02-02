class FermentablesController < ApplicationController
  def show
    @fermentable = Fermentable.find(params[:id])
  end

  def new
    @fermentable = Fermentable.new
  end

  def create
    @fermentable = Fermentable.new(fermentable_params)
    
    if @fermentable.save
      redirect_to fermentables_path
    else
      flash.now[:alert] = "Error creating fermentable. Please try again."
      redirect_to fermentables_path
    end
  end

  def index
    @fermentables = Fermentable.all
    
  end

  def destroy
    @fermentable = Fermentable.find(params[:id])

    if @fermentable.destroy
      flash[:notice] = "#{@fermentable.name} was deleted."
      redirect_to fermentables_path
    else
      flash.now[:alert] = "There was an error deleting the fermentable."
      redirect_to fermentables_path
    end
  end

  def edit
    @fermentable = Fermentable.find(params[:id])
  end

  def update
    @fermentable = Fermentable.find(params[:id])
    
    @fermentable.assign_attributes(fermentable_params)
    
    if @fermentable.save
      redirect_to fermentables_path
    else
      flash.now[:alert] = "Error saving fermentable. Please try again."
      redirect_to fermentables_path
    end
  end

  private
  def fermentable_params
    params.require(:fermentable).permit(:name, :color, :color_unit, :extract, :ferm_type, :origin, :maltster, :usage_rate, :comment)
  end
end