// Copyright (c) 2021 Mel Aguoth All rights reserved.
//
// Created By: Mel Aguoth
// Date: December 8, 2021
// Calculates the length of a board that's 144^3 inches with user input.

func calcBoardFoot(boardWidth: Double, boardHeight: Double) -> Double {

  // Calculate and return the board's length.
  let boardLength: Double = 144 / boardWidth / boardHeight
  return boardLength
}
// Introduce the program.
print("This program calculates and displays the length of a wooden board that's 144 inches"
    + " cubed when given the width and height.")
while true {

  // Get the user's board width.
  print("Enter the width (inches):", terminator: " ")
  let userBoardWidth: String = readLine() ?? ""
  let userBoardWidthDouble: Double = Double(userBoardWidth) ?? 0

  // Get the user's board height.
  print("Enter the height (inches):", terminator: " ")
  let userBoardHeight: String = readLine() ?? ""
  let userBoardHeightDouble: Double = Double(userBoardHeight) ?? 0

  // If one of the user's measurements is below 0, display as such to the user.
  if userBoardWidthDouble < 0 || userBoardHeightDouble < 0 {
    print("")
    print("One of your measurements is below 0. Please try again.")

  // If one of the user's measurements isn't a number, display as such to the user.
  } else if userBoardWidthDouble == 0 || userBoardHeightDouble == 0 {
    print("")
    print("One of your measurements isn't a number. Please try again.")

  // Call calcBoardFoot and display the board's length to the user.
  } else {
    let result: Double = calcBoardFoot(boardWidth: userBoardWidthDouble, boardHeight: userBoardHeightDouble)
    print("")
    print("This board's length is: \(result) inches")
    break
  }
}
