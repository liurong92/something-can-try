class Position
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def updateX(x)
    @x += x
  end

  def updateY(y)
    @y += y
  end

  def getPosition
    @x.to_s + ' ' + @y.to_s
  end
end