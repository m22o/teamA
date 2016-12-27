class RestaurantController < ApplicationController
  def top
    times = Time.zone.now
    @time =  times.strftime("%H:%M")

  end
  def index
    #  @restaurants = Restaurant.all
    t = Time.zone.now.to_s(:time)
    # t = "03:00"
    @restaurants =Restaurant.where(' ? < end_time',t)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

end
