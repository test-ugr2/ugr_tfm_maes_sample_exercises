/*
# Question:
# Write a function called add() which can compute and returns the summ of two
# given numbers.
#
# Suppose the following parameters are supplied to the program:
# 8 8
# Then, the output should be:
# 16
*/

#include <stdio.h> //printf, scanf
#include <stdlib.h> //atoi, strtol
#include "minunit.h"

int add(int x, int y) {
    return x + y;
}

// ------- START TDD TESTS DEFINITION -----------
char * test_add_8_8(){
    mu_assert("error", add(8, 8) == 16);
    return 0;
}

char * test_add_4_5() {
    mu_assert("error", add(4, 5) == 9);
    return 0;
}

char * all_tests() {
     mu_run_test(test_add_8_8);
     mu_run_test(test_add_4_5);
     return 0;
 }
// ------- END TDD TESTS DEFINITION -------------

// Program entrypoint
int main(int argc, char **argv)
{

    if (argc == 3) {

        int number1 = atoi(argv[1]);
        int number2 = atoi(argv[2]);
        int result = add(number1, number2);
        printf("%d\n", result);

    } else {
        printf("Usage: %s <number1> <number2>\n", argv[0]);
    }

    return 0;
}




