class GravityPuzzleEm
  def solve(answer)
    # masterarray = []
    # answer.each do |line|
    #   line.each do |char|
    #     stringarr = []
    #     stringarr << char
    #     masterarray << stringarr
    #   end
    # end

    # get the length of the array
    length = answer.count

    # iterate the array with index
    answer.each_with_index do |row, rowindex|
      # interate each string with the index
      row.each_char.with_index do |char, charindex|
        # if it hits the bottom, the code won't work
        unless rowindex == row[-1]
          # set the start counter as 1 so it can find the next row of the column and compare
          counter = 1
          # until a # is found or hits the buttom, the code will loop
          until row[rowindex + counter][charindex] == "#" || counter == length - rowindex
            counter += 1
            if row[rowindex][charindex] == '#' && row[rowindex + counter][charindex] == '.'
              row[rowindex][charindex] = '.'
              row[rowindex + counter][charindex] = '#'
            end
          end
          end
        end
      end
    end
  end
end
