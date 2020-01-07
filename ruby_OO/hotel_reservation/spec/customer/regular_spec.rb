require_relative '../../src/customer/regular'
require_relative '../../src/hotel'
require_relative '../../src/dates'

describe 'Regular' do

  before(:all) do
    @regularCustomerType = 'Regular'
    @regularCustomerDates = [Dates.new('20Mar2009', 'fri'),
                            Dates.new('21Mar2009', 'sat'),
                            Dates.new('22Mar2009', 'sun')]
  end

  describe '#getOneHotelCost' do
    it 'should return cost' do
      regular = Regular.new(@regularCustomerType, @regularCustomerDates)
      dateWeeks = ['(sun)','(mon)','(tues)']
      hotel = Hotel.new('Lakewood', 110, 90, 80, 80, 3)
      result = regular.getOneHotelCost(hotel, dateWeeks)
      expect(result).to eq(310)
    end
  end

  describe '#getMinCostHotelName' do
    it 'should return min hotel name' do
      regular = Regular.new(@regularCustomerType, @regularCustomerDates)
      result = regular.getMinCostHotelName
      expect(result).to eq('Lakewood')
    end
  end
end