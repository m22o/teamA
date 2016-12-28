class RestaurantController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
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
  end
  def index
    t = Time.zone.now.to_s(:time)
    @restaurants =Restaurant.where(' ? < end_time',t)
  end


  def update
    @restaurant.name = params[:name]
    @restaurant.url = params[:url]
    @restaurant.start_time = params[:start_time]
    @restaurant.end_time = params[:end_time]
    @restaurant.location = params[:location]
    @restaurant.save
    redirect_to restaurant_path(@restaurant.id)
  end

  def show
  end

  def set_restaurant
        @restaurant = Restaurant.find(params[:id])
      end

def destroy
  @restaurant.destroy
  redirect_to restaurants_path
end


end
