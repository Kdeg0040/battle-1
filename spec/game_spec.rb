require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:karlo) { double(:player) }
  let(:mike) { double(:player) }

  describe '#inflict_damage' do
    it 'attacks the player' do
      expect(karlo).to receive(:reduce_hp)
      game.inflict_damage(karlo)
    end
  end

end
