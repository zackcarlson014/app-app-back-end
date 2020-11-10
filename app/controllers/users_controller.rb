class UsersController < ApplicationController

    def create
        user = User.find_or_create_by(user_params)
    end

    def destroy
        user = User.find(params[:id])
        user.destroy

        render json: user
    end

    private

    def user_params
        params.require(:user).permit(:name, :password)
    end
end
