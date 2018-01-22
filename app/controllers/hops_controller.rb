class HopsController < ApplicationController
  def show
    @hop = Hop.find(params[:id])
  end

  def new
    @hop = Hop.new
  end

  def create
    @hop = Hop.new(hop_params)
  end

  def index
    @hop = Hop.all
  end

  def destroy
    @hop = Hop.find(params[:id])
  end

  def edit
    @hop = Hop.find(params[:id])
  end

  def update
    @hop = Hop.find(params[:id])
  end
end
