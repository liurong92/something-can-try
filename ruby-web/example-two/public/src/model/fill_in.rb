class FillIn
  attr_accessor :name, :answer, :score

  def initialize(name, answer, score)
    @name = name
    @answer = answer
    @score = score
  end

  def getScore(input)
    num = 0
    @answer.map { |word|
        num += 1 if input[:inputs].uniq.include?(word)
    }
    @score * num
  end
end