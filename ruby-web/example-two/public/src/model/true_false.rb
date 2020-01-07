class TrueFalse
  attr_accessor :name, :answer, :score

  def initialize(name, answer, score)
    @name = name
    @answer = answer
    @score = score
  end

  def getScore(input)
    score = 0
    if input[:inputs] == @answer
      score += @score
    end
    score
  end
end