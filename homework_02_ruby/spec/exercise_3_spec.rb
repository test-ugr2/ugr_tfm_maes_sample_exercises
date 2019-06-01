# frozen_string_literal: true

require_relative '../exercise_3'

# ------- START TDD TESTS DEFINITION -----------
describe get_factorial(0) do
  it 'returns 40320 when passed 8' do
    expect(get_factorial(8)).to eq 40_320
  end

  it 'returns 6 when passed 3' do
    expect(get_factorial(3)).to eq 6
  end
  it 'returns 15511210043330985984000000 when passed 3' do
    expect(get_factorial(25)).to eq 15_511_210_043_330_985_984_000_000
  end
end
# ------- END TDD TESTS DEFINITION -------------
