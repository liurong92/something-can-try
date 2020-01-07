class Subject
  attr_accessor :name, :score

  def initialize(name, score)
    @name = name
    @score = score
  end

  def getSubjectMessage
    "科目：#{@name}，成绩：#{@score}"
  end
end