class GravityPuzzleEm
  def solve(answer)
    masterarray = []
    answer.each do |a|
      stringarr = [] << a.join("")
      masterarray << stringarr
    end

    [ [".", "#"],
      [".", "."],
      [".", "#"] ]

    masterarray.each_with_index do | row, index|
      row[index + 1].each_with_index do |nextrow, secondidx|
        if nextrow[secondindex + 1] == "."
          nextrow[secondindex + 1] = "#"
        end
      end
      row[index].each_with_index do |firstrow, firstidx|
        if firstrow[firstidx] == "#"
          firstrow[firstidx] = "."
      end
    end
  end
end

[ "#.##..#.##..##...#..#...#.#.#.#..",
  ".#.#.#.#.##..##...#.#...##..###..",
  "#....##..##...###....#...##.###.#",
  "#.#..#....#......##......##.##..#",
  "....#.#.#.##.#........#......#...",
  "##.#....##.#........#.....#......",
  "#.#####.#....##..#.#....#.#....#.",
  ".####...#....#.#...#.#####.#.#.#.",
  "#......#.###...###...##.#.#..#.##",
  ".#.....#....#.#...#.#.##.#.##.#.#",
  ".#.##.#.#.#......#..#..#...###.##",
  "##...#..###.#.##...#...#.#..#.###" ]
