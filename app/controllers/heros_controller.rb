class HerosController < ApplicationController
    def index
    heros = Hero.all
    render json: heros, each_serializer: HeroIndexSerializer
   end

   def show
    hero = Hero.find(params[:id])
    render json: hero, serializer: HeroSerializer
   end
end
