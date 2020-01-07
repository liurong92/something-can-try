require_relative '../src/tool'
require_relative '../src/mars_rover'

def main(inputOne, inputTwo)
  tool = Tool.new

  marsRoverPostion = tool.splitInputs(inputOne)
  commends = tool.splitInputs(inputTwo)

  marsRover = MarsRover.new marsRoverPostion

  marsRover.operation commends

  puts marsRover.toString
end

main(ARGV[0],ARGV[1])
