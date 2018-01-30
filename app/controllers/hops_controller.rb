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
      redirect_to hops_path, notice: "Hop variety was saved successfully."
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
  end

  def edit
    @hop = Hop.find(params[:id])
  end

  def update
    @hop = Hop.find(params[:id])
    
    @hop.assign_attributes(hop_params)
    
    if @hop.save
      redirect_to hops_path, notice: "Hop variety was updated successfully."
    else
      flash.now[:alert] = "Error saving hop. Please try again."
      render :new
    end
  end

  private
  def hop_params
    params.require(:hop).permit(:name, :alpha_acid, :type, :origin, :comment)
  end
end
