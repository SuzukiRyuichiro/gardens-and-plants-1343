class PlantsController < ApplicationController
  def new
    @plant = Plant.new
    @garden = Garden.find(params[:garden_id])
  end

  def create
    # permit the parameters
    # make an instance of plant with the params
    @plant = Plant.new(plant_params)
    # assign which garden this plant belongs to
    # find the garden from the id in the URL
    @garden = Garden.find(params[:garden_id])
    @plant.garden = @garden
    # save
    @plant.save

    # redirect user to garden show
    redirect_to garden_path(@garden)
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end
end
