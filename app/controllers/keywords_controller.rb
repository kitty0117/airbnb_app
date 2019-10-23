class KeywordsController < ApplicationController
  def index
    @keywds=Place.all
  end 
  
  def new
  end
  
  def create
    @keywd= Place.find_by(area: params[:keywd])
    if @keywd
      redirect_to '/keywords'
    else
      render 'new'
    end 
  end 
  
end
