class ReviewsController < ApplicationController
  def index
    @restaurant = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end
  
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
  end
  
  def show
    @restaurant = Restaurant.find
  end  

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end  
end
