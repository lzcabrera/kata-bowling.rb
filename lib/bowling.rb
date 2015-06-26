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
      if strike? frame_index
        score += 10 + strike_bonus(frame_index)
        frame_index += 1
        next
      end

      if spare? frame_index
        score += 10 + spare_bonus(frame_index)
      else
        score += points_in_frame(frame_index)
      end

      frame_index += 2
    end
    score
  end

  private

  def points_in_frame(frame_index)
    @rolls[frame_index] + @rolls[frame_index + 1]
  end

  def spare_bonus(frame_index)
    @rolls[frame_index + 2]
  end

  def strike_bonus(frame_index)
    @rolls[frame_index + 1] + @rolls[frame_index + 2]
  end

  def spare?(frame_index)
    (@rolls[frame_index] + @rolls[frame_index]) == 10
  end

  def strike?(frame_index)
    @rolls[frame_index] == 10
  end
end
