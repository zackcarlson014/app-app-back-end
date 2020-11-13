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

    def edit
        appetizer = Appetizer.find(params[:id])
        render json: appetizer, include: [:favorites], except: [:created_at, :updated_at] 
    end

    def update
        appetizer = Appetizer.find(params[:id])
        appetizer.update!(appetizer_params)
        render json: appetizer, include: [:favorites], except: [:created_at, :updated_at] 
    end

    def destroy
        appetizer = Appetizer.find(params[:id])
        appetizer.destroy()
        render json: appetizer
    end

    private

    def appetizer_params
        params.require(:appetizer).permit(:title, :image_src, :rating)
    end
end
