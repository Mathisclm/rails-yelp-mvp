class RestaurantsController < ApplicationController
  def index
    @restaurant = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
  @restaurant = Restaurant.new(restaurant_params)
  @restaurant.save!
  redirect_to restaurant_path(@restaurant.id)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end


private

def restaurant_params
  params.require(:restaurant).permit(:name, :address, :category, :phone_number)
end

