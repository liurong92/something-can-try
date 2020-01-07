require 'byebug'
class Calculator

  def counted(array)
    @array = array
    stack = []
    sign =  1
    result = 0
    @i = 0
    for @i in @i..@array.length
      element = @array[@i]

      if @array[@i].to_i.to_s == @array[@i]
        tempValue = element.to_i
        while @i +1 < @array.length && @array[@i +1].to_i.to_s == @array[@i +1]
          tempValue = tempValue + @array[@i + 1].to_i
        end
        result += sign * tempValue
      elsif element == '-'
        sign = -1
      elsif element == '+'
        sign = 1
      elsif element == '('
        stack.push(result)
        result = 0
        stack.push(sign)
        sign = 1
      elsif element == ')'
        result = stack.pop * result + stack.pop
        sign = 1
      else element == ' '
        next
      end

    end

    result
  end
end