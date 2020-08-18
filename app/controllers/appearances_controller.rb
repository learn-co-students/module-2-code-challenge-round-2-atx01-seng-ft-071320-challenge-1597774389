class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
        @guest = Guest.all
        @episode = Episode.all
    end

    def create
        @appearance = Appearance.create(appearance_params)
        @guest = Guest.all
        @episode = Episode.all

        if @appearance.valid?
            @appearance.save
            redirect_to episode_path(@appearance.episode_id)
        else
            @error = @appearance.errors.full_messages
            render 'new'
         end
    end

    private
    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end

end
