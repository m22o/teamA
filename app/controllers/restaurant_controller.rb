class RestaurantController < ApplicationController
  def top
  times = Time.zone.now
  @time =  times.strftime("%H:%M")

  end
  def index
     @restaurants = Restaurant.all
   end

end
