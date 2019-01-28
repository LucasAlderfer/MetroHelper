class LinesController < ApplicationController

  def Red
    @red_stations = Line.find_by_name('red').stations
  end

  def Blue
    blue_line = Line.find_by_name('blue')
    binding.pry
    @blue_stations = blue_line.stations
  end

  def Green
    @green_stations = Line.find_by_name('green').stations
  end

  def Yellow
    @yellow_stations = Line.find_by_name('yellow').stations
  end

  def Silver
    @silver_stations = Line.find_by_name('silver').stations
  end

  def Orange
    @orange_stations = Line.find_by_name('orange').stations
  end

end
