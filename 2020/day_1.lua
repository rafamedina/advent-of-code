local file = io.open("day_1_input.txt", "r");
local data = {}
local l = 0
if file then
    for line in file:lines() do
     l = l + 1
     data[l] = tonumber(line)
    end
    file:close()
else
    error('file not found')
end

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

