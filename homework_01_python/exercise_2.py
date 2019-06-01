#!/usr/bin/env python3

# Question:
# Write a function called add() which can compute and returns the summ of two
# given numbers.
#
# Suppose the following parameters are supplied to the program:
# 8 8
# Then, the output should be:
# 16

import sys


def add(x, y):
    return x + y


# ------- START TDD TESTS DEFINITION -----------
def test_add_8_8():
    assert add(8, 8) == 16


def test_add_4_5():
    assert add(4, 5) == 9
# ------- END TDD TESTS DEFINITION -------------


# Program entrypoint
if __name__ == "__main__":

    if len(sys.argv) == 3:

        number1 = int(sys.argv[1])
        number2 = int(sys.argv[2])
        result = add(number1, number2)
        print(result)

    else:
        print("Usage: %s <number1> <number2>" % sys.argv[0])