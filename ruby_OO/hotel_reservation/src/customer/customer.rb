require_relative '../../src/hotel'
require_relative '../../src/hotel_cost'

class Customer
  attr_accessor :customerType, :dates

  def initialize(customerType, dates)
    @customerType = customerType
    @dates = dates || []
  end

  def getDateTimes
    @dates.map{|date| date.time }
  end

  def getDateWeeks
    @dates.map{|date| date.week}
  end

  def getMinCostHotelName
    hotelCostArray = getHotelCostInformation(getDateWeeks)
    hotelRateMins = getHotelCostMins(hotelCostArray)
    hotelRateMax = getHotelRateMax(hotelRateMins)
    hotelRateMax[0].hotelName
  end

  def getHotelRateMax(hotelCostMins)
    hotelCostMins.select{ |hotelCost|
      hotelCost.rate == hotelCostMins.map{ |hotelCost|
        hotelCost.rate
      }.max
    }
  end

  def getHotelCostMins(hotelCostArray)
    hotelCostArray.select{ |hotelCost|
      hotelCost.cost == hotelCostArray.map{ |hotelCost|
        hotelCost.cost
      }.min
    }
  end

  def getHotelCostInformation(dateWeeks)
    hotels = Hotel.all
    hotelCostArray = []
    hotels.each{ |hotel|
      hotelName = hotel.hotelName
      rate = hotel.rate
      cost = getOneHotelCost(hotel,dateWeeks)
      hotelCostArray << HotelCost.new(hotelName, cost, rate)
    }
    hotelCostArray
  end

end