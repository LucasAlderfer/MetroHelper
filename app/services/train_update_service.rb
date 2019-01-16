class TrainUpdateService

  def initialize(station_code)
    @all_trains = []
    @station = station_code
  end

  def get_trains
    trains = get_times(@station)['Trains']
    trains.each do |train|
      size = train['Car']
      destination = train['DestinationName']
      line = train['Line']
      time = train['Min']
      train_array = [size, destination, line, time]
      new_train = Train.new(train_array)
      @all_trains << new_train
    end
    @all_trains
  end

  private

  def conn
    Faraday.new(url: "https://api.wmata.com")
  end

  def request(url)
    JSON.parse(conn.get(url).body)
  end

  def get_times(station)
    request("/StationPrediction.svc/json/GetPrediction/#{station}?api_key=#{ENV['WMATA_API_KEY']}")
  end

end
