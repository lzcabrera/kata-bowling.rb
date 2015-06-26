class BowlingGame
  def initialize
    @rolls = []
  end

  def roll(pins)
    @rolls << pins
  end

  def score
    score = 0
    frame_index = 0
    (0..9).each do |frame|
      frame_points = @rolls[frame_index] + @rolls[frame_index + 1]
      score += frame_points
      frame_index += 2
    end
    score
  end
end
