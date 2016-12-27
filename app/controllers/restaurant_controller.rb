class RestaurantController < ApplicationController
  def top
    @message = Time.now
  end
  def index
     @restaurants = Restaurant.all
   end

end
