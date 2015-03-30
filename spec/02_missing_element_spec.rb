require_relative '../02_missing_element'

RSpec.describe MissingElement, '#solution' do
  let(:missing_element) { MissingElement.new }

  it 'handles simple case' do
    expect(missing_element.solution([1, 3, 4])).to eq(2)
  end

  it 'handles case with first element missing' do
    expect(missing_element.solution([2, 3, 4, 5])).to eq(1)
  end

  it 'handles case with last element missing' do
    expect(missing_element.solution([1, 2, 3, 4])).to eq(5)
  end

  it 'handles empty array' do
    expect(missing_element.solution([])).to eq(1)
  end

  it 'handles array with one element' do
    expect(missing_element.solution([1])).to eq(2)
  end

  it 'handles very small array' do
    expect(missing_element.solution([1, 3])).to eq(2)
  end

  it 'handles extremly large arrays' do
    left_part = (1..843502).to_a
    right_part = (843504..1000000).to_a
    whole = left_part + right_part
    expect(missing_element.solution(whole)).to eq(843503)
  end

  it 'handles min edge case' do
    expect(missing_element.solution((2..1000000).to_a)).to eq(1)
  end

  it 'handles max edge case' do
    expect(missing_element.solution((1..999999).to_a)).to eq(1000000)
  end
end
