require_relative '../../src/dates'
require_relative '../../src/customer/customer'

describe 'Customer' do

  before(:all) do
    @dates = [Dates.new('20Mar2009', 'fri'),
              Dates.new('21Mar2009', 'sat'),
              Dates.new('22Mar2009', 'sun')]
  end

  describe '#getCustomerType' do
    it 'should return customerType' do
      customer = Customer.new('Regular', @dates)
      expect(customer.customerType).to eq('Regular')
    end

    it 'should return dateTimes' do
      customer = Customer.new('Regular', [])
      expect(customer.dates).to eq([])
    end
  end

  describe '#getDateTimes' do
    it 'should return dateTime' do
      customer = Customer.new('Regular', @dates)
      expect(customer.getDateTimes).to eq(%w(20Mar2009 21Mar2009 22Mar2009))
    end
  end

  describe '#getDateWeek' do
    it 'should return dateWeek' do
      customer = Customer.new('Regular', @dates)
      expect(customer.getDateWeeks).to eq(%w(fri sat sun))
    end
  end
end