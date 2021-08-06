class Api::V1::RestaurantsController < ApplicationController

    def show
        restaurant = Restaurant.find(params[:id])
        render json: restaurant
    end

end 