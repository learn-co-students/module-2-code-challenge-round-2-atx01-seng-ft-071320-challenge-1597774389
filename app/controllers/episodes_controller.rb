class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
    @average_rating = @episode.appearances.map do |a|
      a.rating
    end
  end

end
