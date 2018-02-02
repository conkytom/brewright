class OthersController < ApplicationController
  def show
    @other = Other.find(params[:id])
  end

  def new
    @other = Other.new
  end

  def create
    @other = Other.new(other_params)
    
    if @other.save
      redirect_to others_path
    else
      flash.now[:alert] = "Error creating ingredient. Please try again."
      redirect_to others_path
    end
  end

  def index
    @others = Other.all
    
  end

  def destroy
    @other = Other.find(params[:id])

    if @other.destroy
      flash[:notice] = "#{@other.name} was deleted."
      redirect_to others_path
    else
      flash.now[:alert] = "There was an error deleting the ingredient."
      redirect_to others_path
    end
  end

  def edit
    @other = Other.find(params[:id])
  end

  def update
    @other = Other.find(params[:id])
    
    @other.assign_attributes(other_params)
    
    if @other.save
      redirect_to others_path
    else
      flash.now[:alert] = "Error saving ingredient. Please try again."
      redirect_to others_path
    end
  end

  private
  def other_params
    params.require(:other).permit(:name, :comment)
  end
end
