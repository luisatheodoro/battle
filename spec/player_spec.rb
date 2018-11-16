require 'player'

describe Player do
  let(:luisa) { Player.new('Luisa') }

  it 'Should return player name' do
    expect(luisa.name).to eq 'Luisa'
  end
end