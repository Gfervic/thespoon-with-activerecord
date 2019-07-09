class RestaurantsController < ApplicationController
	  before_action :find_restaurant, only: [:show, :edit, :update, :destroy]


	def index
		@restaurants = Restaurant.all
	end

	def show
		#getting is through paramns    @restaurant = Restaurant.find(params[:id])
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.create(name: "hwjwjhqywygw", )
		redirect_to restaurant_path(@restaurant)
	end

	def edit    @restaurant = Restaurant.find(params[:id])
	end

	def update    @restaurant = Restaurant.find(params[:id])
		@restaurant.update(restaurant_params)
		redirect_to restaurant_path(@restaurant)
		#restaurant.id is what you actually pass, but rails allows you to just pass restaurant object

		#something else
	end

	 def destroy
    @restaurant.destroy

    redirect_to  restaurants_new_path
  end

  private

   def find_restaurant
     @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
  	params.require(:restaurant).permit(:name, :address)
  end
end