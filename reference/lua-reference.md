# Silverstack Lua API

- [Types](#types)
  - [Asset](#type-asset)
  - [CuePoint](#type-cuepoint)
  - [FileResource](#type-fileresource)
  - [Folder](#type-folder)
  - [Metadata](#type-metadata)
  - [Volume](#type-volume)
- [Functions](#functions)

## Types

<a id="type-asset"></a>

### Asset

A representation of a video-, audio-clip, or document in the library.

#### `:addCuePoint`

```lua
addCuePoint(CuePoint.Type, String, Int, Int) -> CuePoint
```

Add a CuePoint to a video-clip asset.

| Parameter | Description |
|-----------|-------------|
| `CuePoint.Type` | CuePoint type. |
| `String` | Name |
| `Int` | Frame Index |
| `Int` | Duration in Frames |

#### `:getBin`

```lua
getBin() -> Folder?
```

Get containing Bin

#### `:getCuePoints`

```lua
getCuePoints() -> [CuePoint]?
```

Get CuePoints for video-clip asset.

#### `:getHeaderInfo`

```lua
getHeaderInfo() -> Any
```

Get a table of the header info

#### `:getResources`

```lua
getResources() -> [FileResource]
```

Get all FileResources associated with this Asset

#### `:getTranscodingSourceAsset`

```lua
getTranscodingSourceAsset() -> Asset?
```

Get the Asset this Asset was transcoded from.

#### `:isAudioClip`

```lua
isAudioClip() -> Bool
```

Check if asset is audio-clip asset.

#### `:isClip`

```lua
isClip() -> Bool
```

Check if asset is either audio- or video-clip asset.

#### `:isVideoClip`

```lua
isVideoClip() -> Bool
```

Check if asset is video-clip asset.

#### `:metadata`

```lua
metadata() -> Metadata?
```

Get metadata accessor

#### `:resetInOutPoint`

```lua
resetInOutPoint()
```

Remove in- and out points from video asset.

#### `:setInOutPoint`

```lua
setInOutPoint(Union<String, Int>?, Union<String, Int>?)
```

Set in- and/or out points of video assets. Out point must not lie before in point. Both points are inclusive to the range.

| Parameter | Description |
|-----------|-------------|
| `Union<String, Int>?` | Timecode or 1-based frame number of in point. nil to leave unchanged. |
| `Union<String, Int>?` | Timecode or 1-based frame number of out point. nil to leave unchanged. |

<a id="type-cuepoint"></a>

### CuePoint

Cue Point

#### `:getDuration`

```lua
getDuration() -> Int
```

Get Cue Point duration in frames.

#### `:getFrame`

```lua
getFrame() -> Int
```

Get Cue Point position in frames.

#### `:getName`

```lua
getName() -> String
```

Get Cue Point name.

#### `:getType`

```lua
getType() -> CuePoint.Type?
```

Get Cue Point type.

#### `:setDuration`

```lua
setDuration(Int)
```

Set Cue Point duration in frames.

| Parameter | Description |
|-----------|-------------|
| `Int` |  |

#### `:setFrame`

```lua
setFrame(Int)
```

Set Cue Point position in frames.

| Parameter | Description |
|-----------|-------------|
| `Int` |  |

#### `:setName`

```lua
setName(String)
```

Set Cue Point name.

| Parameter | Description |
|-----------|-------------|
| `String` |  |

#### `:setType`

```lua
setType(CuePoint.Type)
```

Set Cue Point type.

| Parameter | Description |
|-----------|-------------|
| `CuePoint.Type` |  |

#### `.Type`

`compression` `content` `corruptFrame` `exposure` `flicker` `mark` `pixel` `sharpness` `slate`

<a id="type-fileresource"></a>

### FileResource

#### `:getPath`

```lua
getPath() -> String?
```

Get absolute file path to resource.

#### `:getVolume`

```lua
getVolume() -> Volume?
```

Get volume resource.

<a id="type-folder"></a>

### Folder

#### `:getName`

```lua
getName() -> String?
```

Get Bin/Folder name

#### `:getParent`

```lua
getParent() -> Folder?
```

Get parent Folder of the Bin/Folder

<a id="type-metadata"></a>

### Metadata

#### `:getACESidt`

```lua
getACESidt() -> String?
```

Get metadatum for ACES Input Transform

#### `:getACESidtID`

```lua
getACESidtID() -> String?
```

Get metadatum for ACES Input TransformID

#### `:getACESodt`

```lua
getACESodt() -> String?
```

Get metadatum for ACES Output Transform

#### `:getACESodtID`

```lua
getACESodtID() -> String?
```

Get metadatum for ACES Output TransformID

#### `:getACESversion`

```lua
getACESversion() -> String?
```

Get metadatum for ACES version

#### `:getActors`

```lua
getActors() -> String?
```

Get metadatum for Actors

#### `:getAnamorphic`

```lua
getAnamorphic(Bool?) -> Any
```

Get metadatum for Anamorphic desqueeze

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getAudioBitDepth`

```lua
getAudioBitDepth(Bool?) -> Any
```

Get metadatum for Audio bit depth

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getAudioCodec`

```lua
getAudioCodec() -> String?
```

Get metadatum for Codec of internal audio

#### `:getAudioSampleRate`

```lua
getAudioSampleRate(Bool?) -> Any
```

Get metadatum for Audio sample rate

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getAudioSources`

```lua
getAudioSources() -> String?
```

Get metadatum for Bin and track names of synced audio clips

#### `:getAudioTrackCountExternal`

```lua
getAudioTrackCountExternal(Bool?) -> Any
```

Get metadatum for no description

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getAudioTrackCountInternal`

```lua
getAudioTrackCountInternal(Bool?) -> Any
```

Get metadatum for no description

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getAudioTrackNames`

```lua
getAudioTrackNames() -> String?
```

Get metadatum for Audio track names

#### `:getAudioTracks`

```lua
getAudioTracks() -> String?
```

Get metadatum for Summary of audio tracks

#### `:getCameraAssistant`

```lua
getCameraAssistant() -> String?
```

Get metadatum for Camera Assistant

#### `:getCameraAssistant2`

```lua
getCameraAssistant2() -> String?
```

Get metadatum for Second camera assistant

#### `:getCameraIndex`

```lua
getCameraIndex() -> String?
```

Get metadatum for Camera index letter or number

#### `:getCameraOrientation`

```lua
getCameraOrientation() -> String?
```

Get metadatum for Camera orientation

#### `:getCameraRollAngle`

```lua
getCameraRollAngle(Bool?) -> Any
```

Get metadatum for Camera roll

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getCameraTiltAngle`

```lua
getCameraTiltAngle(Bool?) -> Any
```

Get metadatum for Camera tilt

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getCaption`

```lua
getCaption() -> String?
```

Get metadatum for Caption

#### `:getCinematographer`

```lua
getCinematographer() -> String?
```

Get metadatum for Cinematographer

#### `:getClipExposureIndex`

```lua
getClipExposureIndex(Bool?) -> Any
```

Get metadatum for Exposure Index, ISO or ASA value from clip metadata

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getClipName`

```lua
getClipName() -> String?
```

Get metadatum for (Clip) Name

#### `:getClipTint`

```lua
getClipTint(Bool?) -> Any
```

Get metadatum for Tint from clip metadata

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getClipWhitepoint`

```lua
getClipWhitepoint(Bool?) -> Any
```

Get metadatum for White point from clip metadata

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getCodec`

```lua
getCodec() -> String?
```

Get metadatum for Codec

#### `:getComment`

```lua
getComment() -> String?
```

Get metadatum for Comment

#### `:getCopyrightInfo`

```lua
getCopyrightInfo() -> String?
```

Get metadatum for Copyright information

#### `:getCrewUnit`

```lua
getCrewUnit() -> String?
```

Get metadatum for Crew unit

#### `:getCrop`

```lua
getCrop(Bool?) -> Any
```

Get metadatum for Applied crop

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getCuePointsCount`

```lua
getCuePointsCount(Bool?) -> Any
```

Get metadatum for Number of cue points

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getCurrentExposureIndex`

```lua
getCurrentExposureIndex(Bool?) -> Any
```

Get metadatum for EI/ISO currently used for RAW processing (shows for non-raw clip EI/ISO form clip metadata)

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getCurrentTint`

```lua
getCurrentTint(Bool?) -> Any
```

Get metadatum for Tint currently used for processing (shows for non-raw clip EI/ISO from clip metadata)

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getCurrentWhitepoint`

```lua
getCurrentWhitepoint(Bool?) -> Any
```

Get metadatum for White point currently used for RAW processing (shows for non-raw clip EI/ISO from clip metadata)

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getCustom1`

```lua
getCustom1() -> String?
```

Get metadatum for Custom field 1 (customizeable per project in prefs)

#### `:getCustom2`

```lua
getCustom2() -> String?
```

Get metadatum for Custom field 2 (customizeable per project in prefs)

#### `:getCustom3`

```lua
getCustom3() -> String?
```

Get metadatum for Custom field 3 (customizeable per project in prefs)

#### `:getCustom4`

```lua
getCustom4() -> String?
```

Get metadatum for Custom field 4 (customizeable per project in prefs)

#### `:getCustom5`

```lua
getCustom5() -> String?
```

Get metadatum for Custom field 5 (customizeable per project in prefs)

#### `:getCustom6`

```lua
getCustom6() -> String?
```

Get metadatum for Custom field 6 (customizeable per project in prefs)

#### `:getDIT`

```lua
getDIT() -> String?
```

Get metadatum for Digital image technican

#### `:getDataManager`

```lua
getDataManager() -> String?
```

Get metadatum for Data manager

#### `:getDayNight`

```lua
getDayNight() -> String?
```

Get metadatum for Day/Night

#### `:getDecodingColorSpace`

```lua
getDecodingColorSpace(Bool?) -> Any
```

Get metadatum for Used for grading

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getDirector`

```lua
getDirector() -> String?
```

Get metadatum for Director

#### `:getDistanceToObject`

```lua
getDistanceToObject() -> String?
```

Get metadatum for Distance to object

#### `:getDurationInFrames`

```lua
getDurationInFrames(Bool?) -> Any
```

Get metadatum for Duration (frames)

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getDurationInSamples`

```lua
getDurationInSamples(Bool?) -> Any
```

Get metadatum for no description

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getDurationInSeconds`

```lua
getDurationInSeconds(Bool?) -> Any
```

Get metadatum for Duration (time)

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getDynamicMetadataExtracted` — *deprecated: Prefer hasDynamicMetadataExtracted method.*

```lua
getDynamicMetadataExtracted() -> String?
```

Get metadatum for Dynamic metatdata extracted

#### `:getEpisode`

```lua
getEpisode() -> String?
```

Get metadatum for Episode

#### `:getFileSize`

```lua
getFileSize(Bool?) -> Any
```

Get metadatum for File size. Raw value in bytes.

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getFileType`

```lua
getFileType() -> String?
```

Get metadatum for File type

#### `:getFlag` — *deprecated: Prefer hasFlag method.*

```lua
getFlag() -> String?
```

Get metadatum for Flag/Circled

#### `:getFlip`

```lua
getFlip(Bool?) -> Any
```

Get metadatum for Flip. Raw values defined in `asset.Metadata.FlipMode`.

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getFocalLength`

```lua
getFocalLength(Bool?) -> Any
```

Get metadatum for Focal length

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getFocusDistance`

```lua
getFocusDistance(Bool?) -> Any
```

Get metadatum for Focus distance

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getFstop`

```lua
getFstop() -> String?
```

Get metadatum for F-Stop

#### `:getGPSposition`

```lua
getGPSposition() -> String?
```

Get metadatum for GPS position

#### `:getGradingMode`

```lua
getGradingMode(Bool?) -> Any
```

Get metadatum for Grading mode

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getHashC4`

```lua
getHashC4() -> String?
```

Get metadatum for C4ID hash of file

#### `:getHashMD5`

```lua
getHashMD5() -> String?
```

Get metadatum for MD5 hash of file

#### `:getHashSHA1`

```lua
getHashSHA1() -> String?
```

Get metadatum for SHA1 hash of file

#### `:getHashXXH128`

```lua
getHashXXH128() -> String?
```

Get metadatum for XXH128 hash of file

#### `:getHashXXH3`

```lua
getHashXXH3() -> String?
```

Get metadatum for XXH3 hash of file

#### `:getHashXXH64`

```lua
getHashXXH64() -> String?
```

Get metadatum for XXH64 (BE) hash of file

#### `:getHashes`

```lua
getHashes() -> String?
```

Get metadatum for Available checksums

#### `:getInOutDuration`

```lua
getInOutDuration(Bool?) -> Any
```

Get metadatum for Duration (frames) between In and Out point

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getInteriorExterior`

```lua
getInteriorExterior() -> String?
```

Get metadatum for Interior/Exterior

#### `:getLabel`

```lua
getLabel(Bool?) -> Any
```

Get metadatum for Label. Raw value defined in `asset.Metadata.LabelColor`. Formatted value customizable per project in prefs.

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getLensFilter`

```lua
getLensFilter() -> String?
```

Get metadatum for Lens filter

#### `:getLensModel`

```lua
getLensModel() -> String?
```

Get metadatum for Lens model

#### `:getLensSerialNumber`

```lua
getLensSerialNumber() -> String?
```

Get metadatum for Lens serial number

#### `:getLensZEISScorrection`

```lua
getLensZEISScorrection() -> String?
```

Get metadatum for ZEISS lens correction data

#### `:getLocation`

```lua
getLocation() -> String?
```

Get metadatum for Location

#### `:getLookInfo`

```lua
getLookInfo() -> String?
```

Get metadatum for Look info from camera

#### `:getLookSource`

```lua
getLookSource() -> String?
```

Get metadatum for Selected look source

#### `:getLookSourceName`

```lua
getLookSourceName() -> String?
```

Get metadatum for Name of look source

#### `:getNDopticalDensity`

```lua
getNDopticalDensity(Bool?) -> Any
```

Get metadatum for Neutral-density filter (optical density)

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getNativeISO`

```lua
getNativeISO(Bool?) -> Any
```

Get metadatum for Native ISO

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getNodesCDL`

```lua
getNodesCDL() -> String?
```

Get metadatum for CDL values: Slope Offset Power

#### `:getNodesLMT`

```lua
getNodesLMT() -> String?
```

Get metadatum for LMT Nodes

#### `:getNodesLUT`

```lua
getNodesLUT() -> String?
```

Get metadatum for List of applied LUTs

#### `:getNodesSAT`

```lua
getNodesSAT() -> String?
```

Get metadatum for Saturation nodes

#### `:getProcessedResolution`

```lua
getProcessedResolution(Bool?) -> Any
```

Get metadatum for Clip resolution after desqueeze, crop & rotate

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getProducer`

```lua
getProducer() -> String?
```

Get metadatum for Producer

#### `:getProductionCompany`

```lua
getProductionCompany() -> String?
```

Get metadatum for Production Company

#### `:getProjectFPS`

```lua
getProjectFPS(Bool?) -> Any
```

Get metadatum for Project / playback FPS

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getRating`

```lua
getRating(Bool?) -> Any
```

Get metadatum for Rating

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getRecorderFirmwareVersion`

```lua
getRecorderFirmwareVersion() -> String?
```

Get metadatum for Recording device firmware version

#### `:getRecorderID`

```lua
getRecorderID() -> String?
```

Get metadatum for Recording device model ID

#### `:getRecorderManufacturer`

```lua
getRecorderManufacturer() -> String?
```

Get metadatum for Recording device manufacturer

#### `:getRecorderModel`

```lua
getRecorderModel() -> String?
```

Get metadatum for Recording device model

#### `:getRecorderSerialNumber`

```lua
getRecorderSerialNumber() -> String?
```

Get metadatum for Recording device serial number

#### `:getRecordingColorSpace`

```lua
getRecordingColorSpace() -> String?
```

Get metadatum for Recording color space

#### `:getRecordingDate`

```lua
getRecordingDate(Bool?) -> Any
```

Get metadatum for Recording date from recorder

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getReel`

```lua
getReel() -> String?
```

Get metadatum for Reel/Tape

#### `:getReferenceGamutCompression`

```lua
getReferenceGamutCompression() -> String?
```

Get metadatum for Reference Gamut Compression

#### `:getRegistrationDate`

```lua
getRegistrationDate(Bool?) -> Any
```

Get metadatum for Date of ingest in library

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getResolution`

```lua
getResolution(Bool?) -> Any
```

Get metadatum for Clip resolution before desqueeze, crop & rotate

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getRotation`

```lua
getRotation(Bool?) -> Any
```

Get metadatum for Applied rotation. Raw values defined in `asset.Metadata.RotationMode`.

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getSamplesSinceMidnight`

```lua
getSamplesSinceMidnight(Bool?) -> Any
```

Get metadatum for Samples since midnight

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getScan`

```lua
getScan() -> String?
```

Get metadatum for Scan type (progressive / interlaced)

#### `:getScene`

```lua
getScene() -> String?
```

Get metadatum for Scene

#### `:getScriptSupervisor`

```lua
getScriptSupervisor() -> String?
```

Get metadatum for Script supervisor

#### `:getSeason`

```lua
getSeason() -> String?
```

Get metadatum for Season

#### `:getSensorFPS`

```lua
getSensorFPS(Bool?) -> Any
```

Get metadatum for Sensor FPS of camera

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getShootingDate`

```lua
getShootingDate(Bool?) -> Any
```

Get metadatum for Shooting Date

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getShootingDay`

```lua
getShootingDay() -> String?
```

Get metadatum for Shooting day

#### `:getShot`

```lua
getShot() -> String?
```

Get metadatum for Shot

#### `:getShotDescriptors`

```lua
getShotDescriptors() -> String?
```

Get metadatum for Shot descriptors

#### `:getShotID`

```lua
getShotID() -> String?
```

Get metadatum for ShotID for referencing clip information (e.g. in ShotHub)

#### `:getShothubCreatedBy`

```lua
getShothubCreatedBy() -> String?
```

Get metadatum for Added to ShotHub by user

#### `:getShutterAngle`

```lua
getShutterAngle() -> String?
```

Get metadatum for Shutter angle (degrees)

#### `:getShutterAngleDegrees`

```lua
getShutterAngleDegrees(Bool?) -> Any
```

Get metadatum for Shutter angle in degrees

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getShutterTime`

```lua
getShutterTime(Bool?) -> Any
```

Get metadatum for Shutter (exposure time)

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getSoundMixer`

```lua
getSoundMixer() -> String?
```

Get metadatum for Sound mixer

#### `:getSoundroll`

```lua
getSoundroll() -> String?
```

Get metadatum for Tape name of synced audio clip

#### `:getSourceCreationDate`

```lua
getSourceCreationDate(Bool?) -> Any
```

Get metadatum for Creation date of source file

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getTCaudioOffsets`

```lua
getTCaudioOffsets() -> String?
```

Get metadatum for Offset between audio and video timecodes

#### `:getTCend`

```lua
getTCend() -> String?
```

Get metadatum for End timecode of clip (exclusive)

#### `:getTCendExtAudio`

```lua
getTCendExtAudio() -> String?
```

Get metadatum for Timecode of external audio clip at last video frame (exclusive)

#### `:getTCformat`

```lua
getTCformat() -> String?
```

Get metadatum for Timecode format

#### `:getTCformatFPS`

```lua
getTCformatFPS(Bool?) -> Any
```

Get metadatum for no description

| Parameter | Description |
|-----------|-------------|
| `Bool?` | pass true to get unformatted raw value |

#### `:getTCinPoint`

```lua
getTCinPoint() -> String?
```

Get metadatum for Timecode of In point (inclusive)

#### `:getTCoutPoint`

```lua
getTCoutPoint() -> String?
```

Get metadatum for Timecode of Out point (inclusive)

#### `:getTCstart`

```lua
getTCstart() -> String?
```

Get metadatum for Start timecode of clip

#### `:getTCstartExtAudio`

```lua
getTCstartExtAudio() -> String?
```

Get metadatum for Timecode of external audio clip at first video frame

#### `:getTCsyncSlate`

```lua
getTCsyncSlate() -> String?
```

Get metadatum for Timecode of slate marker

#### `:getTags`

```lua
getTags() -> String?
```

Get metadatum for Tags

#### `:getTake`

```lua
getTake() -> String?
```

Get metadatum for Take

#### `:getTape`

```lua
getTape() -> String?
```

Get metadatum for Audio tape name

#### `:getTstop`

```lua
getTstop() -> String?
```

Get metadatum for T-Stop

#### `:getVerificationState` — *deprecated: Prefer hasVerificationState method.*

```lua
getVerificationState() -> String?
```

Get metadatum for Verification State. Raw value: nil=unverified, false=failed, true=verified

#### `:getWildTrack` — *deprecated: Prefer hasWildTrack method.*

```lua
getWildTrack() -> String?
```

Get metadatum for Wild track

#### `:hasDynamicMetadataExtracted`

```lua
hasDynamicMetadataExtracted() -> Bool
```

Get boolean value for Dynamic metatdata extracted

#### `:hasFlag`

```lua
hasFlag() -> Bool
```

Get boolean value for Flag/Circled

#### `:hasTCformatDrop`

```lua
hasTCformatDrop() -> Bool
```

Get boolean value for no description

#### `:hasVerificationState`

```lua
hasVerificationState() -> Bool?
```

Get boolean value for Verification State. Raw value: nil=unverified, false=failed, true=verified

#### `:hasWildTrack`

```lua
hasWildTrack() -> Bool
```

Get boolean value for Wild track

#### `:setActors`

```lua
setActors(String) -> String?
```

Set metadatum for Actors

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setAnamorphic`

```lua
setAnamorphic(Any) -> Any
```

Set metadatum for Anamorphic desqueeze

| Parameter | Description |
|-----------|-------------|
| `Any` | Formatted String or raw value |

#### `:setCameraAssistant`

```lua
setCameraAssistant(String) -> String?
```

Set metadatum for Camera Assistant

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setCameraAssistant2`

```lua
setCameraAssistant2(String) -> String?
```

Set metadatum for Second camera assistant

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setCameraIndex`

```lua
setCameraIndex(String) -> String?
```

Set metadatum for Camera index letter or number

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setCameraOrientation`

```lua
setCameraOrientation(String) -> String?
```

Set metadatum for Camera orientation

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setCameraRollAngle`

```lua
setCameraRollAngle(Any) -> Any
```

Set metadatum for Camera roll

| Parameter | Description |
|-----------|-------------|
| `Any` | Formatted String or raw value |

#### `:setCameraTiltAngle`

```lua
setCameraTiltAngle(Any) -> Any
```

Set metadatum for Camera tilt

| Parameter | Description |
|-----------|-------------|
| `Any` | Formatted String or raw value |

#### `:setCaption`

```lua
setCaption(String) -> String?
```

Set metadatum for Caption

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setCinematographer`

```lua
setCinematographer(String) -> String?
```

Set metadatum for Cinematographer

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setClipName`

```lua
setClipName(String) -> String?
```

Set metadatum for (Clip) Name

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setComment`

```lua
setComment(String) -> String?
```

Set metadatum for Comment

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setCopyrightInfo`

```lua
setCopyrightInfo(String) -> String?
```

Set metadatum for Copyright information

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setCrewUnit`

```lua
setCrewUnit(String) -> String?
```

Set metadatum for Crew unit

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setCrop`

```lua
setCrop(Any) -> Any
```

Set metadatum for Applied crop

| Parameter | Description |
|-----------|-------------|
| `Any` | Formatted String or raw value |

#### `:setCustom1`

```lua
setCustom1(String) -> String?
```

Set metadatum for Custom field 1 (customizeable per project in prefs)

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setCustom2`

```lua
setCustom2(String) -> String?
```

Set metadatum for Custom field 2 (customizeable per project in prefs)

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setCustom3`

```lua
setCustom3(String) -> String?
```

Set metadatum for Custom field 3 (customizeable per project in prefs)

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setCustom4`

```lua
setCustom4(String) -> String?
```

Set metadatum for Custom field 4 (customizeable per project in prefs)

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setCustom5`

```lua
setCustom5(String) -> String?
```

Set metadatum for Custom field 5 (customizeable per project in prefs)

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setCustom6`

```lua
setCustom6(String) -> String?
```

Set metadatum for Custom field 6 (customizeable per project in prefs)

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setDIT`

```lua
setDIT(String) -> String?
```

Set metadatum for Digital image technican

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setDataManager`

```lua
setDataManager(String) -> String?
```

Set metadatum for Data manager

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setDayNight`

```lua
setDayNight(String) -> String?
```

Set metadatum for Day/Night

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setDirector`

```lua
setDirector(String) -> String?
```

Set metadatum for Director

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setDistanceToObject`

```lua
setDistanceToObject(String) -> String?
```

Set metadatum for Distance to object

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setEpisode`

```lua
setEpisode(String) -> String?
```

Set metadatum for Episode

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setFlag`

```lua
setFlag(Any) -> Any
```

Set metadatum for Flag/Circled

| Parameter | Description |
|-----------|-------------|
| `Any` | Bool value |

#### `:setFlip`

```lua
setFlip(Any) -> Any
```

Set metadatum for Flip. Raw values defined in `asset.Metadata.FlipMode`.

| Parameter | Description |
|-----------|-------------|
| `Any` | Formatted String or raw value |

#### `:setFocalLength`

```lua
setFocalLength(Any) -> Any
```

Set metadatum for Focal length

| Parameter | Description |
|-----------|-------------|
| `Any` | Formatted String or raw value |

#### `:setFocusDistance`

```lua
setFocusDistance(Any) -> Any
```

Set metadatum for Focus distance

| Parameter | Description |
|-----------|-------------|
| `Any` | Formatted String or raw value |

#### `:setFstop`

```lua
setFstop(String) -> String?
```

Set metadatum for F-Stop

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setGPSposition`

```lua
setGPSposition(String) -> String?
```

Set metadatum for GPS position

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setInteriorExterior`

```lua
setInteriorExterior(String) -> String?
```

Set metadatum for Interior/Exterior

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setLabel`

```lua
setLabel(Any) -> Any
```

Set metadatum for Label. Raw value defined in `asset.Metadata.LabelColor`. Formatted value customizable per project in prefs.

| Parameter | Description |
|-----------|-------------|
| `Any` | Formatted String or raw value |

#### `:setLensFilter`

```lua
setLensFilter(String) -> String?
```

Set metadatum for Lens filter

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setLensModel`

```lua
setLensModel(String) -> String?
```

Set metadatum for Lens model

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setLensSerialNumber`

```lua
setLensSerialNumber(String) -> String?
```

Set metadatum for Lens serial number

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setLocation`

```lua
setLocation(String) -> String?
```

Set metadatum for Location

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setNDopticalDensity`

```lua
setNDopticalDensity(Any) -> Any
```

Set metadatum for Neutral-density filter (optical density)

| Parameter | Description |
|-----------|-------------|
| `Any` | Formatted String or raw value |

#### `:setNativeISO`

```lua
setNativeISO(Any) -> Any
```

Set metadatum for Native ISO

| Parameter | Description |
|-----------|-------------|
| `Any` | Formatted String or raw value |

#### `:setProducer`

```lua
setProducer(String) -> String?
```

Set metadatum for Producer

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setProductionCompany`

```lua
setProductionCompany(String) -> String?
```

Set metadatum for Production Company

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setProjectFPS`

```lua
setProjectFPS(Any) -> Any
```

Set metadatum for Project / playback FPS

| Parameter | Description |
|-----------|-------------|
| `Any` | Formatted String or raw value |

#### `:setRating`

```lua
setRating(Any) -> Any
```

Set metadatum for Rating

| Parameter | Description |
|-----------|-------------|
| `Any` | Formatted String or raw value |

#### `:setRecordingDate`

```lua
setRecordingDate(Any) -> Any
```

Set metadatum for Recording date from recorder

| Parameter | Description |
|-----------|-------------|
| `Any` | Formatted String or raw value |

#### `:setReel`

```lua
setReel(String) -> String?
```

Set metadatum for Reel/Tape

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setRotation`

```lua
setRotation(Any) -> Any
```

Set metadatum for Applied rotation. Raw values defined in `asset.Metadata.RotationMode`.

| Parameter | Description |
|-----------|-------------|
| `Any` | Formatted String or raw value |

#### `:setScene`

```lua
setScene(String) -> String?
```

Set metadatum for Scene

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setScriptSupervisor`

```lua
setScriptSupervisor(String) -> String?
```

Set metadatum for Script supervisor

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setSeason`

```lua
setSeason(String) -> String?
```

Set metadatum for Season

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setShootingDate`

```lua
setShootingDate(Any) -> Any
```

Set metadatum for Shooting Date

| Parameter | Description |
|-----------|-------------|
| `Any` | Formatted String or raw value |

#### `:setShootingDay`

```lua
setShootingDay(String) -> String?
```

Set metadatum for Shooting day

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setShot`

```lua
setShot(String) -> String?
```

Set metadatum for Shot

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setShotDescriptors`

```lua
setShotDescriptors(String) -> String?
```

Set metadatum for Shot descriptors

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setSoundMixer`

```lua
setSoundMixer(String) -> String?
```

Set metadatum for Sound mixer

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setTCstart`

```lua
setTCstart(String) -> String?
```

Set metadatum for Start timecode of clip

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setTake`

```lua
setTake(String) -> String?
```

Set metadatum for Take

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setTape`

```lua
setTape(String) -> String?
```

Set metadatum for Audio tape name

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `:setTstop`

```lua
setTstop(String) -> String?
```

Set metadatum for T-Stop

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

#### `.FlipMode`

Raw values for getFlip, setFlip.

`both` `horizontal` `none` `vertical`

#### `.GradingMode`

Raw values for getGradingMode.

`ACES_CDL` `ACES_CDLadvanced` `ACESfreestyle` `AmiraCompatible` `ArriCAPsimple` `CDLadvanced` `CDLandLUT` `VaricamCompatible` `freestyle` `unknown`

#### `.LabelColor`

Raw values for getLabel, setLabel.

`blue` `gray` `green` `none` `orange` `purple` `red` `yellow`

#### `.RotationMode`

Raw values for getRotation, setRotation.

`left` `none` `right`

<a id="type-volume"></a>

### Volume

#### `:getLabel`

```lua
getLabel() -> String?
```

Get the label of the Volume.

#### `:getMountPath`

```lua
getMountPath() -> String?
```

Get the mount path of the Volume.

## Functions

#### `help`

```lua
sst.help(Union<String, Table, Userdata, Function>?)
```

Print a listing of all available symbols within sst namespace or help about a symbol.

| Parameter | Description |
|-----------|-------------|
| `Union<String, Table, Userdata, Function>?` | Symbol name |

#### `utils.slack.getAvailableChannels`

```lua
sst.utils.slack.getAvailableChannels() -> [String]
```

Get available Slack channels. Add new channels in Application Settings > Accounts.

#### `utils.slack.sendMessage`

```lua
sst.utils.slack.sendMessage(String, String)
```

Send a message via Slack

| Parameter | Description |
|-----------|-------------|
| `String` | Receiver channel |
| `String` | Message to send |
