class ImagesController < ApplicationController

  # GET /users/user_id/onesies/onsey_id/images
    def index
      @images = Image.all

      render json: @images
    end

  # GET /users/user_id/onesies/onesy_id/images/id
    def show
      @image = Image.where(user_id: params[:user_id], id: params[:id], onesy_id: params[:onesy_id], id: params[:id])
      render json: { Image: @image, status: 200 }
    end
end
