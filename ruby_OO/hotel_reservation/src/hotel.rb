class Hotel
  attr_accessor :hotelName, :regularWeekday, :regularWeekend, :rewardsWeekday, :rewardsWeekend, :rate

  def initialize(hotelName, regularWeekday, regularWeekend, rewardsWeekday, rewardsWeekend, rate)
    @hotelName = hotelName
    @regularWeekday = regularWeekday
    @regularWeekend = regularWeekend
    @rewardsWeekday = rewardsWeekday
    @rewardsWeekend = rewardsWeekend
    @rate = rate
  end

  def self.all
    return [
        Hotel.new('Lakewood', 110, 90, 80, 80, 3),
        Hotel.new('Bridgewood', 160, 60, 110, 50, 4),
        Hotel.new('Ridgewood', 220, 150, 100, 40, 5)
    ]
  end
end