#!/usr/bin/env ruby
# frozen_string_literal: true

# Question
# Write a function called get_factorial() which can compute and returns the
# factorial of a given number.
#
# Suppose the following parameter is supplied to the program
# 8
# Then, the output should be
# 40320
#
# Hints:
# You can't use the `math` module.

def get_factorial(number)
  return 1 if number.zero?

  number * get_factorial(number - 1)
end

# Program entrypoint
if $PROGRAM_NAME == __FILE__

  if ARGV.length == 1
    number = ARGV[0].to_i
    result = get_factorial(number)
    puts result
  else
    puts "Usage: #{$PROGRAM_NAME} <number>"
  end
end
