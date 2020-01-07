require_relative '../src/machine_number'

describe 'MachineNumber' do
  before(:all) do
    @machineNumber = MachineNumber.new
  end

  it 'should return machine number 0' do
    expect(@machineNumber.getMachine(0)).to eq(" _ \n"+"| |\n"+"|_|\n"+ "\n")
  end

  it 'should return machine number 1' do
    expect(@machineNumber.getMachine(1)).to eq("   \n"+"  |\n"+"  |\n"+ "\n")
  end

  it 'should return machine number 2' do
    expect(@machineNumber.getMachine(2)).to eq(" _ \n"+" _|\n"+"|_ \n"+ "\n")
  end

  it 'should return machine number 3' do
    expect(@machineNumber.getMachine(3)).to eq(" _ \n"+" _|\n"+" _|\n"+ "\n")
  end

  it 'should return machine number 4' do
    expect(@machineNumber.getMachine(4)).to eq("   \n"+"|_|\n"+"|  \n"+ "\n")
  end

  it 'should return machine number 5' do
    expect(@machineNumber.getMachine(5)).to eq(" _ \n"+"|_ \n"+" _|\n"+ "\n")
  end

  it 'should return machine number 6' do
    expect(@machineNumber.getMachine(6)).to eq(" _ \n"+"|_ \n"+"|_|\n"+ "\n")
  end

  it 'should return machine number 7' do
    expect(@machineNumber.getMachine(7)).to eq(" _ \n"+"  |\n"+"  |\n"+ "\n")
  end

  it 'should return machine number 8' do
    expect(@machineNumber.getMachine(8)).to eq(" _ \n"+"|_|\n"+"|_|\n"+ "\n")
  end

  it 'should return machine number 9' do
    expect(@machineNumber.getMachine(9)).to eq(" _ \n"+"|_|\n"+" _|\n"+ "\n")
  end
end