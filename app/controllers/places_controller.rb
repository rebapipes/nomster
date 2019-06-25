class PlacesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index
    @places = Place.order(:id).paginate(:page => params[:page], :per_page => 2)
  end
  def new
    @place = Place.new
  end
   def create
    current_user.places.create(place_params) 
    redirect_to root_path
  end
  def show
    @place = Place.find(params[:id])
  end
  def edit
    @place = Place.find(params[:id])
  end
  def update
    @place = Place.find(params[:id])
    @place.update_attributes(place_params)
    redirect_to root_path
  end
  def destroy
    @place = Place.find(params[:id])
  end
  private
  def place_params
    params.require(:place).permit(:name, :description, :address)
    @place.destroy
    redirect_to root_path
  end
end
