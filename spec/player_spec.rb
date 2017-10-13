require 'player'

describe Player do
  subject(:rory) { described_class.new("Rory") }
  subject(:chris) { described_class.new("Chris") }

  describe '#name' do
    it 'returns player\'s name' do
      expect(rory.name).to eq 'Rory'
    end
  end


  describe '#hit_points' do
    it 'returns the hit points' do
      expect(rory.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(chris).to receive(:receive_damage)
      rory.attack(chris)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { rory.receive_damage }.to change { rory.hit_points }.by(-10)
    end
  end
 end
