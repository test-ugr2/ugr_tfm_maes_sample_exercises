/*
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
*/

#include <stdio.h> //printf, scanf
#include <stdlib.h> //atoi, strtol
#include "minunit.h"


int get_factorial(int number) {
    if (number == 0) {
        return 1;
    }
    return number * get_factorial(number - 1);
}

// ------- START TDD TESTS DEFINITION -----------
char * test_get_factorial_8(){
    mu_assert("error", get_factorial(8) == 40320);
    return 0;
}

char * test_get_factorial_3() {
    mu_assert("error", get_factorial(3) == 6);
    return 0;
}

char * test_get_factorial_10() {
    mu_assert("error", get_factorial(10) == 3628800);
    return 0;
}

char * all_tests() {
     mu_run_test(test_get_factorial_8);
     mu_run_test(test_get_factorial_3);
     mu_run_test(test_get_factorial_10);
     return 0;
 }
// ------- END TDD TESTS DEFINITION -------------

// Program entrypoint
int main(int argc, char **argv)
{

    if (argc == 2) {

        int number = atoi(argv[1]);
        int result = get_factorial(number);
        printf("%d\n", result);

    } else {
        printf("Usage: %s <number>\n", argv[0]);
    }

    return 0;
}
