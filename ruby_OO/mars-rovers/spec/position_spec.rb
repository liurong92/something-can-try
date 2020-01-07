require_relative '../src/position'

describe 'Position' do
  before(:each) do
    @position = Position.new(2,3)
  end

  it 'should return postion x is 2 when given to [2,3]' do
    expect(@position.x).to eq(2)
  end

  it 'should return postion y is 3 when given to [2,3]' do
    expect(@position.y).to eq(3)
  end

  describe ',updateX' do
    it 'should return new x value is 3 when given 1 ' do
      @position.updateX(1)
      expect(@position.x).to eq(3)
    end

    it 'should return new x value is 1 when given -1 ' do
      @position.updateX(-1)
      expect(@position.x).to eq(1)
    end
  end

  describe ',updateY' do
    it 'should return new y value is 2 when given -1 ' do
      @position.updateY(-1)
      expect(@position.y).to eq(2)
    end

    it 'should return new y value is 4 when given 1 ' do
      @position.updateY(1)
      expect(@position.y).to eq(4)
    end
  end

  describe ',getPosition' do
    it 'should return position message' do
      expect(@position.getPosition).to eq('2 3')
    end
  end
end