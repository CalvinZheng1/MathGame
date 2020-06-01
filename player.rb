class Player
  attr_accessor :score
  START_SCORE = 3
  
  def initialize
    self.score = START_SCORE
  end

  def decrement_score
    self.score -= 1
  end

  def print_score
    "#{self.score}/#{START_SCORE}"
  end
end