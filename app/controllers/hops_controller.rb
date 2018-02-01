class HopsController < ApplicationController
  def show
    @hop = Hop.find(params[:id])
  end

  def new
    @hop = Hop.new
  end

  def create
    @hop = Hop.new(hop_params)
    
    if @hop.save
      redirect_to hops_path
    else
      flash.now[:alert] = "Error creating hop. Please try again."
      render :new
    end
  end

  def index
    @hops = Hop.all
    
  end

  def destroy
    @hop = Hop.find(params[:id])

    if @hop.destroy
      flash[:notice] = "#{@hop.name} was deleted."
      redirect_to hops_path
    else
      flash.now[:alert] = "There was an error deleting the post."
      redirect_to hops_path
    end
  end

  def edit
    @hop = Hop.find(params[:id])
  end

  def update
    @hop = Hop.find(params[:id])
    
    @hop.assign_attributes(hop_params)
    
    if @hop.save
      redirect_to hops_path
    else
      flash.now[:alert] = "Error saving hop. Please try again."
      render :edit
    end
  end

  private
  def hop_params
    params.require(:hop).permit(:name, :alpha_acid, :hop_type, :origin, :comment)
  end
end
