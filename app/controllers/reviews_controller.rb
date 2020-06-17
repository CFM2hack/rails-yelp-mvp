class ReviewsController < ApplicationController
  def create
      @review = Review.new(review_params)
      @restaurant = Restaurant.find(params[:restaurant_id])
      @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to restaurant_path(@review.restaurant)
  end
end
