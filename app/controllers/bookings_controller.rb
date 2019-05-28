class BookingsController < ApplicationController
  before_action :find_island, only: [:new, :create]
  before_action :find_booking, only: [:show, :destroy]
  skip_before_action :authenticate_user!, only: [:show]

  def dashboard
    @my_bookings = Booking.where(user_id: current_user[:id])
    @my_islands = Island.where(user_id: current_user[:id])
    authorize :booking, :dashboard?
  end

  def show
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.island = @island
    @booking.user = current_user
    @booking.total_price = (@booking.end_date - @booking.start_date).to_i * @island.price_per_day if (!@booking.end_date.nil? && !@booking.start_date.nil?)
    authorize @booking
    if @booking.save
      redirect_to dashboard_path
    else
      render "islands/show"
    end
  end

  def destroy
    authorize @booking
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def find_island
    @island = Island.find(params[:island_id])
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
