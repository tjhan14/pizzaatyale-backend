class Api::V1::PizzasController < ApplicationController

    def show
        pizza = Pizza.find(params[:id])
        render json: pizza
    end

end 