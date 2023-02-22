class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(review_params)
    redirect_to restaurants_path
  end

  # private
  def review_params
    params.require(:review).permit(:content)
  end
end
