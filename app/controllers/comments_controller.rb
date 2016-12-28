class CommentsController < ApplicationController
  def new
  end
  def create
    @restaurant = Restaurant.find(params[:id])
    @restaurant.comments.create(comment:params[:comment])
  end
end
