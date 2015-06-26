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

  describe 'one strike' do
    before do
      game.roll 10
      game.roll 3
      game.roll 4
      16.times { game.roll 0 }
    end

    subject { game.score }
    it { is_expected.to eq 24 }
  end

  describe 'a perfect game' do
    before { 12.times { game.roll 10 } }
    subject { game.score }
    it { is_expected.to eq 300 }
  end
end
