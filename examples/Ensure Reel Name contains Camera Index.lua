-- sst: ingest
-- MIT License. See LICENSE.txt

function onStampVideo(videoClip)
  local cameraIndex = videoClip:metadata():getCameraIndex()
  local reelName = videoClip:metadata():getReel()
  if cameraIndex == nil or reelName == nil
     or not reelName:match("%d") then
    return
  end

  videoClip:metadata():setReel(cameraIndex..reelName)
end
