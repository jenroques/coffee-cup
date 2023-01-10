module Api
  module V1
    class ShopsController < ApplicationController
      protect_from_forgery with: :null_session

      def index
        shops = Shop.all

        render json: ShopSerializer.new(shops, options).as_json
      end

      def show
        shop = Shop.find_by(slug: params[:slug])

        render json: ShopSerializer.new(shop, options).as_json
      end

      def create
        shop = Shop.new(shop_params)

        if shop.save
          render json: ShopSerializer.new(shop).as_json
        else
          render json: { error: shop.errors.messages }, status: 422
        end
      end

      def update
        shop = Shop.find_by(slug: params[:slug])

        if shop.update(shop_params)
          render json: ShopSerializer.new(shop, update).as_json
        else
          render json: { error: shop.errors.messages }, status: 422
        end
      end

      def destroy
        shop = Shop.find_by(slug: params[:slug])

        if shop.destroy
          head :no_content
        else
          render json: { error: shop.errors.messages }, status: 422
        end
      end

      private

      def shop
        @shop ||= Shop.includes(reviews: :user).find_by(slug: params[:slug])
      end

      def shop_params
        params.require(:shop).permit(:name, :image_url)
      end

      def options
        @options ||= { include: %i[reviews]}
      end

    end
  end
end
