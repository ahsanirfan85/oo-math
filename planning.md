# Game Logic
[] Game is initialized with two players & their lives
[] Player 2 is asked for two numbers
[] Player 1 is given a question based on Player 2's input
[] If Player 1 gets the answer correct, then they are asked for their input and the cycle repeats for Player 2
[] If Player 2 gets the answer wrong, they lose a life, then they are asked for their input and the cycle repeats for Player 2
[] Game is tracking player lives
[] Whenever either player's lives reach 0, the game checks whose lives are zero and declares the other player the winner
[] main.rb is where the main game logic is stored

## Player Class
[] Stores the following data: (1) the name of the player as "Player 1" or "Player 2" (during object initialization) (2) the lives of the player (initialized with 3)
[] Generates the following behavior: It has one method that subtracts one life each time it is called
[] This class will not manage any user input/output

## Question Class
[] Stores the following data: (1) First integer, randomly generated upon initialization (2) Second integer, randomly generate upon initialization
[] Generates the following behavior: It has one method that asks the current player the question based on the randomly generated numbers. It, then, takes the current player's input. It, then, compares the player's answer to the actual answer. If the answer is correct, it displays a message and returns true. If the answer is incorrect, it displays a message and returns false.
[] This class manages some user input/output

## Turn Class
[] Stores the following data: It just stores the name of the layer whose turn it is currently
[] Generates the following behavior: It has one method that sets a new question (creates a new Question object), asks it of the current player (calls the ask_question method). If the answer is correct, the turn ends with a message. If the answer is incorrect, it calls the kill method on the player to reduce their life count. Then, it displays a message.

## main.rb
