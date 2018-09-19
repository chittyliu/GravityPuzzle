## Background & Objectives

We have a rectangular board divided into unit square cells. The board is mounted on a wall, with rows going horizontally and columns vertically. Each cell contains at most one box. You are given the current state of the board in the String[] board. The elements of board describe the rows of the board from top to bottom. (I.e., board[0] describes the topmost row of the board, and so on.) The characters of board[r] describe the cells in row r from left to right, with '.' being an empty cell and '#' a cell with a box.

## Specs

### GravityPuzzle

Implement the method `solve` which takes a parameter: an array of strings. We will assume that the array only contains words, e.g. `Strings`, and that only contains "#" and ".".

The `solve` method should return an array of strings with the "#" and "."  sorted according to gravity.

```ruby
p solve(["##.", "..#", "#.."])

# => [".##", "..#", "..#"]
```
