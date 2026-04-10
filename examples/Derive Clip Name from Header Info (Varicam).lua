-- sst: ingest
-- MIT License. See LICENSE.txt

function onStampVideo(videoClip)
  local userClipName = videoClip:getHeaderInfo()["UserClipName"]
  if userClipName == nil then
    return
  end

  videoClip:metadata():setClipName(userClipName)
end
