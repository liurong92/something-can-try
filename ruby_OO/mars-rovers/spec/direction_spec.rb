require_relative '../src/direction'

describe 'Direction' do
  describe ',turnRight' do
    it 'should return E when given N and turn right' do
      direction = Direction.new('N')
      expect(direction.turnRight).to eq('E')
    end

    it 'should return N when given E and turn right' do
      direction = Direction.new('E')
      expect(direction.turnRight).to eq('S')
    end

    it 'should return W when given S and turn right' do
      direction = Direction.new('S')
      expect(direction.turnRight).to eq('W')
    end

    it 'should return S when given W and turn right' do
      direction = Direction.new('W')
      expect(direction.turnRight).to eq('N')
    end
  end

  describe ',turnLeft' do
    it 'should return W when given N and turn left' do
      direction = Direction.new('N')
      expect(direction.turnLeft).to eq('W')
    end

    it 'should return N when given W and turn left' do
      direction = Direction.new('W')
      expect(direction.turnLeft).to eq('S')
    end

    it 'should return E when given S and turn left' do
      direction = Direction.new('S')
      expect(direction.turnLeft).to eq('E')
    end

    it 'should return S when given E and turn left' do
      direction = Direction.new('E')
      expect(direction.turnLeft).to eq('N')
    end
  end
end