require_relative '../03_tape_equilibrium'

RSpec.describe TapeEquilibrium, '#solution' do
  let(:tape_eqilibrium) { TapeEquilibrium.new }

  it 'handles simple case' do
    a = [3, 1, 2, 4, 3]
    expect(tape_eqilibrium.solution(a)).to eq(1)
  end

  it 'handles array with two close elements' do
    a = [1, 2]
    expect(tape_eqilibrium.solution(a)).to eq(1)
  end

  it 'handles array with two semi-far away elements' do
    a = [1, 555]
    expect(tape_eqilibrium.solution(a)).to eq(554)
  end

  it 'handles array with two far away elements' do
    a = [1, 1000]
    expect(tape_eqilibrium.solution(a)).to eq(999)
  end

  it 'handles array with two most distant elements' do
    a = [-1000, 1000]
    expect(tape_eqilibrium.solution(a)).to eq(2000)
  end

  it 'handles array with negative integers' do
    a = [-542, -12, -84, -0, -1, -238, -999]
    expect(tape_eqilibrium.solution(a)).to eq(122)
  end

  it 'handles array with zero' do
    a = [0, -1000, -23, 543, 1000]
    expect(tape_eqilibrium.solution(a)).to eq(520)
  end

  it 'handles extremly large array' do
    a = (-1000..1000).to_a
    expect(tape_eqilibrium.solution(a)).to eq(2000)
  end

end
