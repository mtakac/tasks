require_relative '../01_frog_jumps'

RSpec.describe FrogJumps, '#solution' do
  let(:frog_jumps) { FrogJumps.new }

  it 'handles simple case' do
    expect(frog_jumps.solution(20, 60, 20)).to eq(2)
  end

  it 'handles simple case 2' do
    expect(frog_jumps.solution(10, 85, 12)).to eq(7)
  end

  it 'handles case without jump' do
    expect(frog_jumps.solution(1, 1, 150)).to eq(0)
  end

  it 'handles case with big jump' do
    expect(frog_jumps.solution(125, 150800, 1000000)).to eq(1)
  end

  it 'handles case with many jumps' do
    expect(frog_jumps.solution(10, 999999999, 2)).to eq(499999995)
  end

  it 'handles extreme arguments' do
    expect(frog_jumps.solution(1, 1000000000, 5983)).to eq(167141)
  end

  it 'handles max number of jumps' do
    expect(frog_jumps.solution(1, 1000000000, 1)).to eq(999999999)
  end
end
