class ParksController < ProtectedController
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

  def my_parks
    @parks = Park.where("user_id=#{current_user.id}").reverse
    render json: @parks
  end

  # POST /parks
  # POST /parks.json
  def create
    @park = current_user.parks.build(park_params)

    if @park.save
      render json: @park, status: :created, location: @park
    else
      render json: @park.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /parks/1
  # PATCH/PUT /parks/1.json
  def update

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
      @park = current_user.parks.find(params[:id])
    end

    def park_params
      params.require(:park).permit(:name, :location, :description, :user_id)
    end
end
