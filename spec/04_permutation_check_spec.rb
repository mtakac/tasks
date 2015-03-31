require_relative '../04_permutation_check'

RSpec.describe PermutationCheck, '#solution' do
  let(:permutation_check) { PermutationCheck.new }

  context 'when array is permutation' do
    it 'handles simple case' do
      expect(permutation_check.solution([4, 1, 3, 2])).to eq(1)
    end

    it 'handles array with one element' do
      expect(permutation_check.solution([1])).to eq(1)
    end

    it 'handles large array' do
      expect(permutation_check.solution((1..1000000).to_a)).to eq(1)
    end

    it 'handles randomly distributed elements' do
      a = (1..9999).to_a.shuffle
      expect(permutation_check.solution(a)).to eq(1)
    end

    it 'handles max values' do
      a = (1..100000).to_a.shuffle
      expect(permutation_check.solution(a)).to eq(1)
    end
  end

  context 'when array is not permutation' do
    it 'handles simple case' do
      expect(permutation_check.solution([4, 1, 3])).to eq(0)
    end

    it 'handles array with one element' do
      expect(permutation_check.solution([555])).to eq(0)
    end

    it 'handles large array' do
      expect(permutation_check.solution((2..1000000).to_a)).to eq(0)
    end

    it 'handles case with multiple apearences of same element' do
      a = (1..9999).to_a.shuffle + [2]
      expect(permutation_check.solution(a)).to eq(0)
    end

    it 'handles case with multiple apearences of multiple elements' do
      a = (1..9999).to_a.shuffle + [2, 888, 2304]
      expect(permutation_check.solution(a)).to eq(0)
    end
  end
end
