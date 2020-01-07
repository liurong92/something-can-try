require_relative '../src/choice_hotel'

describe 'ChoiceHotel' do
  describe 'getInstantiation' do
    it 'should return Lakewood when is a Regular customer' do
      inputInformation = 'Regular:16Mar2009(mon),17Mar2009(tues),18Mar2009(wed)'
      choice = ChoiceHotel.new(inputInformation)
      result = choice.getInstantiation
      expect(result).to eq('Lakewood')
    end

    it 'should return  when is a Rewards customer' do
      inputInformation = 'Rewards:16Mar2009(sat),17Mar2009(sun),18Mar2009(mon)'
      choice = ChoiceHotel.new(inputInformation)
      result = choice.getInstantiation
      expect(result).to eq('Ridgewood')
    end
  end
end