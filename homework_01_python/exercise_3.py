#!/usr/bin/env python3

# Question:
# Write a function called get_factorial() which can compute and returns the
# factorial of a given number.
#
# Suppose the following parameter is supplied to the program:
# 8
# Then, the output should be:
# 40320
#
# Hints:
# You can't use the `math` module.

import sys


def get_factorial(number):
    if number == 0:
        return 1
    return number * get_factorial(number - 1)


# ------- START TDD TESTS DEFINITION -----------
def test_get_factorial_8():
    import math
    assert math.factorial(8) == get_factorial(8)


def test_get_factorial_3():
    import math
    assert math.factorial(3) == get_factorial(3)


def test_get_factorial_25():
    import math
    assert math.factorial(25) == get_factorial(25)
# ------- END TDD TESTS DEFINITION -------------


# Program entrypoint
if __name__ == "__main__":

    if len(sys.argv) == 2:
        number = int(sys.argv[1])
        result = get_factorial(number)
        print(result)

    else:
        print("Usage: %s <number>" % sys.argv[0])
