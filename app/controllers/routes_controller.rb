class RoutesController < ApplicationController

  def index
    # red = Line.where(name: 'red').first
    # blue = Line.where(name: 'blue').first
    # yellow = Line.where(name: 'yellow').first
    # green = Line.where(name: 'green').first
    # silver = Line.where(name: 'silver').first
    # orange = Line.where(name: 'orange').first
    # @lines = [red, blue, yellow, green, silver, orange]
    @lines = Line.all
  end

end
