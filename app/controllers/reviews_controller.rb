class ReviewsController < ApplicationController
before_action :set_restaurant, only: [:new, :create]

  def new
    @review = Review.new
    redirect_to restaurant_path(@restaurant)
  end

  def create
    @review = Review.new(params_review)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def params_review
    params.require(:review).permit(:rating, :content)

  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
