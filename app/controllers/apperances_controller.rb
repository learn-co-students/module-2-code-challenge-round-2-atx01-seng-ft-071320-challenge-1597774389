class ApperancesController < ApplicationController

    def index
      @apperances = Apperance.all
    end
  
    def new 
        @apperance = Apperance.new
    end

    def create 
        @apperance = Apperance.create(apperance_params)
        if @apperance.valid?
          redirect_to episode_path(@apperance.episode_id)
        else
        render :new
        end
    end

private

    def apperance_params
        params.require(:apperance).permit(:episode_id, :guest_id)
    end 

end