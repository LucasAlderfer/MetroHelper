class Station < ApplicationRecord
  validates_presence_of :name, :station_code

  belongs_to :line
end
