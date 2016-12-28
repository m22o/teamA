class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @rest = Restaurant.find(id=params[:id])
    @comment = Comment.find(restaurant_id=params[:id])
  end
end
