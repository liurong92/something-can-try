require_relative '../src/scann'
describe 'Scanne' do
   describe 'putFizzOrBuzzOrNumber' do
     it 'should return 1,2,Fizz when given 1..3' do
       show = Scann.new
       expect(show.putFizzOrBuzzOrNumber(3)).to eq("1\n2\nFizz\n")
     end
   end
end