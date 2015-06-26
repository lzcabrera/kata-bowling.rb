describe BowlingGame do
  let(:game) { BowlingGame.new }

  describe 'a gutter game' do
    before { 20.times { game.roll 0 } }
    subject { game.score }
    it { is_expected.to eq 0 }
  end

  describe 'all ones' do
    before { 20.times { game.roll 1 } }
    subject { game.score }
    it { is_expected.to eq 20 }
  end

  describe 'one spare' do
    before do
      game.roll 5
      game.roll 5
      game.roll 3
      17.times { game.roll 0 }
    end

    subject { game.score }
    it { is_expected.to eq 16 }
  end
end
