require 'rails_helper'

describe StationsAndLinesService do
  it 'can create all stations, lines, and line_stations' do
    lines = StationsAndLinesService.new.create_lines

    expect(lines.count).to eq(6)

    stations = StationsAndLinesService.new.create_stations

    expect(stations.count).to eq(91)
    #Includes double named stations

    line_stations = StationsAndLinesService.new.create_line_stations

    expect(line_stations.count).to eq(143)
    #Includes line_stations for all double named stations
  end
end
