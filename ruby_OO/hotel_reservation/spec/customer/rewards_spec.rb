require_relative '../../src/customer/rewards'
require_relative '../../src/hotel'
require_relative '../../src/dates'

describe 'Rewards' do

  before(:all) do
    @rewardsCustomerType = 'Rewards'
    @rewardsCustomerDates = [Dates.new('26Mar2009', '(fri)'),
                            Dates.new('27Mar2009', '(sat)'),
                            Dates.new('28Mar2009', '(sun)')]
  end

  describe '#getOneHotelCost' do
    it 'should return cost' do
      rewards = Rewards.new(@rewardsCustomerType, @rewardsCustomerDates)
      dateWeeks = ['(thur)','(fri)','(sat)']
      hotel = Hotel.new('Lakewood', 110, 90, 80, 80, 3)
      result = rewards.getOneHotelCost(hotel, dateWeeks)
      expect(result).to eq(240)
    end
  end

  describe '#getMinCostHotelN ame' do
    it 'should return min hotel name' do
      rewards = Rewards.new(@regularCustomerType, @regularCustomerDates)
      result = rewards.getMinCostHotelName
      expect(result).to eq('Ridgewood')
    end
  end
end