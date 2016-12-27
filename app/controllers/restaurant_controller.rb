class RestaurantController < ApplicationController
  def top
    times = Time.zone.now
    @time =  times.strftime("%H:%M")
  end

  def new
  end

  def create
    @restaurant = Restaurant.new
    @restaurant.name = params[:name]
    @restaurant.url = params[:url]
    @restaurant.start_time=params[:start_time]
    @restaurant.end_time=params[:end_time]
    @restaurant.location = params[:location]
    @restaurant.save
    redirect_to restaurant_path(@restaurant.id)
  end
  def edit
    @restaurant = Restaurant.find(params[:id])
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
