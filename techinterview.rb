class GravityPuzzleEm
  def solve(answer)
    # define an empty array
    columns = []
    # iterate the array
    answer.each do |string|
      # iterate the string
      # => ["#", "#", "."], [".", ".", "#"], ["#", ".", "."]
      string.split('').each_with_index do |char, index|
        # if the columns/array is empty then push the char indside the columns
        if columns[index]
          columns[index] << char
          # else make it in an array and push it to the masterarray
        else
          columns[index] = [char]
        end
      end
    end
    # will be an array of arraies of strings
    # => [["#", ".", "#"], ["#", "#", "."]]
    columns.map! do |col|
      col.sort.reverse.transpose.join('')
      # => [[".", "#", "#"], [".", ".", "#"], [".", ".", "#"]]
      # => ["...", "#..", "###"]
    end
  end
  p solve(["##.", "..#", "#.."])
end
