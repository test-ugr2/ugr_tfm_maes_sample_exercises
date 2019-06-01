#!/usr/bin/env python3

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


def play_game(option1, option2):

    if option1 == option2:
        return("It's a tie!")
    elif option1 == 'rock':
        if option2 == 'scissors':
            return("Rock wins!")
        else:
            return("Paper wins!")
    elif option1 == 'scissors':
        if option2 == 'paper':
            return("Scissors win!")
        else:
            return("Rock wins!")
    elif option1 == 'paper':
        if option2 == 'rock':
            return("Paper wins!")
        else:
            return("Scissors win!")
    else:
        return("Invalid input!")


# ------- START TDD TESTS DEFINITION -----------
def test_play_game_rock_scissors():
    assert play_game("rock", "scissors") == "Rock wins!"


def test_play_game_scissors_scissors():
    assert play_game("scissors", "scissors") == "It's a tie!"


def test_play_game_paper_rock():
    assert play_game("paper", "rock") == "Paper wins!"


def test_play_game_scissors_paper():
    assert play_game("scissors", "paper") == "Scissors win!"


def test_play_game_invalid_paper():
    assert play_game("invalid", "paper") == "Invalid input!"
# ------- END TDD TESTS DEFINITION -------------


# Program entrypoint
if __name__ == "__main__":

    if len(sys.argv) == 3:

        option1 = sys.argv[1]
        option2 = sys.argv[2]
        result = play_game(option1, option2)
        print(result)

    else:
        print("Usage: %s <option1> <option2>" % sys.argv[0])
