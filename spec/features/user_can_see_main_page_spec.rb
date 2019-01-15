require 'rails_helper'

describe 'visiting /routes' do
  context 'as a user' do
    it 'can see routes' do
      line_names = ["red", "blue", "green", "silver", "yellow", "orange"]
      line_names.each do |name|
        Line.create(name: name)
      end
      visit '/routes'

      expect(page).to have_css('.line', count: 6)
    end
  end
end
