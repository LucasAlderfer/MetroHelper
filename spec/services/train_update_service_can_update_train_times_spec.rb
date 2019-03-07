require 'rails_helper'

describe TrainUpdateService do
  it 'can update train times' do
    trains = TrainUpdateService.new('A01').get_trains
    expect(trains.first.class).to eq(Train)
  end
end
