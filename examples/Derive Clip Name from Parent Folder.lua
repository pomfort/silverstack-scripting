-- sst: ingest
-- MIT License. See LICENSE.txt

function onStampVideo(videoClip, _, resource)
  local foldersUp<const> = 0

  local components = pathComponents(resource:getPath())
  local component = components[#components-foldersUp-1]

  videoClip:metadata():setClipName(component)
end

function pathComponents(path)
  return split(path, "/")
end

function split(str, sep)
  local fields = {}
  local pattern = "([^"..sep.."]+)"
  str:gsub(pattern, function(c)
    fields[#fields+1] = c
  end)
  return fields
end
