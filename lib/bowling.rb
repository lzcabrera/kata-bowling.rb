class BowlingGame
  def initialize
    @score = 0
    @rolls = []
  end

  def roll(pins)
    @score += pins
    @rolls << pins
  end

  def score
    @rolls.reduce(:+)
  end
end
