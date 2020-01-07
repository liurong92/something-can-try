class Control
  attr_accessor :person, :subjects

  def initialize(person, subjects)
    @person = person
    @subjects = subjects
  end

  def getSubjectList
    result = ''
    @subjects.each { |subject|
      result += subject.getSubjectMessage + "\n"
    }
    result
  end

  def getAverageScore
    sum = 0
    @subjects.each { |subject|
      sum += subject.score
    }
    "平均成绩：#{sum/@subjects.length}"
  end

  def getList
    @person.getPersonMessage + "\n" +
        getSubjectList +
        getAverageScore
  end
end