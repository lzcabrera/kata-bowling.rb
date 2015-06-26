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
      if spare? frame_index
        score += 10 + @rolls[frame_index + 2]
      else
        score += @rolls[frame_index] + @rolls[frame_index + 1]
      end
      frame_index += 2
    end
    score
  end

  private

  def spare?(frame_index)
    (@rolls[frame_index] + @rolls[frame_index]) == 10
  end
end
