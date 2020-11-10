class UsersController < ApplicationController

    def create
        user = User.create(user_params)
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
