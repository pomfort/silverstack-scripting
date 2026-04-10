-- sst: ingest
-- MIT License. See LICENSE.txt
-- Use case: Enforce a camera letter in the reel name

function onStampVideo(videoClip)
  local cameraIndex = videoClip:metadata():getCameraIndex()
  local reelName = videoClip:metadata():getReel()
  -- Exit early if any condition is true
  if cameraIndex == nil or reelName == nil
     or not reelName:match("%d") then
    return
  end

  -- Create a new reel name as combined string from the camera index (letter) and reel name
  videoClip:metadata():setReel(cameraIndex..reelName)
end
