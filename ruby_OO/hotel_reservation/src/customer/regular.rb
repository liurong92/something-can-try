require_relative './customer'

class Regular < Customer

  def getOneHotelCost(hotel, dateWeeks)
    cost = 0
    dateWeeks.each { |dateWeek|
      if dateWeek == '(sat)' || dateWeek == '(sun)'
        cost += hotel.regularWeekend
      else
        cost += hotel.regularWeekday
      end
    }
    cost
  end
end