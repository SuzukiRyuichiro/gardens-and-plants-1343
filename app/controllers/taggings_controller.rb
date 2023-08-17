class TaggingsController < ApplicationController
  def new
    @tagging = Tagging.new
    @plant = Plant.find(params[:plant_id])
  end

  def create
    # { "tagging"=>{"tag_id"=>"2"}, "commit"=>"Create Tagging", "plant_id"=>"1"}
    # create Tagging instance based on the attribute in params[:tagging]
    @tagging = Tagging.new(tagging_params)
    # find the plant instance with the ID
    @plant = Plant.find(params[:plant_id])
    # assign the plant to that tagging
    @tagging.plant = @plant
    # save
    if @tagging.save
      # redirect the user to the garden show
      redirect_to garden_path(@plant.garden)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def tagging_params
    params.require(:tagging).permit(:tag_id)
  end
end
