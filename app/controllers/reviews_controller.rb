class ReviewsController < ApplicationController
  before_action :authenticate_user!	
  def new
    @review=Review.new()
  end
  
  
  def show
    @review=Review.find(params[:id])
  end 
  
  def create
    @review=Review.new(review_params)
    if @review.save
      flash[:success]="レビュー登録完了"
      redirect_to @review
    else
      render 'new'
    end 
  end 
  
private
  def review_params
    params.require(:review).permit(:date,:content,:place_id).merge({user_id: current_user.id})
  end 
   # review_params[:user_id]=@current_user
    
    
end
