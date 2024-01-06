class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show edit update destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    # Doesn't need instance variables because it is not being passed to a view
    restaurant = Restaurant.new(restaurant_params)
    restaurant.save
    # The 'restaurant_path' part links to the prefix in the routes
    redirect_to restaurant_path(restaurant)
  end

  def edit
  end

  def update
    # Doesn't need instance variables because it is not being passed to a view
    restaurant.update(restaurant_params)
    redirect_to restaurant_path(restaurant)
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path, status: :see_other
  end

  private

  # The STRONG Params
  def restaurant_params
    params.require(:restaurant).permit(:name, :rating, :address)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
