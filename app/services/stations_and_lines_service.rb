class StationsAndLinesService

  def initialize
    @lines = ['red', 'blue', 'yellow', 'orange', 'green', 'silver']
    @stations = [
      ['A01', 'Metro Center', 'C01'],
      ['A02', 'Farragut North'],
      ['A03', 'Dupont Circle'],
      ['A04', 'Woodley Park-Zoo/Adams Morgan'],
      ['A05', 'Cleveland Park'],
      ['A06', 'Van Ness-UDC'],
      ['A07', 'Tenleytown-AU'],
      ['A08', 'Friendship Heights'],
      ['A09', 'Bethesda'],
      ['A10', 'Medical Center'],
      ['A11', 'Grosvenor-Strathmore'],
      ['A12', 'White Flint'],
      ['A13', 'Twinbrook'],
      ['A14', 'Rockville'],
      ['A15', 'Shady Grove'],
      ['B01', 'Gallery Pl-Chinatown', 'F01'],
      ['B02', 'Judiciary Square'],
      ['B03', 'Union Station'],
      ['B04', 'Rhode Island Ave-Brentwood'],
      ['B05', 'Brookland-CUA'],
      ['B06', 'Fort Totten', 'E06'],
      ['B07', 'Takoma'],
      ['B08', 'Silver Spring'],
      ['B09', 'Forest Glen'],
      ['B10', 'Wheaton'],
      ['B11', 'Glenmont'],
      ['B35', 'NoMa-Gallaudet U'],
      ['C02', 'McPherson Square'],
      ['C03', 'Farragut West'],
      ['C04', 'Foggy Bottom-GWU'],
      ['C05', 'Rosslyn'],
      ['C06', 'Arlington Cemetery'],
      ['C07', 'Pentagon'],
      ['C08', 'Pentagon City'],
      ['C09', 'Crystal City'],
      ['C10', 'Ronald Reagan Washington National Airport'],
      ['C12', 'Braddock Road'],
      ['C13', 'King St-Old Town'],
      ['C14', 'Eisenhower Avenue'],
      ['C15', 'Huntington'],
      ['D01', 'Federal Triangle'],
      ['D02', 'Smithsonian'],
      ['D03', "L'Enfant Plaza", 'F03'],
      ['D04', 'Federal Center SW'],
      ['D05', 'Capitol South'],
      ['D06', 'Eastern Market'],
      ['D07', 'Potomac Ave'],
      ['D08', 'Stadium-Armory'],
      ['D09', 'Minnesota Ave'],
      ['D10', 'Deanwood'],
      ['D11', 'Cheverly'],
      ['D12', 'Landover'],
      ['D13', 'New Carrollton'],
      ['E01', 'Mt Vernon Sq 7th St-Convention Center'],
      ['E02', 'Shaw-Howard U'],
      ['E03', 'U Street/African-Amer Civil War Memorial/Cardozo'],
      ['E04', 'Columbia Heights'],
      ['E05', 'Georgia Ave-Pentworth'],
      ['E07', 'West Hyattsville'],
      ['E08', "Prince George's Plaza"],
      ['E09', 'College Park-U of Md'],
      ['E10', 'Greenbelt'],
      ['F02', 'Archives-Navy Memorial-Penn Quarter'],
      ['F04', 'Waterfront'],
      ['F05', 'Navy Yard-Ballpark'],
      ['F06', 'Anacostia'],
      ['F07', 'Congress Heights'],
      ['F08', 'Southern Avenue'],
      ['F09', 'Naylor Road'],
      ['F10', 'Suitland'],
      ['F11', 'Branch Ave'],
      ['G01', 'Benning Road'],
      ['G02', 'Capitol Heights'],
      ['G03', 'Addison Road-Seat Pleasant'],
      ['G04', 'Morgan Boulevard'],
      ['G05', 'Largo Town Center'],
      ['J02', 'Van Dorn Street'],
      ['J03', 'Franconia-Springfield'],
      ['K01', 'Court House'],
      ['K02', 'Clarendon'],
      ['K03', 'Virginia Square-GMU'],
      ['K04', 'Ballston-MU'],
      ['K05', 'East Falls Church'],
      ['K06', 'West Falls Church-VT/UVA'],
      ['K07', 'Dunn Loring-Merrifield'],
      ['K08', 'Vienna/Fairfax-GMU'],
      ['N01', 'McLean'],
      ['N02', 'Tysons Corner'],
      ['N03', 'Greensboro'],
      ['N04', 'Spring Hill'],
      ['N06', 'Wiehle-Reston East']
              ]
    @line_stations = [
      ['A01', 'blue'],
      ['A01', 'orange'],
      ['A01', 'silver'],
      ['A01', 'red'],
      ['A02', 'red'],
      ['A03', 'red'],
      ['A04', 'red'],
      ['A05', 'red'],
      ['A06', 'red'],
      ['A07', 'red'],
      ['A08', 'red'],
      ['A09', 'red'],
      ['A10', 'red'],
      ['A11', 'red'],
      ['A12', 'red'],
      ['A13', 'red'],
      ['A14', 'red'],
      ['A15', 'red'],
      ['B01', 'red'],
      ['B02', 'red'],
      ['B03', 'red'],
      ['B04', 'red'],
      ['B05', 'red'],
      ['B06', 'red'],
      ['E06', 'red'],
      ['B07', 'red'],
      ['B08', 'red'],
      ['B09', 'red'],
      ['B10', 'red'],
      ['B11', 'red'],
      ['B35', 'red'],
      ['C02', 'blue'],
      ['C02', 'orange'],
      ['C02', 'silver'],
      ['C03', 'blue'],
      ['C03', 'orange'],
      ['C03', 'silver'],
      ['C04', 'blue'],
      ['C04', 'orange'],
      ['C04', 'silver'],
      ['C05', 'blue'],
      ['C05', 'orange'],
      ['C05', 'silver'],
      ['C06', 'blue'],
      ['C07', 'blue'],
      ['C07', 'yellow'],
      ['C08', 'blue'],
      ['C08', 'yellow'],
      ['C09', 'blue'],
      ['C09', 'yellow'],
      ['C10', 'blue'],
      ['C10', 'yellow'],
      ['C12', 'blue'],
      ['C12', 'yellow'],
      ['C13', 'blue'],
      ['C13', 'yellow'],
      ['C14', 'yellow'],
      ['C15', 'yellow'],
      ['D01', 'orange'],
      ['D01', 'blue'],
      ['D01', 'silver'],
      ['D02', 'orange'],
      ['D02', 'blue'],
      ['D02', 'silver'],
      ['D03', 'orange'],
      ['D03', 'blue'],
      ['D03', 'silver'],
      ['D03', 'yellow'],
      ['D03', 'green'],
      ['D04', 'orange'],
      ['D04', 'blue'],
      ['D04', 'silver'],
      ['D05', 'orange'],
      ['D05', 'blue'],
      ['D05', 'silver'],
      ['D06', 'orange'],
      ['D06', 'blue'],
      ['D06', 'silver'],
      ['D07', 'orange'],
      ['D07', 'blue'],
      ['D07', 'silver'],
      ['D08', 'orange'],
      ['D08', 'blue'],
      ['D08', 'silver'],
      ['D09', 'orange'],
      ['D10', 'orange'],
      ['D11', 'orange'],
      ['D12', 'orange'],
      ['D13', 'orange'],
      ['E01', 'yellow'],
      ['E01', 'green'],
      ['E02', 'yellow'],
      ['E02', 'green'],
      ['E03', 'yellow'],
      ['E03', 'green'],
      ['E04', 'yellow'],
      ['E04', 'green'],
      ['E05', 'yellow'],
      ['E05', 'green'],
      ['E07', 'green'],
      ['E08', 'green'],
      ['E09', 'green'],
      ['E10', 'green'],
      ['F02', 'yellow'],
      ['F02', 'green'],
      ['F04', 'green'],
      ['F05', 'green'],
      ['F06', 'green'],
      ['F07', 'green'],
      ['F08', 'green'],
      ['F09', 'green'],
      ['F10', 'green'],
      ['F11', 'green'],
      ['G01', 'blue'],
      ['G01', 'silver'],
      ['G02', 'blue'],
      ['G02', 'silver'],
      ['G03', 'blue'],
      ['G03', 'silver'],
      ['G04', 'blue'],
      ['G04', 'silver'],
      ['G05', 'blue'],
      ['G05', 'silver'],
      ['J02', 'blue'],
      ['J03', 'blue'],
      ['K01', 'orange'],
      ['K01', 'silver'],
      ['K02', 'orange'],
      ['K02', 'silver'],
      ['K03', 'orange'],
      ['K03', 'silver'],
      ['K04', 'orange'],
      ['K04', 'silver'],
      ['K05', 'orange'],
      ['K05', 'silver'],
      ['K06', 'orange'],
      ['K07', 'orange'],
      ['K08', 'orange'],
      ['N01', 'silver'],
      ['N02', 'silver'],
      ['N03', 'silver'],
      ['N04', 'silver'],
      ['N06', 'silver']
    ]
  end

  def create_lines
    all_lines = []
    @lines.each do |line|
      new_line = Line.create(name: line)
      all_lines << new_line
    end
    all_lines
  end

  def create_stations
    all_stations = []
    @stations.each do |station|
      new_station = Station.create(name: station[1], station_code: station[0], alternate_station_code: station[2])
      all_stations << new_station
    end
    all_stations
  end

  def create_line_stations
    all_line_stations = []
    @line_stations.each do |line_station|
      line = Line.find_by_name(line_station[1])
      station = Station.find_by_station_code(line_station[0])
      new_line_station = line.line_stations.create(station: station)
      all_line_stations << new_line_station
    end
    all_line_stations
  end

end
