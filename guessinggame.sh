#!/usr/bin/env bash
# File: guessinggame.sh

function ask_guess {
    echo "How many files are in the current directory?"
    read user_guess
}

num_files=$(ls -1 | wc -l)

while true
do
    ask_guess
    if [[ $user_guess -lt $num_files ]]
    then
        echo "Too low. Try again."
    elif [[ $user_guess -gt $num_files ]]
    then
        echo "Too high. Try again."
    else
        echo "Congratulations! You guessed it right."
        break
    fi
done
