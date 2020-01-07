class MachineNumber
  def getMachine(number)
    case number
      when 0
        " _ \n| |\n|_|\n\n"
      when 1
        "   \n  |\n  |\n\n"
      when 2
        " _ \n _|\n|_ \n\n"
      when 3
        " _ \n _|\n _|\n\n"
      when 4
        "   \n|_|\n|  \n\n"
      when 5
        " _ \n|_ \n _|\n\n"
      when 6
        " _ \n|_ \n|_|\n\n"
      when 7
        " _ \n  |\n  |\n\n"
      when 8
        " _ \n|_|\n|_|\n\n"
      when 9
        " _ \n|_|\n _|\n\n"
    end
  end
end