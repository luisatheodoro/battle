require 'game'

describe Game do
  let(:luisa) { Player.new('Luisa') }
  let(:milo) { Player.new('Milo') }

  describe '#attack' do
    it 'damages the player' do
      expect(luisa).to receive(:receive_damage)
      subject.attack(luisa)
    end

    it 'removes 10 hit points when attacked' do
      expect(subject.attack(milo)).to eq 50
    end
  end

end