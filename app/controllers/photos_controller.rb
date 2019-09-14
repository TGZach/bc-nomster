class PhotosController < ApplicationController

  def create
    @place = Place.find(params[:place_id])
    @place.phots.create(photo_params.merge(user: current_user))
    redirect_to place_path(@place)
  end

  private

  def comment_params
    params.require(:photo).permit(:caption)
  end

end
