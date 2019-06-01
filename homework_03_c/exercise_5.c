/*
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
*/

#include <stdio.h> //printf, scanf
#include <string.h>
#include "minunit.h"

int add(int x, int y) {
    return x + y;
}

char * play_game(char * option1, char * option2) {

    if (strcmp(option1, option2))
    {
        return("It's a tie!");
    }
    else if (strcmp(option1, "rock"))
    {
        if (strcmp(option2, "scissors"))
        {
            return("Rock wins!");
        }
        else
        {
            return("Paper wins!");
        }
    }
    else if (strcmp(option1, "scissors"))
    {
        if (strcmp(option2, "paper"))
        {
            return("Scissors win!");
        }
        else
        {
            return("Rock wins!");
        }
    }
    else if (strcmp(option1, "paper"))
    {
        if (strcmp(option2, "rock"))
        {
            return("Paper wins!");
        }
        else
        {
            return("Scissors win!");
        }
    }
    else
    {
        return("Invalid input!");
    }

}

// ------- START TDD TESTS DEFINITION -----------

char * test_play_game_rock_scissors(){
    mu_assert("error", strcmp(play_game("rock", "scissors"), "Rock wins!"));
    return 0;
}


char * test_play_game_scissors_scissors(){
    mu_assert("error", strcmp(play_game("scissors", "scissors"), "It's a tie!"));
    return 0;
}


char * test_play_game_paper_rock(){
    mu_assert("error", strcmp(play_game("paper", "rock"), "Paper wins!"));
    return 0;
}


char * test_play_game_scissors_paper(){
    mu_assert("error", strcmp(play_game("scissors", "paper"), "Scissors win!"));
    return 0;
}


char * test_play_game_invalid_paper(){
    mu_assert("error", strcmp(play_game("invalid", "paper"), "Invalid input!"));
    return 0;
}

char * all_tests() {
     mu_run_test(test_play_game_rock_scissors);
     mu_run_test(test_play_game_scissors_scissors);
     mu_run_test(test_play_game_paper_rock);
     mu_run_test(test_play_game_scissors_paper);
     mu_run_test(test_play_game_invalid_paper);

     return 0;
 }
// ------- END TDD TESTS DEFINITION -------------

// Program entrypoint
int main(int argc, char **argv)
{

    if (argc == 3) {

        char * option1 = argv[1];
        char * option2 = argv[2];
        char * result = play_game(option1, option2);
        printf("%s\n", result);

    } else {
        printf("Usage: %s <option1> <option2>\n", argv[0]);
    }

    return 0;
}
