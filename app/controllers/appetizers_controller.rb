class AppetizersController < ApplicationController
    def index
        appetizers = Appetizer.all 
        render json: appetizers, include: [:favorites]
    end

    def create
        appetizer = Appetizer.create(appetizer_params)
        render json: appetizer
    end

    private

    def appetizer_params
        params.require(:appetizer).permit(:title, :image_src, :rating)
    end
end
