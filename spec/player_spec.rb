require 'player'

describe Player do
  let(:luisa) { Player.new('Luisa') }
  let(:milo) { Player.new('Milo') }

  it 'Should return player name' do
    expect(luisa.name).to eq 'Luisa'
  end

  it 'returns the hit points' do
    expect(luisa.hit_points).to eq described_class::DEFAULT_HIT_POINTS
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { luisa.receive_damage }.to change { luisa.hit_points }.by(-10)
    end
  end

end