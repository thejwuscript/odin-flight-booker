class BookingsController < ApplicationController
  def show
  end

  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    @booking.flight = @flight
    # build_booking?
    num = params[:travellers].to_i
    num.times { @booking.travellers.build }
  end

  def create
  end
end
