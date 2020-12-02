local files = require 'utils.files'
local data = files.fileToArray('day_1_input.txt', tonumber)

function solution1 ()
  for _,i in ipairs(data) do
    for _,j in ipairs(data) do
      if i + j == 2020
      then
        return i * j
      end
    end
  end
end

function solution2 ()
  for _,i in ipairs(data) do
    for _,j in ipairs(data) do
      for _,k in ipairs(data) do
      if i + j + k == 2020
        then
          return  i * j * k
        end
      end
    end
  end
end

print(solution1())

print(solution2())

