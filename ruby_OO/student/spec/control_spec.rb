require_relative '../src/person'
require_relative '../src/subject'
require_relative '../src/control'

describe 'Control' do
  before(:all) do
    @person = Person.new('小铭', '男', 22)
    @subjects = [Subject.new('数学', 95),
                Subject.new('语文', 97),
                Subject.new('英语', 90)]
  end

  it 'should return person Name' do
    control = Control.new(@person, @subjects)
    expect(control.person.name).to eq('小铭')
  end

  it 'should return subject name' do
    control = Control.new(@person, @subjects)
    expect(control.subjects[0].name).to eq('数学')
  end

  it 'should return subject message list' do
    control = Control.new(@person, @subjects)
    expectValue = "科目：数学，成绩：95\n" +
                  "科目：语文，成绩：97\n" +
                  "科目：英语，成绩：90\n"
    expect(control.getSubjectList).to eq(expectValue)
  end

  it 'should return person message' do
    control = Control.new(@person, @subjects)
    expect(control.person.getPersonMessage).to eq('姓名：小铭，性别：男，年龄：22')
  end

  it 'should return average score' do
    control = Control.new(@person, @subjects)
    expect(control.getAverageScore).to eq('平均成绩：94')
  end

  it 'should return average score' do
    control = Control.new(@person, @subjects)
    expectValue = "姓名：小铭，性别：男，年龄：22\n" +
                  "科目：数学，成绩：95\n" +
                  "科目：语文，成绩：97\n" +
                  "科目：英语，成绩：90\n" +
                  '平均成绩：94'
    expect(control.getList).to eq(expectValue)
  end
end