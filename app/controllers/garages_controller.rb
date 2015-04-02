class GaragesController < ApplicationController
  before_action :find_garage, only: [:show, :edit, :update, :destroy]

  def index    
  end

  def show
    @garage = Garage.find(params[:id])
    
  end

  def new
    @garage = Garage.new
  end

  def create
    @garage = Garage.new(garage_params)

    if @garage.save
      redirect_to @garage
    else
      render 'new'
    end
  end

  def edit
    
  end

  def update
    if @garage.update(garage_params)
      redirect_to @garage
    else
      render 'edit'
      
    end
  end

  def destroy
    @garage.destroy
    redirect_to root_path
  end


  private

  def find_garage
    @garage = Garage.find(params[:id])
  end

  def garage_params
    params.require(:garage).permit(:title, :description, :address, :date, :time )
    
  end
end
