class Station < ApplicationRecord
  validates_presence_of :name, :station_code

  has_many :line_stations
  has_many :lines, through: :line_stations
end
