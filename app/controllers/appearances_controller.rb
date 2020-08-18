class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
    end

    def create
      # binding.pry
      @appearance = Appearance.new(appearance_params)
      # binding.pry
      if @appearance.valid?
        @appearance.save
        redirect_to episode_path(Episode.find(appearance_params[:episode_id]))
      else
        render :new
      end
    end

    private
    def appearance_params
      params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end

end