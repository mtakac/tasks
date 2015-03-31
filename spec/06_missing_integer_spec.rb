require_relative '../06_missing_integer'

RSpec.describe MissingInteger, '#solution' do
  let(:missing_integer) { MissingInteger.new }

  it 'handles simpe case' do
    a = [1, 3, 6, 4, 1, 2]
    expect(missing_integer.solution(a)).to eq(5)
  end

  it 'handles consecutive integers' do
    a = [1, 2, 3, 4, 5, 6]
    expect(missing_integer.solution(a)).to eq(7)
  end

  it 'hanldes array with only negative integers' do
    a = [-1, -5, -893]
    expect(missing_integer.solution(a)).to eq(1)
  end

  it 'hanldes array with negative and positive integers' do
    a = [-1, -5, -893, 90, 32, 1, 2]
    expect(missing_integer.solution(a)).to eq(3)
  end

  it 'handles zero' do
    expect(missing_integer.solution([0])).to eq(1)
  end

  it 'extreme numbers' do
    left = (-2147483648..-2147482900).to_a
    middle = (-1000..1000).to_a
    right = (2147482900..2147483647).to_a
    a = left + middle + right
    expect(missing_integer.solution(a)).to eq(1001)
  end

  it 'handles extremely large arrays' do
    a = (-1000..99000)
    expect(missing_integer.solution(a)).to eq(99001)
  end
end
