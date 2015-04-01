require_relative '../07_max_counters'

RSpec.describe MaxCounters, '#solution' do
  let(:max_counters) { MaxCounters.new }

  it 'handles simpe case' do
    n = 5
    a = [3, 4, 4, 6, 1, 4, 4]
    expect(max_counters.solution(n, a)).to eq([3, 2, 2, 4, 2])
  end

  it 'handles array with one element' do
    expect(max_counters.solution(3, [3])).to eq([0, 0, 1])
  end

  it 'handles minimal values' do
    expect(max_counters.solution(1, [1])).to eq([1]);
  end

  it 'hanldes lagre number of counters' do
    n = 100000
    a = [1, 2, 8, 10, 20, 1, 1]
    expected_result = Array.new(n, 0)
    expected_result[0] = 3
    expected_result[1] = 1
    expected_result[7] = 1
    expected_result[9] = 1
    expected_result[19] = 1
    expect(max_counters.solution(n, a)).to eq(expected_result);
  end

  it 'handles large jumps' do
    n = 100000
    a = [1, 10000, 1, 90000, 100001, 1, 90000, 1, 50000, 100001, 60000, 90000]
    expected_result = Array.new(n, 4)
    expected_result[59999] = 5
    expected_result[89999] = 5
    expect(max_counters.solution(n, a)).to eq(expected_result);
  end
end
