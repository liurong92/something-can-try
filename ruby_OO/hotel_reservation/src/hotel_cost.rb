
class HotelCost
  attr_accessor :hotelName, :cost, :rate

  def initialize(hotelName, cost, rate)
    @hotelName = hotelName
    @cost = cost
    @rate = rate
  end
end