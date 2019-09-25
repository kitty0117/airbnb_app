class ReservesController < ApplicationController
  def new
    @reserve=Reserve.new()
  end
end
