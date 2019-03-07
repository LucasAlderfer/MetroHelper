class LinesController < ApplicationController

  def red
    @red_stations = Line.find_by_name('red').stations
  end

  def blue
    @blue_stations = Line.find_by_name('blue').stations
  end

  def green
    @green_stations = Line.find_by_name('green').stations
  end

  def yellow
    @yellow_stations = Line.find_by_name('yellow').stations
  end

  def silver
    @silver_stations = Line.find_by_name('silver').stations
  end

  def orange
    @orange_stations = Line.find_by_name('orange').stations
  end

end
