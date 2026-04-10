-- sst: ingest
-- MIT License. See LICENSE.txt

function onStampVideo(videoClip)
  if videoClip:metadata():getCameraIndex() ~= nil then
    return
  end

  local cameraIndexLength<const> = 2
  local clipName = videoClip:metadata():getClipName()
  if clipName == nil then return end
  videoClip:metadata():setCameraIndex(string.sub(clipName, 1, cameraIndexLength))
end
