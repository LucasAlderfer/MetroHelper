require 'rails_helper'

describe Train do
  context 'validations' do
    it 'is valid with correct parameters' do
      train_array = ['8', 'Silver Spring', 'Red', '5']
      train = Train.new(train_array)
      expect(train.size).to eq('8')
      expect(train.destination).to eq('Silver Spring')
      expect(train.line).to eq('Red')
      expect(train.time).to eq('5')
    end
  end
end
