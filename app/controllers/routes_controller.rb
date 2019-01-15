class RoutesController < ApplicationController

  def index
    @lines = Line.all
  end

end
