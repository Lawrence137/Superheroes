class PowersController < ApplicationController
    def index
        powers = Power.all
        render json: powers
    end

    def show
        power = Power.find(params[:id])
        render json: power
    rescue ActiveRecord::RecordNotFound
        render json: { error: "Power not found" }, status: :not_found
      
    end
end
