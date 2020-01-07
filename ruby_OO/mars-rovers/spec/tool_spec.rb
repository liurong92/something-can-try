require_relative '../src/tool'

describe 'Tool' do
  describe ',splitInputs' do
    it 'should return ["1","2","N"] when given "12N"' do
      tool = Tool.new
      expect(tool.splitInputs('12N')).to eq(%w(1 2 N))
    end

    it 'should return ["L","M","L","M","R"] when given "LMLMR"' do
      tool = Tool.new
      expect(tool.splitInputs('LMLMR')).to eq(%w(L M L M R))
    end
  end
end