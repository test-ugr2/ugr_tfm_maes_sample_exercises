#!/usr/bin/env ruby
# frozen_string_literal: true

# Question:
# Write a funciton that works like a "Rock-Paper-Scissors" game, remember the
# rules:
# - Rock beats scissors
# - Scissors beats paper
# - Paper beats rock
#
# The result should be:
# - It's a tie!
# - Rock wins!
# - Scissors win!
# - Paper wins!
# - Invalid input!
#
# Suppose the following parameter is supplied to the program:
# rock scissors
# Then, the output should be:
# Rock wins!

# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/AbcSize
# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/PerceivedComplexity
def play_game(option1, option2)
  if option1 == option2
    "It's a tie!"
  elsif option1 == 'rock'
    if option2 == 'scissors'
      'Rock wins!'
    else
      'Paper wins!'
    end
  elsif option1 == 'scissors'
    if option2 == 'paper'
      'Scissors win!'
    else
      'Rock wins!'
    end
  elsif option1 == 'paper'
    if option2 == 'rock'
      'Paper wins!'
    else
      'Scissors win!'
    end
  else
    'Invalid input!'
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/AbcSize
# rubocop:enable Metrics/MethodLength
# rubocop:enable Metrics/PerceivedComplexity

# Program entrypoint
if $PROGRAM_NAME == __FILE__

  if ARGV.length == 2

    option1 = ARGV[0]
    option2 = ARGV[1]
    result = play_game(option1, option2)
    puts result

  else
    puts "Usage: #{$PROGRAM_NAME} <option1> <option2>"
  end
end
