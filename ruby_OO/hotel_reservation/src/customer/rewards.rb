require_relative './customer'
class Rewards < Customer

  def getOneHotelCost(hotel, dateWeeks)
    cost = 0
    dateWeeks.each { |dateWeek|
      if dateWeek == '(sat)' || dateWeek == '(sun)'
        cost += hotel.rewardsWeekend
      else
        cost += hotel.rewardsWeekday
      end
    }
    cost
  end
end