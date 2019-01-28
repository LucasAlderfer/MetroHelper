require 'rails_helper'

describe LineStation, type: :model do
  context 'relationships' do
    it { should belong_to(:line) }
    it { should belong_to(:station)}
  end
end
