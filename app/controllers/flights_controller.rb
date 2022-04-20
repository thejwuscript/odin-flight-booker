class FlightsController < ApplicationController
  def index
    @departure_options = Flight.all.map { |flight| [flight.departure_airport.name, flight.departure_airport.id] }.uniq
    @arrival_options = Flight.all.map { |flight| [flight.arrival_airport.name, flight.arrival_airport.id] }.uniq
    @dates = Flight.all.map { |flight| flight.time }
    @years = @dates.map { |date| date.strftime("%Y") }.uniq
    @months = @dates.map { |date| date.strftime("%B") }.uniq
    @days = @dates.map { |date| date.strftime("%d") }.uniq

    if params[:commit]
      @matched_flights = Flight.searched_flights(search_params)
      @depart_id = Airport.find(search_params[:departure_airport_id]).id
      @arrival_id = Airport.find(search_params[:arrival_airport_id]).id
      @travellers = search_params[:travellers]
      @day = search_params[:day]
      @month = search_params[:month]
      @year = search_params[:year]
    end
  end

  private

  def search_params
    params.require(:search).permit(:departure_airport_id, :arrival_airport_id, :travellers, :day, :month, :year)
  end
end
