module Api
  module V1
    class UsersController < ApplicationController
      protect_from_forgery with: :null_session

      def create
        user = User.new(user_params)

        if user.save
          render json: UserSerializer.new(user).as_json
        else
          render json: { error: user.errors.messages }, status: 422
        end
      end

      private

      def user_params
        params.require(:user).permit(:name, :password_digest)
      end

    end
  end
end
