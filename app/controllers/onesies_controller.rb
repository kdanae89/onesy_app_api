class OnesiesController < ApplicationController

  # GET /users/user_id/onesies
  def index
    @onesies = Onesey.where(user_id: params[:user_id])

    render json: @onesies
  end

# GET /users/user_id/onesies/id
  def show
    @onesy = Onesy.where(user_id: params[:user_id], id: params[:id])
    onesies_images = @onesy.images

    render json: { onesy: @onesy, images: onesies_images }
  end

# POST /users/user_id/onesies
  def create
    @onesy = Onesy.new(onesy_params)
    @onesy.user_id = params[:user_id]

    if @onesy.save
      render json: { @onesy, status: 200 }
    else
      render json: { @onesy.errors, status: 422 }
  end
end

# PUT/PATCH /users/user_id/onesies/id
def update

  if @onesy.update(onsey_params)
    render json: { @onesy, status: 200 }
  else
    render json: { @onesy.errors, status: 422 }
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
