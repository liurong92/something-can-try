require_relative  '../src/coffee'
require_relative '../src/milk'
class Drink

  def getDrinkMessage(juiceName)
    @juiceName = juiceName
    case @juiceName

      when 'coffee'
        result = Coffee.new.taste
      when 'milk'
        result = Milk.new.taste
      else
        result = Drink.new.taste
    end
    result
  end

  def taste
    'We do not have this juice!'
  end
end
