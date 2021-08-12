class Api::V1::UserPizzasController < ApplicationController

    # def show
    #     user_pizza = UserPizza.find(params[:id])
    #     render json: user_pizza, include: [:user, :pizza]
    ##render json: user, include: :pizzas
    # end

    def index
        user_pizzas = UserPizza.all
        render json: user_pizzas
    end
    
    def create
        user_pizza = UserPizza.create(rating: user_pizza_params[:rating], comment: user_pizza_params[:comment], pizza_id: user_pizza_params[:pizza_id], user_id: User.first.id)
        render json: user_pizza 
    end

    def edit
        UserPizza.find(params[:id])
    end

    def update
        user_pizza = UserPizza.find_by(id: params[:id])
        user_pizza.update(rating: user_pizza_params[:rating], comment: user_pizza_params[:comment])
        render json: user_pizza
     end

    def destroy
        UserPizza.destroy(params[:id])
        render json: user_pizza
    end

    private

    def user_pizza_params
        params.require(:user_pizza).permit(:rating, :comment, :pizza_id, :user_id) 
    end

end
