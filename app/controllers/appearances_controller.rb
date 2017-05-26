class AppearancesController < ApplicationController
  def create
    appearance = Appearance.new(appearance_params)
    if appearance.save
      redirect_to guest_path(params[:guest_id])
    else
      redirect_to root_path
    end
  end

  private

  def appearance_params
    params.permit(:guest_id, :episode_id, :rating)
  end


end
