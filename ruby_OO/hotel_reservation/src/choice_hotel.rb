require_relative '../src/tool'
require_relative './customer/regular'
require_relative './customer/rewards'

class ChoiceHotel
  attr_accessor :inputInformation
  
  def initialize(inputInformation)
    @inputInformation =inputInformation
  end

  def getInstantiation
    tool = Tool.new(@inputInformation)
    customerType = tool.getCustomerType
    customerDates = tool.getCustomerDates

    case customerType
      when 'Regular'
        regularCustomer = Regular.new(customerType, customerDates)
        regularCustomer.getMinCostHotelName
      when 'Rewards'
        rewardsCustomer = Rewards.new(customerType, customerDates)
        rewardsCustomer.getMinCostHotelName
    end
  end
end