# GuessTheFlag
The game works by displaying three flags to the user out of a fixed set of flags.
The flags are in random order every time they are displayed.
The user is promted to pick a flag that corresponds with the displayed flag name.
If the answer is correct then the score is incremented by 1.
Otherwise, the wrong score is incremented by one. 
The game continues until the user identifies 8 flags correctly.
At which point the user can reset the game or continue for another round.

# Code structure

- The variables use @State so that variable values can be changed as required
- The ZStack contains multiple VStack to allign all the content
- Alerts are used as a way to show the user score and also used as a prompt to let the user reset the game
- The code has three methods. With flagTapped being used to keep count of the wrong and correct answers and also to reset the game when correct answer score reaches 8
- The askQuestion method is used to shuffle the displayed flags
- Finally the reset method is used to reset the scores back to 0
