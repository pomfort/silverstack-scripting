-- sst: ingest
-- MIT License. See LICENSE.txt

function onStampVideo(videoClip)
  local absolute<const> = "R3DAbsoluteTimecodeStart"
  local edge<const>     = "R3DEdgeTimecodeStart"

  local timecode = videoClip:getHeaderInfo()[edge]
  if timecode == nil then
    return
  end

  videoClip:metadata():setTCstart(timecode)
end
