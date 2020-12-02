
local files = require 'utils.files'
local strings = require 'utils.strings'
local logic = require 'utils.logic'
local data = files.fileToArray('day_2_input.txt', tostring)
--local data = {"1-3 a: abcd", "1-3 b: cdefg", "2-9 c: ccccccccc", "3-6 j: jjjjjrrj"};

local function split(row)
  local elements = strings.split(row, " ")
  local times = strings.split(elements[1], "-")
  local min = tonumber(times[1])
  local max = tonumber(times[2])
  local char = string.sub(elements[2], 1, 1)
  local password = elements[3]
  return min, max, char, password
end

local function countchar(s,c)
    local _,n = s:gsub(c,"")
    return n
end

local function valid_position (pos1, pos2, char, password)
  return logic.xor( string.sub(password, pos1, pos1) == char,
    string.sub(password, pos2, pos2) == char)
end

function solution1 ()
    local valid = 0
    for _, row in ipairs(data) do
       local min, max, char, password = split(row)
       local count = countchar(password, char)
       if count >= min and count <= max then
        valid = valid + 1
       end
    end
    return valid
end

function solution2()
    local valid = 0
    for _, row in ipairs(data) do
       local pos1, pos2, char, password = split(row)
       if valid_position(pos1, pos2, char, password)
       then
         valid = valid + 1
       end
    end
    return valid
end

print(solution1())

print(solution2())