local strings = {}

function strings.split(s, delimiter)
    local result = {};
    if s ~= nil then
        for match in (s..delimiter):gmatch("(.-)"..delimiter) do
            if match ~= nil then
                result[#result+1]= match;
            end
        end
    end
    return result;
end

return strings