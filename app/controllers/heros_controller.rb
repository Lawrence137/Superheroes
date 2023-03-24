class HerosController < ApplicationController
    def index
    heros = Hero.all
    render json: heros, each_serializer: HeroIndexSerializer
   end

   def show
      hero = Hero.find(params[:id])
      render json: hero
   rescue ActiveRecord::RecordNotFound
      render json: { error: "Hero not found" }, status: :not_found
  end
  
end
