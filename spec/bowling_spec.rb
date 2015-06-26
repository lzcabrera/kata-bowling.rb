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
end
