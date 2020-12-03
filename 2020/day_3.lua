
local files = require 'utils.files'
local data = files.fileToArray('day_3_input.txt', tostring)

function solution1(goDown, goRight)
  local down, right = 1, 1
  local trees = 0

  while down <= #data do
    trees = trees + (string.sub(data[down], right, right) == "#" and 1 or 0)
    right = right + (right + goRight > #data[1] and goRight - #data[1] or goRight)
    down = down + goDown
  end
  return trees
end

function solution2()
  local total = 1
  local slopes = {{1,1},
                  {1,3},
                  {1,5},
                  {1,7},
                  {2,1}}
  for _,v in pairs(slopes) do
    total = total * solution1(v[1], v[2])
  end
  return total
end

print(solution1(1, 3))
print(solution2())
