require 'rails_helper'

describe 'visiting /station/1' do
  context 'as a user' do
    it 'can see all trains coming to the station' do
      StationsAndLinesService.new.create_lines
      StationsAndLinesService.new.create_stations
      StationsAndLinesService.new.create_line_stations

      visit '/station/1'

      expect(page).to have_content('Lines: Blue, Orange, Silver')

      expect(page).to have_content('Blue Trains:')
      expect(page).to have_content('Orange Trains:')
      expect(page).to have_content('Silver Trains:')

    end
  end
end
