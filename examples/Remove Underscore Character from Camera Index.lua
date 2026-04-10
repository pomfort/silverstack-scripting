-- sst: ingest
-- MIT License. See LICENSE.txt

function onStampVideo(videoClip)
  local cameraIndex = videoClip:metadata():getCameraIndex()
  if cameraIndex == nil then return end
  local droppedTrailingUnderscores = string.gsub(cameraIndex, "_+$", "")
  videoClip:metadata():setCameraIndex(droppedTrailingUnderscores)
end
