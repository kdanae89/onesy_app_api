class ImagesController < ApplicationController

  # GET /images
    def index
      # images = Image.all

      render json: { status: 200, images: images }
    end

    # def create
    #   onesy = Onesy.find_by(id: image_params[:onesy_id])
    #   image = Image.new(image_params)
    #   image.onesy_id = onesy.id if onesy
    #
    #   if image.save
    #     render json: { status: 200, image: image }
    #   else
    #     render json: { status: 422, image: image.errors }
    #   end
    # end

  # GET /images/id
    # def show
    #   image = Image.find(params[:id])
    #
    #   render json: { Image: image, status: 200 }
    # end

    # def update
    #   image = Image.find(params[:id])
    #
    #   image.update(image_params)
    #
    #   render json: { status: 200, image: image }
    # end

    # def destroy
    #   image = Image.destroy(params[:id])
    #
    #   render json: { status: 204 }
    # end

    private

    def image_params
      params.required(:image).permit(:img, :onesy_id)
    end

end
