class ReservesController < ApplicationController
  before_action :authenticate_user!	
  def new
    @reserve=Reserve.new()
    @places=Place.all
  end
  
  def show
    @reserve=Reserve.find(params[:id])
  end 
  
  def create
    @reserve=Reserve.new(reserve_params.merge(user_id: current_user.id))
     if @reserve.save 
       flash[:success]="予約完了"
       redirect_to @reserve
     else
       render 'new'
     end 
  end 
  
  private
  
  def reserve_params
    params.require(:reserve).permit(:date,:number,:place_id)
  end 

end
