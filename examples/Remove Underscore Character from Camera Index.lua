-- sst: ingest
-- MIT License. See LICENSE.txt
-- Use case: Remove the underscore character from the camera index (letter) for specific cameras

function onStampVideo(videoClip)
  local cameraIndex = videoClip:metadata():getCameraIndex()
  -- Exit early if the the camera index (letter) is nil
  if cameraIndex == nil then return end
  -- Replaces one or more underscores at the end of the string with an empty string
  local droppedTrailingUnderscores = string.gsub(cameraIndex, "_+$", "")
  videoClip:metadata():setCameraIndex(droppedTrailingUnderscores)
end
