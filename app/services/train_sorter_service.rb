class TrainSorterService

  def initialize(array)
    @trains = array
  end

  def red_trains
    @trains.map do |train|
      train if train.line == "RD"
    end.compact
  end

  def blue_trains
    @trains.map do |train|
      train if train.line == "BL"
    end.compact
  end

  def yellow_trains
    @trains.map do |train|
      train if train.line == "YL"
    end.compact
  end

  def silver_trains
    @trains.map do |train|
      train if train.line == "SV"
    end.compact
  end

  def green_trains
    @trains.map do |train|
      train if train.line == "GR"
    end.compact
  end

  def orange_trains
    @trains.map do |train|
      train if train.line == "OR"
    end.compact
  end

end
