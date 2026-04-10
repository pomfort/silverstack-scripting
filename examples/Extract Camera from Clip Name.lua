-- sst: ingest
-- MIT License. See LICENSE.txt
-- Use case: Set the camera index (letter) based on the first characters in the clip name

function onStampVideo(videoClip)
  -- Exit early if the camera index (letter) is not nil
  if videoClip:metadata():getCameraIndex() ~= nil then
    return
  end

  local cameraIndexLength<const> = 2
  local clipName = videoClip:metadata():getClipName()
  -- Exit if the clip name is nil
  if clipName == nil then return end
  -- Lua indexing is 1-based (not 0)
  -- Set the camera index from the first two characters of the string "clipName"
  videoClip:metadata():setCameraIndex(string.sub(clipName, 1, cameraIndexLength))
end
