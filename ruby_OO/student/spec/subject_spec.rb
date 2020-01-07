require_relative '../src/subject'

describe 'Subject' do
  before(:all) do
    @subject = Subject.new('数学', 95)
  end

  it 'should return subject name' do
    expect(@subject.name).to eq('数学')
  end

  it 'should return subject score' do
    expect(@subject.score).to eq(95)
  end

  it 'should return subject message' do
    expect(@subject.getSubjectMessage).to eq('科目：数学，成绩：95')
  end
end