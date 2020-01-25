# What's Up?
50.002 Computation Structures: Electronic Game Design 1D Project

# Game Description
What’s Up is a modified version of the original Seven-Up game, with the following key features:

* Single-player
* Points-based
* Scoring streak
* Highscore functionality

The game begins when the player presses the green Play button. Following a 3 seconds countdown, the main display shows a number that we call the counter. The counter counts upward in multiples of 3, starting from 0, and ends with 120. As different numbers are displayed by the counter in increasing fashion, the player gains points by pressing the Play button when the number displayed is either a multiple of 5, a multiple of 7, has a last digit of 5 or has a last digit of 7.

Examples of correct answers include 0, 15, 21, 27, and 30. Examples of incorrect answers include 3, 6, 9, 12, and 18.

# Scoring system
The player gets to choose between the two following game modes:
* Easy mode: 1.4s per question, max streak is capped at 5, max attainable score is 75
* Hard mode: 0.7s per question, max streak is capped at 7, max attainable score is 98

Every time you answer correctly:
* The streak number adds to your current score
* Your streak number increases by 1 (subject to a cap)

Every time you answer incorrectly:
* Your streak number resets back to 1

At the end of the game, your score will be tallied and be compared to the existing highscore.
