require_relative '../src/mars_rover'
require_relative '../src/tool'

describe 'MarsRover' do
  it 'should return mars rover position and direction' do
    marsRover = MarsRover.new(['1','2','N'])
    expect(marsRover.position.x).to eq(1)
    expect(marsRover.position.y).to eq(2)
  end

  describe ',operation' do
    it 'should return [3,2,N] when given MM commend' do
      marsRover = MarsRover.new(%w(1 2 N))
      marsRover.operation(%w(M M))

      expect(marsRover.position.x).to eq(1)
      expect(marsRover.position.y).to eq(4)
    end

    it 'should return [3,2,N] when given MR commend' do
      marsRover = MarsRover.new(%w(1 2 N))
      marsRover.operation(%w(M R))

      expect(marsRover.position.x).to eq(1)
      expect(marsRover.position.y).to eq(3)
      expect(marsRover.direction.getDirection).to eq('E')
    end

    it 'should return [3,2,N] when given MR commend' do
      marsRover = MarsRover.new(%w(1 2 N))
      marsRover.operation(%w(M R R))

      expect(marsRover.position.x).to eq(1)
      expect(marsRover.direction.getDirection).to eq('S')
    end
  end

  describe ',toString' do
    it 'should return "2 2 N" when given [2,2,N]' do
      marsRover = MarsRover.new(%w(2 2 N))
      expect(marsRover.toString).to eq('2 2 N')
    end

    it 'should return "1 3 N" when given ["1","2","N"]' do
      marsRover = MarsRover.new(%w(1 2 N))
      marsRover.operation(%w(L M L M L M L M M))
      expect(marsRover.toString).to eq('1 3 N')
    end

    it 'should return "5 1 E" when given ["3","3","E"]' do
      marsRover = MarsRover.new(%w(3 3 E))
      marsRover.operation(%w(M M R M M R M R R M))
      expect(marsRover.toString).to eq('5 1 E')
    end


    it 'should return "5 1 E" when given 33E and MMRMMRMRRM' do
      tool = Tool.new
      marsRoverPostion = tool.splitInputs '33E'
      commends = tool.splitInputs 'MMRMMRMRRM'
      marsRover = MarsRover.new marsRoverPostion
      marsRover.operation commends
      expect(marsRover.toString).to eq('5 1 E')
    end
  end
end