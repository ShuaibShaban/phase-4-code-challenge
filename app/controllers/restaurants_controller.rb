class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_method
    def index
        render json: Restaurant.all 
    end

    def show 
        restaurant = find_restaurant
        render json: restaurant, serializer: SingleRestaurantSerializer  
    end

    def destroy
        restaurant = find_restaurant
        restaurant.destroy
        render json: restaurant, status: :no_content
    end

    private

    def find_restaurant
        Restaurant.find(params[:id])
    end 

    def record_not_found_method
        render json: { error: "restaurant not found" }, status: :not_found
    end 
end
