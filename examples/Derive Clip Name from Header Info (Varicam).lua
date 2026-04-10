-- sst: ingest
-- MIT License. See LICENSE.txt
-- Use case: Rename the clip in the library based on the clip name found in the Varicam file header

function onStampVideo(videoClip)
  local userClipName = videoClip:getHeaderInfo()["UserClipName"]
  -- Exit early if the user clip name is nil
  if userClipName == nil then
    return
  end

  videoClip:metadata():setClipName(userClipName)
end
