describe BowlingGame do
  describe 'a gutter game' do
    game = BowlingGame.new
    20.times { game.roll 0 }
    subject { game.score }
    it { is_expected.to eq 0 }
  end
end
