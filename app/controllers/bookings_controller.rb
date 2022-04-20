class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    # build_booking?
    num = params[:travellers].to_i
    num.times { @booking.travellers.build }
  end

  def create
    @booking = Booking.create(booking_params)
    redirect_to @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, travellers_attributes: [:name, :email])
  end
end
