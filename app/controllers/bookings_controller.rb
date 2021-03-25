class BookingsController < ApplicationController

  def new
    @box = Box.find(params[:box_id])
    @booking = Booking.new
  end

  def create
    @box = Box.find(params[:box_id])
    @booking = Booking.new(booking_params)
    @booking.box = @box
    if @booking.save
      redirect_to booking_path(@box)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_at, :end_at, :box_id)
  end
end
