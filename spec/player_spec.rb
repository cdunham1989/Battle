require 'player'

describe Player do
  subject(:player1) { described_class.new("Rory") }
  subject(:player2) { described_class.new("Chris") }

  describe '#name' do
    it 'returns player\'s name' do
      expect(player1.name).to eq 'Rory'
    end
  end

  describe '#gets_attacked' do
    it 'reduces your hp' do
      expect{ player2.gets_attacked }.to change{ player2.hp }.by(-10)
    end
  end
end
