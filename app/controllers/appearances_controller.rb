class AppearancesController < ApplicationController
  
  def index

  end

  def show
  end

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.create(appearance_params)
    binding.pry
    if @appearance.save
      binding.pry
      redirect_to episode_path(@appearance.episode_id)
    else
      render :new
    end
  end

  private

  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end

end
