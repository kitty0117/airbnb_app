class PlaceController < ApplicationController
    
  def index
    @places=Place.all
  end 
end
