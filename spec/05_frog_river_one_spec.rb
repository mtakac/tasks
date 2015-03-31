require_relative '../05_frog_river_one'

RSpec.describe FrogRiverOne, '#solution' do
  let(:frog_river_one) { FrogRiverOne.new }

  it 'handles simpe case' do
    a = [1, 3, 1, 4, 2, 3, 5, 4]
    expect(frog_river_one.solution(5, a)).to eq(6)
  end

  it 'handles two elements array' do
    expect(frog_river_one.solution(2, [2, 1])).to eq(1)
  end

  it 'handles one element array' do
    expect(frog_river_one.solution(1, [1])).to eq(0)
  end
end
