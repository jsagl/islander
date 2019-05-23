class BookingsController < ApplicationController
  before_action :find_island, only: [:new, :create, :destroy]
  before_action :find_booking, only: [:show, :destroy]

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.island = @island
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "new"
    end
  end

  def destroy
    @booking.destroy
    redirect_to island_path(@island)
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
