class Line < ApplicationRecord
  validates_presence_of :name

  has_many :line_stations
  has_many :stations, through: :line_stations
end
