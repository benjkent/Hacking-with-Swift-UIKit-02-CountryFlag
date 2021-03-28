#  Country Flag
#### Project Platform Details:
* Version 12.4 (12D4e) Iphone, Ipad
* IOS 14.4
* UIKit with Storyboards
## Purpose
* Display three random flag image options for user to select.
* User selects correct country flag based on prompt.
* Points are added or subtracted for each attempt.
* When user reaches 7 correct guesses or -7 incorrect guesses game ends.

## Coding overview
* Asset catelogs supply images for flags 
* Add images to buttons. 
* Defining tap actions for UIButtons.
* Using color to enhance the button images edges.
* Use the Navigation bar area for text and score elements.

## Credit
* Hackingwithswift https://www.hackingwithswift.com/100/19

# Swift topics covered in this project
1. Asset Catalogs, a highly optimized was of importing and using images in IOS projects
2. Use the Assistant Editor to create outlets from the storyboard to the viewController.
3. Adding borders and colors to accent buttons using CALayer (Core Animation) with cgColor.
4. Random reordering an array in place.
5. Creating a random number from a range.
6. Create an action when a button is tapped. 
7. Use button tag values to determine which button has been tapped.
8. Working with alert controllers to respond to user interactions
9. Adding button elements to the navigation bar with code.
10. 
## Project challenges
* Show player's score in the navigaion bar
* When the user touches the score text in navigation bar it displays the win loss rules. 
* When the player reaches either the win or loss score present a "new game option".
* When player guesses the wrong flag, tell them the name of the country flag they incorrectly selected.

## Solution preview

| viewController | viewController | viewController | viewController |
| :---------------: | :---------------: | :---------------: | :---------------: |
|                         | incorrect answer | correct ansewer | score selected |
| <img src="https://github.com/benjkent/Hacking-with-Swift-UIKit-02-CountryFlag/blob/main/screenshots/viewContoller.png"> |    <img src="https://github.com/benjkent/Hacking-with-Swift-UIKit-02-CountryFlag/blob/main/screenshots/AlertController-incorrect.png"> | <img src="https://github.com/benjkent/Hacking-with-Swift-UIKit-02-CountryFlag/blob/main/screenshots/AlertController-Correct.png"> | <img src="https://gihub.com/benjkent/Hacking-with-Swift-UIKit-02-CountryFlag/blob/main/screenshots/viewController.png"> |



