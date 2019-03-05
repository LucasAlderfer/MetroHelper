class StationController < ApplicationController

  def show
    current_station = Station.find(params[:id].to_i)
    @station = current_station
    lines = current_station.lines
    @names = []
    lines.each do |line|
      @names << line.name.capitalize
    end
    find_trains = TrainUpdateService.new(current_station.station_code).get_trains
    @trains = TrainSorterService.new(find_trains)
  end
end
