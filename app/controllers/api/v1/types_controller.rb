class Api::V1::TypesController < ApplicationController

    def show
        type = Type.find(params[:id])
        render json: type
    end

end
