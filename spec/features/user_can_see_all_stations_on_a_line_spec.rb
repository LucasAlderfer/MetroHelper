require 'rails_helper'

describe 'visiting /red' do
  context 'as a user' do
    it 'can see all stations on the red line' do
      StationsAndLinesService.new.create_lines
      StationsAndLinesService.new.create_stations
      StationsAndLinesService.new.create_line_stations

      visit '/red'

      expect(page).to have_css('.station', count: 27)

      visit '/blue'

      expect(page).to have_css('.station', count: 27)

      visit '/green'

      expect(page).to have_css('.station', count: 19)

      visit '/silver'

      expect(page).to have_css('.station', count: 28)

      visit '/orange'

      expect(page).to have_css('.station', count: 26)

      visit '/yellow'

      expect(page).to have_css('.station', count: 15)
    end
  end
end
