class Behavior

  def self.move(position, direction)
    case direction.getDirection
      when 'N'
        position.updateY(1)
      when 'S'
        position.updateY(-1)
      when 'E'
        position.updateX(1)
      when 'W'
        position.updateX(-1)
    end

    position
  end
end