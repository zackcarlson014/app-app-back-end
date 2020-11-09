class FavoritesController < ApplicationController
    
    def create
        favorite = Favorite.create(favorite_params)
    end

    private

    def favorite_params 
        params.require(:favorite).permit(:user_id, :appetizer_id)
    end
end
