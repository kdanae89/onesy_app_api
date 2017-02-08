class OnesiesController < ApplicationController

  # GET /users/user_id/onesies
  def index
    @onesies = Onesey.where(user_id: params[:user_id])

    render json: @onesies
  end

# GET /users/user_id/onesies/id
  def show
    onesy = Onesy.includes(:images).find(params[:id])

    render json: { onesy: onesy, images: onesy.images }
  end

# POST /users/user_id/onesies
  def create
    onesy = Onesy.new(onesy_params)

    if onesy.save
      render json: { status: 200, onsey: onesy }
    else
      render json: { status: 400, onesy: onesy }
  end
end

# PUT/PATCH /users/user_id/onesies/id
def update
  onesy = Onesy.find(params[:id])
  onesy.update(onesy_params)

  render json: { status: 200, onesy: onesy }
  end

  # Delete /users/user_id/onesies/id
  def destroy
    @onesy.destroy(params[:id])
  end

  private
  # common constraints on Onesy show edit destroy
    def set_onesy
      @onesy = Onesy.where(user_id: params[:user_id], id: params[:id])
    end

    def onesy_params
      params.require(:onesy).permit(:size, :color, :user_id)
    end
  end
