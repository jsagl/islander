class BookingsController < ApplicationController
  before_action :find_island, only: [:new, :create]
  before_action :find_booking, only: [:show, :destroy]
  skip_before_action :authenticate_user!, only: [:show]

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
    @booking.total_price = ((@booking.end_date - @booking.start_date) / 24 / 3600).ceil * @island.price_per_day
    authorize @booking
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "new"
    end
  end

  def destroy
    authorize @booking
    @booking.destroy
    redirect_to island_path(@booking.island)
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
