class FlightsController < ApplicationController
  def index
    @departure_options = Flight.all.map { |flight| [flight.departure_airport.name, flight.departure_airport.id] }.uniq
    @arrival_options = Flight.all.map { |flight| [flight.arrival_airport.name, flight.arrival_airport.id] }.uniq
    @dates = Flight.all.map { |flight| flight.time }
    @years = @dates.map { |date| date.strftime("%Y") }.uniq
    @months = @dates.map { |date| date.strftime("%B") }.uniq
    @days = @dates.map { |date| date.strftime("%d") }.uniq

    if search_params.to_h.any?
      @matched_flights = Flight.searched_flights(search_params)
      @depart_id = search_params[:departure_airport_id]
      @arrival_id = search_params[:arrival_airport_id]
    end

  end

  private

  def search_params
    params.permit(:departure_airport_id, :arrival_airport_id, :travellers, :day, :month, :year)
  end
end
