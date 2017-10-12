require 'game'

describe Game do

  let (:player1) { double(:player1) }
  let (:player2) { double(:player2, gets_attacked: nil) }
  subject(:game) { described_class.new(player1, player2) }

describe '::new' do
  it 'creates two players' do
    expect(Player).to receive(:new).twice.with(/name[12]/)
    game = described_class.new('name1', 'name2')
  end
end

  describe '#attack' do
    it 'allows one player to attack another' do
      expect(player2).to receive(:gets_attacked)
      game.attack(player1, player2)
    end
  end
end
