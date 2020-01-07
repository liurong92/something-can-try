require_relative '../src/tool'

describe Tool do
  describe ',splitString' do
    it 'should return array when given string' do
      expect(Tool.splitString('1+2')).to eq(%w(1 + 2))
    end

    it 'should return array when given the string has space' do
      expect(Tool.splitString('1 + 2')).to eq(['1', ' ', '+', ' ', '2'])
    end
  end
end