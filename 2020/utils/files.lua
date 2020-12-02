local files = {}

function files.fileToArray(path, formatter)
  local file = io.open(path);
  local data = {}
  local l = 0
  if file then
      for line in file:lines() do
       l = l + 1
       data[l] = formatter(line)
      end
      file:close()
  else
      error('Files > File not found')
  end
  return data
end

return files
