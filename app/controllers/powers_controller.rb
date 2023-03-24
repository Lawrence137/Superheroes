class PowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def index
        powers = Power.all
        render json: powers
    end

    def show
        power = Power.find(params[:id])
        render json: power
    end

    def update
        power = Power.find(params[:id])
        if power.update(power_params)
            render json: power
        else
            render json: { errors: "validation errors" }, status: :unprocessable_entity
        end
    end

    private 

    def power_params
       params.permit(:description)
    end

    def record_not_found
      render json: { error: "Power not found" }, status: :not_found
    end
end
