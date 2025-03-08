#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Taking username as input
echo "Enter your username:" 
read username1
# searching username in the database
user_data=$($PSQL "select * from userinfo where username='$username1'")

# if usernmae not found
if [[ -z $user_data ]]; then
  echo "Welcome, $username1! It looks like this is your first time here."
  games_played=0

# If username is found
else
  # Fetching the values from the database
  IFS='|' read -r id username games_played best_game <<< "$user_data"
  
  echo "Welcome back, $username! You have played $games_played games, and your best game took $best_game guesses."
fi
# Increase the game count.
games_played=$((games_played+1))

# Random number generation
secret_number=$(($RANDOM%1000+1))
echo "Guess the secret number between 1 and 1000:"

# Counter to count the steps taken to guess the number
number_of_guesses=1

# Input the user guess
read num

while [[ "$secret_number" -ne "$num" ]]
do
  if [[ $num =~ ^[0-9]+$ ]]; then
    if [[ "$num" -gt "$secret_number" ]]
    then
      echo "It's lower than that, guess again:"
    else
      echo "It's higher than that, guess again:"
    fi
    number_of_guesses=$((number_of_guesses+1))
  else
    echo "That is not an integer, guess again:"
  fi
  read num
done
if [[ -z $user_data ]]; then
  $PSQL "INSERT INTO userinfo(username, game_played, best_game) VALUES('$username1', $games_played, $number_of_guesses)"
else
  if [[ "$number_of_guesses" -lt "$best_game" ]]; then
    $PSQL "UPDATE userinfo SET game_played=$games_played WHERE username='$username1'"
    $PSQL "UPDATE userinfo SET best_game=$number_of_guesses WHERE username='$username1'"
  else
    $PSQL "UPDATE userinfo SET game_played=$games_played WHERE username='$username1'"
  fi
fi
echo "You guessed it in $number_of_guesses tries. The secret number was $secret_number. Nice job!"
  
