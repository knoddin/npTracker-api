class ParksController < ApplicationController
  before_action :set_park, only: [:show]

  # GET /parks
  # GET /parks.json
  def index
    @parks = Park.all

    render json: @parks
  end

  # GET /parks/1
  # GET /parks/1.json
  def show
    render json: @park
  end

  private

    def set_park
      @park = Park.find(params[:id])
    end

    def park_params
      params.require(:park).permit(:name, :state, :url, :latitude, :longitude)
    end
end
