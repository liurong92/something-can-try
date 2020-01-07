require_relative '../src/tool'

describe 'Tool' do
  describe '#getCustomerType' do
    it 'should return customer type is regular' do
      inputInformation = 'Regular:16Mar2009(mon),17Mar2009(tues),18Mar2009(wed)'
      tool = Tool.new(inputInformation)
      result = tool.getCustomerType()
      expect(result).to eq('Regular')
    end
  end

  describe '#getCustomerDates' do
    it 'should return dates' do
      inputInformation = 'Regular:16Mar2009(mon),17Mar2009(tues),18Mar2009(wed)'
      tool = Tool.new(inputInformation)
      resultDates = tool.getCustomerDates()
      expect(resultDates[0].time).to eq('16Mar2009')
      expect(resultDates[0].week).to eq('(mon)')

      expect(resultDates[1].time).to eq('17Mar2009')
      expect(resultDates[1].week).to eq('(tues)')
    end
  end

end