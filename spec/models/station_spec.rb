require 'rails_helper'

describe Station, type: :model do
  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:station_code) }
  end

  context 'relationships' do
    it { should have_many(:lines) }
    it { should have_many(:line_stations)}
  end
end
