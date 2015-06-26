describe BowlingGame do
  describe 'a gutter game' do
    game = BowlingGame.new
    20.times { game.roll 0 }
  end
end
