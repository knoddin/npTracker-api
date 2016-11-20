class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.all

    render json: @reviews
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
    render json: @review
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.new(review_params)

    if @review.save
      render json: @review, status: :created, location: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    @review = Review.find(params[:id])

    if @review.update(review_params)
      head :no_content
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy

    head :no_content
  end

  private

    def set_review
      @review = Review.find(params[:id])
    end

    def review_params
      params.require(:review).permit(:description, :rating, :park_id)
    end
end
