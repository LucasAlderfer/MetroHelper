require 'rails_helper'

describe TrainSorterService do
  it 'can sort trains' do
    train_1 = Train.new(["6", "Station_1", "RD", "2"])
    train_2 = Train.new(["6", "Station_2", "BL", "2"])
    train_7 = Train.new(["6", "Station_2", "BL", "4"])
    train_3 = Train.new(["6", "Station_3", "GR", "2"])
    train_4 = Train.new(["6", "Station_4", "YL", "2"])
    train_8 = Train.new(["6", "Station_4", "YL", "4"])
    train_9 = Train.new(["6", "Station_4", "YL", "6"])
    train_5 = Train.new(["6", "Station_5", "SV", "2"])
    train_6 = Train.new(["6", "Station_6", "OR", "2"])
    train_array = [train_1, train_2, train_3, train_4, train_5, train_6, train_7, train_8, train_9]

    allow_any_instance_of(TrainUpdateService).to receive(:get_trains).and_return(train_array)
    trains = TrainUpdateService.new('A01').get_trains
    sorted_trains = TrainSorterService.new(trains)
    expect(sorted_trains.red_trains).to eq([train_1])
    expect(sorted_trains.blue_trains).to eq([train_2, train_7])
    expect(sorted_trains.green_trains).to eq([train_3])
    expect(sorted_trains.yellow_trains).to eq([train_4, train_8, train_9])
    expect(sorted_trains.silver_trains).to eq([train_5])
    expect(sorted_trains.orange_trains).to eq([train_6])
  end
end
