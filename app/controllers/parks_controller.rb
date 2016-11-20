class ParksController < ApplicationController
  before_action :set_park, only: [:show, :update, :destroy]

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

  # POST /parks
  # POST /parks.json
  def create
    @park = Park.new(park_params)

    if @park.save
      render json: @park, status: :created, location: @park
    else
      render json: @park.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /parks/1
  # PATCH/PUT /parks/1.json
  def update
    @park = Park.find(params[:id])

    if @park.update(park_params)
      head :no_content
    else
      render json: @park.errors, status: :unprocessable_entity
    end
  end

  # DELETE /parks/1
  # DELETE /parks/1.json
  def destroy
    @park.destroy

    head :no_content
  end

  private

    def set_park
      @park = Park.find(params[:id])
    end

    def park_params
      params.require(:park).permit(:name, :state, :url, :latitude, :longitude)
    end
end
