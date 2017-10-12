require 'player'

describe Player do
  describe '#name' do
    subject(:player1) { described_class.new("Rory") }
    it 'returns player\'s name' do
      expect(player1.name).to eq 'Rory'
    end
  end
end
