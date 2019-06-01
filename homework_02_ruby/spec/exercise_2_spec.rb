# frozen_string_literal: true

require_relative '../exercise_2'

# ------- START TDD TESTS DEFINITION -----------
describe add(0, 0) do
  it 'returns 16 when passed 8 8' do
    expect(add(8, 8)).to eq 16
  end

  it 'returns 9 when passed 4 5' do
    expect(add(4, 5)).to eq 9
  end
end
# ------- END TDD TESTS DEFINITION -------------
