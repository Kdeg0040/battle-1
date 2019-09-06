require 'game'

describe Game do
  subject(:game) { described_class.new(karlo, mike) }
  let(:karlo) { double(:player) }
  let(:mike) { double(:player) }

  describe '#inflict_damage' do
    it 'attacks the player' do
      expect(karlo).to receive(:reduce_hp)
      game.inflict_damage(karlo)
    end
  end

  describe '#player1' do
    it 'retrieves player1' do
      expect(game.player_1).to eq karlo
    end
  end

  describe '#player2' do
    it 'retrieves player2' do
      expect(game.player_2).to eq mike
    end
  end

end
