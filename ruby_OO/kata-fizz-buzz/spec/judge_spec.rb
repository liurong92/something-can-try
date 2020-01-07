require_relative '../src/judge'
describe 'Judge' do
  it 'should return Fizz when given 3' do
    expect(Judge.keyWorks(3)).to eq('Fizz')
  end

  it 'should return Buzz when given 5' do
    expect(Judge.keyWorks(5)).to eq('Buzz')
  end

  it 'should return FizzBuzz when given 15' do
    expect(Judge.keyWorks(15)).to eq('FizzBuzz')
  end

  it 'should return 1 when given 1' do
    expect(Judge.keyWorks(1)).to eq('1')
  end
end