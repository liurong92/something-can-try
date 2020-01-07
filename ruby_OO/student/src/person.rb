class Person
  attr_accessor :name, :sex, :age

  def initialize(name, sex, age)
    @name = name
    @sex =sex
    @age = age
  end

  def getPersonMessage
    "姓名：#{@name}，性别：#{@sex}，年龄：#{@age}"
  end
end

