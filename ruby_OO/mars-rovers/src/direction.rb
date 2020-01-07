class Direction
  DIRECTION = %w(N E S W)

  attr_accessor :direction
  def initialize(direction)
    @direction = direction
  end

  def turnRight
    DIRECTION[(DIRECTION.index(@direction) + 1) % DIRECTION.length]
  end

  def turnLeft
    DIRECTION[(DIRECTION.index(@direction) + 3) % DIRECTION.length]
  end

  def getDirection
    @direction
  end
end