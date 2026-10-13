# Changelog

## Version 1.2 — Silverstack 9.4.0 - 2026-10-27

### Added

* `Parse CSV.lua` as a new default script that enables parsing of CSV files (also in `examples/`)
* `getTCforFrameIndex` to get the timecode that corresponds to a frame index
* `getFrameIndexForTC` to get the frame index that corresponds to a timecode
* Access and select a video clip's video tracks via
  * `getVideoTrack` to get the active video track
  * `setVideoTrack` to set the active video track by index
  * `getVideoTrackCount` to get the number of video tracks

### Changes

* `cuePoint:getFrame` is deprecated and replaced by `cuePoint:getFrameIndex`. Behavior and return value are unchanged.
* `cuePoint:setFrame` is deprecated and replaced by `cuePoint:setFrameIndex`. Behavior and arguments are unchanged.
* `setInOutPoint` is deprecated and replaced by `setInOutPointIndices([i|nil], [i|nil])`. The new function accepts frame indices only; the timecode arguments accepted by `setInOutPoint` are no longer supported. Convert timecode to a frame index with `getFrameIndexForTC` before calling it.
* `setCrop` additionally accepts arguments in the format `"1920x1080"` on top of `"0:0:1920:1080"`

## Version 1.1 — Silverstack 9.3.0 - 2026-07-21

### Added

* `setInOutPoint` and `resetInOutPoint` to change or reset a video clip's in and out points
* `getBin` to access the bin an asset belongs to, returning the new `Folder` type with
  * `getParent` to access the parent folder
  * `getName` to access the bin name
* `setCrop` to set a crop for a video clip
* Access a clip's custom RAW processing values via
  * `getCurrentExposureIndex`
  * `getCurrentWhitepoint`
  * `getCurrentTint`
* `getShutterAngleDegrees` to get the shutter angle in degrees
* `getTCformatFPS` to get the timecode format frame rate
* `hasTCformatDrop` to check for drop-frame timecode
* `hasDynamicMetadataExtracted` to check whether dynamic metadata was extracted
* `hasFlag` to get the flag/circled state as a boolean
* `hasVerificationState` to get the verification state as a boolean (nil = unverified, false = failed, true = verified)
* `hasWildTrack` to get the wild track state as a boolean

### Changes

Many metadata getters now accept an optional boolean parameter to return the unformatted raw value instead of the formatted string (return type changed from `String?` to `Any`):
* `getAnamorphic`
* `getAudioBitDepth`
* `getAudioSampleRate`
* `getAudioTrackCountExternal`
* `getAudioTrackCountInternal`
* `getCameraRollAngle`
* `getCameraTiltAngle`
* `getClipExposureIndex`
* `getClipTint`
* `getClipWhitepoint`
* `getCrop`
* `getCuePointsCount`
* `getDecodingColorSpace`
* `getDurationInFrames`
* `getDurationInSamples`
* `getDurationInSeconds`
* `getFileSize`
* `getFlip`
* `getFocalLength`
* `getFocusDistance`
* `getGradingMode`
* `getInOutDuration`
* `getLabel`
* `getNDopticalDensity`
* `getNativeISO`
* `getProcessedResolution`
* `getProjectFPS`
* `getRating`
* `getRecordingDate`
* `getRegistrationDate`
* `getResolution`
* `getRotation`
* `getSamplesSinceMidnight`
* `getSensorFPS`
* `getShootingDate`
* `getShutterTime`
* `getSourceCreationDate`

Several metadata setters now accept raw values in addition to formatted strings (argument and return type changed from `String` to `Any`):
* `setAnamorphic`
* `setCameraRollAngle`
* `setCameraTiltAngle`
* `setFlag`
* `setFlip`
* `setFocalLength`
* `setFocusDistance`
* `setLabel`
* `setNDopticalDensity`
* `setNativeISO`
* `setProjectFPS`
* `setRating`
* `setRecordingDate`
* `setRotation`
* `setShootingDate`

### Fixes

* `getLabel` incorrectly returned an integer as string instead of the actual label as string
* `getAudioCodec` always returned `nil`
* The reference now documents the parameters of the `CuePoint` setters `setFrame`, `setDuration`, `setName`, and `setType`, which were previously listed without arguments
* Clarified various metadata descriptions in the reference

## API Version 1.0 — Silverstack 9.2.0 - 2026-04-15

* Initial public release
