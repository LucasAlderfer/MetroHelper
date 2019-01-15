require 'rails_helper'

describe Line, type: :model do
  context 'validations' do
    it { should validate_presence_of(:name) }
  end
end
