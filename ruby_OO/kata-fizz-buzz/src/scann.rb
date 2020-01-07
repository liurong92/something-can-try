require_relative '../src/judge'
class Scann
  def putFizzOrBuzzOrNumber(numbers)
    result = ''
    for number in 1..numbers
      result += Judge.keyWorks(number) + "\n"
    end
    result
  end
end