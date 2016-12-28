class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def top
    times = Time.zone.now
    @time =  times.strftime("%H:%M")
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    redirect_to restaurant_path(@restaurant.id)
  end



  def edit
  end


  def index
    t = Time.zone.now.to_s(:time)
    @restaurants =Restaurant.where(' ? < end_time',t)
  end


  def update
    binding.pry

    @restaurant.name = params[:restaurant][:name]
    @restaurant.url = params[:restaurant][:url]
    @restaurant.start_time = params[:restaurant][:start_time]
    @restaurant.end_time = params[:restaurant][:end_time]
    @restaurant.location = params[:restaurant][:location]
    @restaurant.save

    redirect_to restaurant_path(@restaurant.id)
  end

  def show
    @comment = Comment.new
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
  def restaurant_params
    params.require(:restaurant).permit(:name,:start_time,:end_time,:url,:location)
  end

end
