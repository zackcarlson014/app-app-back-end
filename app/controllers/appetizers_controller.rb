class AppetizersController < ApplicationController
    def index
        appetizers = Appetizer.all
        render json: appetizers, include: [:favorites], except: [:created_at, :updated_at]
    end

    def show 
        appetizer = Appetizer.find(params[:id])
        render json: appetizer, include: [:favorites], except: [:created_at, :updated_at]
        
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
