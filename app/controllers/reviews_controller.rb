class ReviewsController < ApplicationController
  before_action :set_booking
  def new
    @review = Review.new
    @review.booking = @booking
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.booking = @booking
    @island = @booking.island
    num_of_reviews = 0
    @island.bookings.each do |booking|
      num_of_reviews += 1 if !booking.review.nil?
    end
    @island.rating = 0 if @island.rating.nil?
    @island.rating = (@island.rating + @review.stars) / (num_of_reviews + 1)
    authorize @review
    if @review.save && @island.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def review_params
    params.require(:review).permit(:content, :stars)
  end
end
