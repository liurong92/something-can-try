require_relative 'model/fill_in'
require_relative 'model/choice'
require_relative 'model/multiple_choice'
require_relative 'model/true_false'
require_relative 'model/short_answer'

class Calculator
  attr_accessor  :input
  def initialize(inputs)
    @inputs = inputs
  end

  def getScore
    score = 0
    answers = initAnswer
    @inputs.map { |input|
      answers.map { |answer|
        if answer.name == input[:name]
          score += answer.getScore(input)
        end
      }
    }
    score
  end

end

def initAnswer
  return [
      FillIn.new('fill_in_1', ['统一建模语言'], 5),
      FillIn.new('fill_in_2', ['封装性', '继承性', '多态性'], 5),
      Choice.new('choice_1', 'B', 10),
      Choice.new('choice_2', 'A', 10),
      MultipleChoice.new('multiple_choice_1', ['A', 'B', 'D'], 10),
      MultipleChoice.new('multiple_choice_2', ['A', 'B', 'C'], 10),
      TrueFalse.new('true_false_1', 'false', 10),
      TrueFalse.new('true_false_2', 'true', 10),
      ShortAnswer.new('short_answer_1',
                       '模型是对现实世界的简化和抽象，模型是对所研究的系统、过程、事物或概念的一种表达形式。可以是物理实体；可以是某种图形；或者是一种数学表达式。',
                       20)
  ]
end