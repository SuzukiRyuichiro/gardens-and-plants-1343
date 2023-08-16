class TaggingsController < ApplicationController
  def new
    @tagging = Tagging.new
    @plant = Plant.find(params[:plant_id])
  end

  def create
    # tag instance
    @tag = Tag.find(params[:tagging][:tag])
    # plant instance
    @plant = Plant.find(params[:plant_id])
    @tagging = Tagging.new(plant: @plant, tag: @tag)

    # save a new Tagging
    @tagging.save

    redirect_to garden_path(@plant.garden), status: :see_other
  end
end
