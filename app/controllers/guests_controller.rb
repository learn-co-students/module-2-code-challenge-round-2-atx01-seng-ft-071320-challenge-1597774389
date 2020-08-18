class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
  end
  
end
