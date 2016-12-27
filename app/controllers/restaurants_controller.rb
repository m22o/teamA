class RestaurantsController < ApplicationController
  def index
	  @time = Time.zone.now
	  @restaurants = Restaurant.all
  end
  def restaurantsSearch
	  @restaurants = Restaurant.all
  end
end
