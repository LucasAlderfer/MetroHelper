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
    unless current_station.alternate_station_code.nil?
      alternate_trains = TrainUpdateService.new(current_station.alternate_station_code).get_trains
      find_trains << alternate_trains
    end
    @trains = TrainSorterService.new(find_trains.flatten)
  end
end
