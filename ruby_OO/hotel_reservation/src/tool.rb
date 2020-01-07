require_relative 'dates'
class Tool
  attr_accessor :inputInformation

  def initialize(inputInformation)
    @inputInformation = inputInformation
  end

  def getCustomerType
    customerType = @inputInformation.split(':')
    customerType[0]
  end

  def getCustomerDates
    customerArray = @inputInformation.split(':')
    splitCustomerDates(customerArray[1])
  end

  def splitCustomerDates(customerDatesString)
    customerDates = []
    customerDatesArrays = customerDatesString.split(',')

    customerDatesArrays.each { |customerDate|
      week = /\([^\)]+\)/.match(customerDate).to_s
      time = getOnlyTime(customerDate, week)
      customerDates << Dates.new(time, week)
    }
    customerDates
  end

  def getOnlyTime(customerDate, week)
    customerDate.tr_s(week, '')
  end

end