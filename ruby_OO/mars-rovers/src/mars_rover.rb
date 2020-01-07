require_relative '../src/position'
require_relative '../src/direction'
require_relative '../src/behavior'

class MarsRover
  attr_accessor :position, :direction

  def initialize(array)
    @position = Position.new(array[0].to_i, array[1].to_i)
    @direction = Direction.new(array[2])
  end

  def operation(commends)

    commends.each { |commend|
      case commend
        when 'M'
          @position = Behavior.move(@position, @direction)
        when 'R'
          @direction = Direction.new @direction.turnRight
        when 'L'
          @direction = Direction.new @direction.turnLeft
      end
    }
  end

  def toString
    "#{@position.getPosition} #{@direction.direction}"
  end

end