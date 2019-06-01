#!/usr/bin/env ruby
# frozen_string_literal: true

# Question:
# Write a function called add() which can compute and returns the summ of two
# given numbers.
#
# Suppose the following parameters are supplied to the program:
# 8 8
# Then, the output should be:
# 16

def add(number1, number2)
  number1 + number2
end

# Program entrypoint
if $PROGRAM_NAME == __FILE__
  if ARGV.length == 2

    number1 = ARGV[0].to_i
    number2 = ARGV[1].to_i
    result = add(number1, number2)
    puts result
  else
    puts "Usage: #{$PROGRAM_NAME} <number1> <number2>"
  end
end
