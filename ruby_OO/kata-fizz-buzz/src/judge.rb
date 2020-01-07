class Judge
  def self.keyWorks(number)
    result =''
    if number % 3 == 0
      result += 'Fizz'
    end
    if number % 5 == 0
      result += 'Buzz'
    end
    if number % 3 != 0 && number % 5 != 0
      result += number.to_s
    end
    result
  end
end