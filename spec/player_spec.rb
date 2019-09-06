require 'player'

describe Player do
  let(:name) { double :name }
  subject(:game) { Game.new}
  subject(:player) { described_class.new(name)}

  let(:karlo) { Player.new('karlo') }
  let(:mike) { Player.new('mike') }

  describe '#name' do
    it 'returns its name' do
      expect(subject.name).to eq(name)
    end
  end

  describe '#hp' do
    it 'returns its hp' do
      expect(mike.hp).to eq described_class::DEFAULT_HP
    end
  end

  describe '#reduce_hp' do
    it 'receives damage' do
      expect { game.inflict_damage(mike) }.to change { mike.hp }.by(-10)
    end
  end
end
