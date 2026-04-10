-- sst: ingest
-- MIT License. See LICENSE.txt
-- Use case: Rename the clip (in the library) based on the clip's parent folder (in the file system)

function onStampVideo(videoClip, _, resource)
  local foldersUp<const> = 0

  -- Creates a table of strings where each string represents a level in the path hierarchy
  local components = pathComponents(resource:getPath())
  -- Calculates the required index from the amount of components in the table above to store the component name
  local component = components[#components-foldersUp-1]

  videoClip:metadata():setClipName(component)
end

-- Returns a table of strings created from the input path using the function "split" below
function pathComponents(path)
  return split(path, "/")
end

-- Creates a table of substrings from the input string with the help of a separator
function split(str, sep)
  local fields = {}
  -- Lua pattern matching: Match and capture one ore more consecutive characters that are not "/"
  local pattern = "([^"..sep.."]+)"
  -- Iterates over all matches of the pattern in the input string
  str:gsub(pattern, function(c)
    fields[#fields+1] = c
  end)
  return fields
end
