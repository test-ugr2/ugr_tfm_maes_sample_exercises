# frozen_string_literal: true

require_relative '../exercise_5'

# ------- START TDD TESTS DEFINITION -----------
describe play_game('', '') do
  it 'returns "Rock wins!" when passed "rock" "scissors"' do
    expect(play_game('rock', 'scissors')).to eq 'Rock wins!'
  end

  it 'returns "Its a tie!" when passed "scissors" "scissors"' do
    expect(play_game('scissors', 'scissors')).to eq "It's a tie!"
  end

  it 'returns "Paper wins!" when passed "paper" "rock"' do
    expect(play_game('paper', 'rock')).to eq 'Paper wins!'
  end

  it 'returns "Scissors win!" when passed ("scissors" "paper"' do
    expect(play_game('scissors', 'paper')).to eq 'Scissors win!'
  end

  it 'returns "Invalid input!" when passed "invalid" "paper"' do
    expect(play_game('invalid', 'paper')).to eq 'Invalid input!'
  end
end
# ------- END TDD TESTS DEFINITION -------------
