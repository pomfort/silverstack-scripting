-- sst: ingest
-- MIT License. See LICENSE.txt
-- Use case: Set the TC start based on the timecode found in the file header

function onStampVideo(videoClip)
  -- Marks the variable as read-only (constant)
  local absolute<const> = "R3DAbsoluteTimecodeStart"
  local edge<const>     = "R3DEdgeTimecodeStart"

  -- A Lua table can act as a dictionary
  -- Find the value for key "edge" in the file header info and store it into variable "timecode"
  local timecode = videoClip:getHeaderInfo()[edge]
  -- Exit if timecode is nil
  if timecode == nil then
    return
  end

  videoClip:metadata():setTCstart(timecode)
end
