require 'rails_helper'

describe 'visiting /station/1' do
  context 'as a user' do
    it 'can see all trains coming to the station' do
      StationsAndLinesService.new.create_lines
      StationsAndLinesService.new.create_stations
      StationsAndLinesService.new.create_line_stations

      train_1 = Train.new(["6", "Station_1", "RD", "2"])
      train_2 = Train.new(["6", "Station_2", "BL", "2"])
      train_7 = Train.new(["6", "Station_2", "BL", "4"])
      train_3 = Train.new(["6", "Station_3", "GR", "2"])
      train_4 = Train.new(["6", "Station_4", "YL", "2"])
      train_8 = Train.new(["6", "Station_4", "YL", "4"])
      train_9 = Train.new(["6", "Station_4", "YL", "6"])
      train_5 = Train.new(["6", "Station_5", "SV", "2"])
      train_6 = Train.new(["6", "Station_6", "OR", "2"])
      train_array = [train_1, train_2, train_3, train_4, train_5, train_6, train_7, train_8, train_9]

      allow_any_instance_of(TrainUpdateService).to receive(:get_trains).and_return(train_array)

      visit '/station/1'

      expect(page).to have_content('Lines: Red, Blue, Orange, Silver')

      expect(page).to have_content('Red Trains: 6 car train to Station_1 in 2 minutes')
      expect(page).to have_content('Blue Trains: 6 car train to Station_2 in 2 minutes, 6 car train to Station_2 in 4 minutes')
      expect(page).to have_content('Green Trains: 6 car train to Station_3 in 2 minutes')
      expect(page).to have_content('Yellow Trains: 6 car train to Station_4 in 2 minutes, 6 car train to Station_4 in 4 minutes, 6 car train to Station_4 in 6 minutes')
      expect(page).to have_content('Silver Trains: 6 car train to Station_5 in 2 minutes')
      expect(page).to have_content('Orange Trains: 6 car train to Station_6 in 2 minutes')
    end

    it 'can see all trains coming to the station even when the station has two station codes' do
      station_1 = Station.create(name: "Metro Center", station_code: "A01", alternate_station_code: "C01")
      line_1 = Line.create(name: "red")
      line_2 = Line.create(name: "blue")
      line_3 = Line.create(name: "orange")
      line_4 = Line.create(name: "silver")
      line_station_1 = station_1.line_stations.create(line: line_1)
      line_station_2 = station_2.line_stations.create(line: line_2)
      line_station_3 = station_2.line_stations.create(line: line_3)
      line_station_4 = station_2.line_stations.create(line: line_4)
      train_1 = Train.new(["6", "Metro Center", "RD", "2"])
      train_2 = Train.new(["6", "Metro Center", "RD", "4"])
      train_3 = Train.new(["6", "Metro Center", "BL", "2"])
      train_4 = Train.new(["6", "Metro Center", "OR", "2"])
      train_5 = Train.new(["6", "Metro Center", "SV", "2"])
      train_6 = Train.new(["6", "Metro Center", "YL", "4"])
      train_7 = Train.new(["6", "Metro Center", "YL", "6"])
      train_8 = Train.new(["6", "Metro Center", "SV", "2"])
      train_9 = Train.new(["6", "Metro Center", "OR", "2"])
    end
  end
end
