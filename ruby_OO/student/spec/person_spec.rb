require_relative '../src/person'
describe 'Person' do
  before(:all) do
    @person = Person.new('小铭', '男', 22)
  end

  it 'should return person name' do
    expect(@person.name).to eq('小铭')
  end

  it 'should return person sex' do
    expect(@person.sex).to eq('男')
  end

  it 'should return person age' do
    expect(@person.age).to eq(22)
  end

  it 'should return person message' do
    expect(@person.getPersonMessage).to eq('姓名：小铭，性别：男，年龄：22')
  end

end