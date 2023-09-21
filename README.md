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

# App demo - Home screen
<img src="https://github.com/Asfandyar-Khan-2022/GuessTheFlag/assets/117299102/6667db71-0792-405b-92b7-9f037103abf9" width=50% height=50%>

# App demo - Correct answer
![image](https://github.com/Asfandyar-Khan-2022/GuessTheFlag/assets/117299102/7ff87733-5048-44c1-aa62-7545899a35c9)

# App demo - Incorrect answer
![image](https://github.com/Asfandyar-Khan-2022/GuessTheFlag/assets/117299102/1d54fa2e-cbcb-4548-967e-50f13c21621f)

# App demo - Completion screen
![image](https://github.com/Asfandyar-Khan-2022/GuessTheFlag/assets/117299102/77a1e7fe-0ca3-4d01-88cd-1e9c80f285e0)

