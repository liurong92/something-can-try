require_relative '../src/drink'

describe 'Drink' do
  describe '#getDrinkMessage' do
    it 'should return We do not have this juice' do
      drink = Drink.new
      expect(drink.getDrinkMessage('tea')).to eq('We do not have this juice!')
    end

    it 'should return Coffee is so bitter' do
      drink = Drink.new
      expect(drink.getDrinkMessage('coffee')).to eq('Coffee is so bitter!')
    end

    it 'should return milk is so sweet' do
      drink = Drink.new
      expect(drink.getDrinkMessage('milk')).to eq('Milk is so sweet!')
    end

  end

end