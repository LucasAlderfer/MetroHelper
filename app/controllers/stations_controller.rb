class StationsController < ApplicationController

  def show
    current_station = Station.find(station_params)
    @station = current_station
    @lines = current_station.lines
    @trains = TrainUpdateService.new(current_station.station_code).get_trains
  end

  private
  def station_params
    params.require(:station).permit(:id)
  end

end
