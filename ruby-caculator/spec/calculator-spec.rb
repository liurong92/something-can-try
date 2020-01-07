require_relative '../src/calculator'
require_relative '../src/tool'

describe Calculator do
  describe '#counted' do
    it 'should rerturn 7 when given 2 plus 5' do
      calculator = Calculator.new
      result = calculator.counted(%w(2 + 5))
      expect(result).to eq(7);
    end

    it 'should rerturn 7 when given 2 plus 5 and the array have space' do
      calculator = Calculator.new
      result = calculator.counted(['2', ' ', '+', ' ', '5'])
      expect(result).to eq(7);
    end

    it 'should rerturn 2 when given 5 minus 3' do
      calculator = Calculator.new
      result = calculator.counted(%w(5 - 3))
      expect(result).to eq(2);
    end

    it 'should rerturn －2 when given 3 minus 5' do
      calculator = Calculator.new
      result = calculator.counted(%w(3 - 5))
      expect(result).to eq(-2);
    end

    it 'should rerturn －8 when given －3 minus 5' do
      calculator = Calculator.new
      result = calculator.counted(%w(- 3 - 5))
      expect(result).to eq(-8);
    end

    it 'should rerturn 2 when given 5 minus 3 and the array have space' do
      calculator = Calculator.new
      result = calculator.counted(['5', ' ', '-', ' ', '3'])
      expect(result).to eq(2);
    end

    it 'should rerturn 3 when given 5-(1+3)' do
      calculator = Calculator.new
      result = calculator.counted(%w{5 - ( 1 + 3 )})
      expect(result).to eq(1);
    end

    it 'should rerturn 2 when given 5-(5+1)' do
      calculator = Calculator.new
      result = calculator.counted(%w{5 - ( 5 + 1 )})
      expect(result).to eq(-1);
    end

    it 'should rerturn -3 when given 5-((5+1)+(6-4))' do
      array = Tool.splitString('5-( (5+1) + (6 - 4))')
      calculator = Calculator.new
      result = calculator.counted(array)
      expect(result).to eq(-3);
    end

    it 'should rerturn -7 when given (1-(2 + (3 + 3)))' do
      array = Tool.splitString('(1 - (2 + (3 + 3)))')
      calculator = Calculator.new
      result = calculator.counted(array)
      expect(result).to eq(-7);
    end
  end
end