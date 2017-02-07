class WelcomeController < ApplicationController
  def index
    render json: { status: 200, message: "Onsey API" }
  end
end
