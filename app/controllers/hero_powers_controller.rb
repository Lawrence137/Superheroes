class HeroPowersController < ApplicationController
    def create
        hero_power = HeroPower.new(hero_power_params)
        if hero_power.save
            render json: hero_power.hero
        else
            render json: { errors: "validation errors" }, status: :unprocessable_entity
        end
    end

    private
    def hero_power_params
        params.permit(:strength, :power_id, :hero_id)
    end
end
