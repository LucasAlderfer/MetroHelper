class CreateStations < ActiveRecord::Migration[5.1]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :station_code
      t.string :alternate_station_code

      t.timestamps
    end
  end
end
