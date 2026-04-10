# Silverstack Lua API

[Online Reference](https://kb.pomfort.com/goto/sst-developer-api)

- [Types](#types)
  - [Asset](#asset)
  - [CuePoint](#cuepoint)
  - [FileResource](#fileresource)
  - [Metadata](#metadata)
  - [Volume](#volume)
- [Functions](#functions)

## Types

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

**Returns:** `CuePoint`

#### `:getCuePoints`

```lua
getCuePoints() -> [CuePoint]?
```

Get CuePoints for video-clip asset.

**Returns:** `[CuePoint]?`

#### `:getHeaderInfo`

```lua
getHeaderInfo() -> Any
```

Get a table of the header info

**Returns:** `Any`

#### `:getResources`

```lua
getResources() -> [FileResource]
```

Get all FileResources associated with this Asset

**Returns:** `[FileResource]`

#### `:getTranscodingSourceAsset`

```lua
getTranscodingSourceAsset() -> Asset?
```

Get the Asset this Asset was transcoded from.

**Returns:** `Asset?`

#### `:isAudioClip`

```lua
isAudioClip() -> Bool
```

Check if asset is audio-clip asset.

**Returns:** `Bool`

#### `:isClip`

```lua
isClip() -> Bool
```

Check if asset is either audio- or video-clip asset.

**Returns:** `Bool`

#### `:isVideoClip`

```lua
isVideoClip() -> Bool
```

Check if asset is video-clip asset.

**Returns:** `Bool`

#### `:metadata`

```lua
metadata() -> Metadata?
```

Get metadata accessor

**Returns:** `Metadata?`

### CuePoint

Cue Point

#### `:getDuration`

```lua
getDuration() -> Int
```

Get Cue Point duration in frames.

**Returns:** `Int`

#### `:getFrame`

```lua
getFrame() -> Int
```

Get Cue Point position in frames.

**Returns:** `Int`

#### `:getName`

```lua
getName() -> String
```

Get Cue Point name.

**Returns:** `String`

#### `:getType`

```lua
getType() -> CuePoint.Type?
```

Get Cue Point type.

**Returns:** `CuePoint.Type?`

#### `:setDuration`

```lua
setDuration()
```

Set Cue Point duration in frames.

#### `:setFrame`

```lua
setFrame()
```

Set Cue Point position in frames.

#### `:setName`

```lua
setName()
```

Set Cue Point name.

#### `:setType`

```lua
setType()
```

Set Cue Point type.

#### `.Type`

`compression` `content` `corruptFrame` `exposure` `flicker` `mark` `pixel` `sharpness` `slate`

### FileResource

#### `:getPath`

```lua
getPath() -> String?
```

Get absolute file path to resource.

**Returns:** `String?`

#### `:getVolume`

```lua
getVolume() -> Volume?
```

Get volume resource.

**Returns:** `Volume?`

### Metadata

#### `:getACESidt`

```lua
getACESidt() -> String?
```

Get metadatum for ACES Input Transform

**Returns:** `String?`

#### `:getACESidtID`

```lua
getACESidtID() -> String?
```

Get metadatum for ACES Input TransformID

**Returns:** `String?`

#### `:getACESodt`

```lua
getACESodt() -> String?
```

Get metadatum for ACES Output Transform

**Returns:** `String?`

#### `:getACESodtID`

```lua
getACESodtID() -> String?
```

Get metadatum for ACES Output TransformID

**Returns:** `String?`

#### `:getACESversion`

```lua
getACESversion() -> String?
```

Get metadatum for ACES version

**Returns:** `String?`

#### `:getActors`

```lua
getActors() -> String?
```

Get metadatum for Actors

**Returns:** `String?`

#### `:getAnamorphic`

```lua
getAnamorphic() -> String?
```

Get metadatum for Anamorphic desqueeze

**Returns:** `String?`

#### `:getAudioBitDepth`

```lua
getAudioBitDepth() -> String?
```

Get metadatum for Audio bit depth

**Returns:** `String?`

#### `:getAudioCodec`

```lua
getAudioCodec() -> String?
```

Get metadatum for Codec of internal audio

**Returns:** `String?`

#### `:getAudioSampleRate`

```lua
getAudioSampleRate() -> String?
```

Get metadatum for Audio sample rate

**Returns:** `String?`

#### `:getAudioSources`

```lua
getAudioSources() -> String?
```

Get metadatum for Bin and track names of synced audio clips

**Returns:** `String?`

#### `:getAudioTrackCountExternal`

```lua
getAudioTrackCountExternal() -> String?
```

Get metadatum for no description

**Returns:** `String?`

#### `:getAudioTrackCountInternal`

```lua
getAudioTrackCountInternal() -> String?
```

Get metadatum for no description

**Returns:** `String?`

#### `:getAudioTrackNames`

```lua
getAudioTrackNames() -> String?
```

Get metadatum for Audio track names

**Returns:** `String?`

#### `:getAudioTracks`

```lua
getAudioTracks() -> String?
```

Get metadatum for Summary of audio tracks

**Returns:** `String?`

#### `:getCameraAssistant`

```lua
getCameraAssistant() -> String?
```

Get metadatum for Camera Assistant

**Returns:** `String?`

#### `:getCameraAssistant2`

```lua
getCameraAssistant2() -> String?
```

Get metadatum for Second camera assistant

**Returns:** `String?`

#### `:getCameraIndex`

```lua
getCameraIndex() -> String?
```

Get metadatum for Camera index letter or number

**Returns:** `String?`

#### `:getCameraOrientation`

```lua
getCameraOrientation() -> String?
```

Get metadatum for Camera orientation

**Returns:** `String?`

#### `:getCameraRollAngle`

```lua
getCameraRollAngle() -> String?
```

Get metadatum for Camera roll

**Returns:** `String?`

#### `:getCameraTiltAngle`

```lua
getCameraTiltAngle() -> String?
```

Get metadatum for Camera tilt

**Returns:** `String?`

#### `:getCaption`

```lua
getCaption() -> String?
```

Get metadatum for Caption

**Returns:** `String?`

#### `:getCinematographer`

```lua
getCinematographer() -> String?
```

Get metadatum for Cinematographer

**Returns:** `String?`

#### `:getClipExposureIndex`

```lua
getClipExposureIndex() -> String?
```

Get metadatum for Exposure Index, ISO or ASA value from clip metadata

**Returns:** `String?`

#### `:getClipName`

```lua
getClipName() -> String?
```

Get metadatum for (Clip) Name

**Returns:** `String?`

#### `:getClipTint`

```lua
getClipTint() -> String?
```

Get metadatum for Tint from clip metadata

**Returns:** `String?`

#### `:getClipWhitepoint`

```lua
getClipWhitepoint() -> String?
```

Get metadatum for White point from clip metadata

**Returns:** `String?`

#### `:getCodec`

```lua
getCodec() -> String?
```

Get metadatum for Codec

**Returns:** `String?`

#### `:getComment`

```lua
getComment() -> String?
```

Get metadatum for Comment

**Returns:** `String?`

#### `:getCopyrightInfo`

```lua
getCopyrightInfo() -> String?
```

Get metadatum for Copyright information

**Returns:** `String?`

#### `:getCrewUnit`

```lua
getCrewUnit() -> String?
```

Get metadatum for Crew unit

**Returns:** `String?`

#### `:getCrop`

```lua
getCrop() -> String?
```

Get metadatum for Applied crop

**Returns:** `String?`

#### `:getCuePointsCount`

```lua
getCuePointsCount() -> String?
```

Get metadatum for Number of cue points

**Returns:** `String?`

#### `:getCustom1`

```lua
getCustom1() -> String?
```

Get metadatum for Custom field 1 (customizeable per project in prefs)

**Returns:** `String?`

#### `:getCustom2`

```lua
getCustom2() -> String?
```

Get metadatum for Custom field 2 (customizeable per project in prefs)

**Returns:** `String?`

#### `:getCustom3`

```lua
getCustom3() -> String?
```

Get metadatum for Custom field 3 (customizeable per project in prefs)

**Returns:** `String?`

#### `:getCustom4`

```lua
getCustom4() -> String?
```

Get metadatum for Custom field 4 (customizeable per project in prefs)

**Returns:** `String?`

#### `:getCustom5`

```lua
getCustom5() -> String?
```

Get metadatum for Custom field 5 (customizeable per project in prefs)

**Returns:** `String?`

#### `:getCustom6`

```lua
getCustom6() -> String?
```

Get metadatum for Custom field 6 (customizeable per project in prefs)

**Returns:** `String?`

#### `:getDIT`

```lua
getDIT() -> String?
```

Get metadatum for Digital image technican

**Returns:** `String?`

#### `:getDataManager`

```lua
getDataManager() -> String?
```

Get metadatum for Data manager

**Returns:** `String?`

#### `:getDayNight`

```lua
getDayNight() -> String?
```

Get metadatum for Day/Night

**Returns:** `String?`

#### `:getDecodingColorSpace`

```lua
getDecodingColorSpace() -> String?
```

Get metadatum for Used for grading

**Returns:** `String?`

#### `:getDirector`

```lua
getDirector() -> String?
```

Get metadatum for Director

**Returns:** `String?`

#### `:getDistanceToObject`

```lua
getDistanceToObject() -> String?
```

Get metadatum for Distance to object

**Returns:** `String?`

#### `:getDurationInFrames`

```lua
getDurationInFrames() -> String?
```

Get metadatum for Duration (frames)

**Returns:** `String?`

#### `:getDurationInSamples`

```lua
getDurationInSamples() -> String?
```

Get metadatum for no description

**Returns:** `String?`

#### `:getDurationInSeconds`

```lua
getDurationInSeconds() -> String?
```

Get metadatum for Duration (time)

**Returns:** `String?`

#### `:getDynamicMetadataExtracted`

```lua
getDynamicMetadataExtracted() -> String?
```

Get metadatum for Dynamic metatdata extracted

**Returns:** `String?`

#### `:getEpisode`

```lua
getEpisode() -> String?
```

Get metadatum for Episode

**Returns:** `String?`

#### `:getFileSize`

```lua
getFileSize() -> String?
```

Get metadatum for File size

**Returns:** `String?`

#### `:getFileType`

```lua
getFileType() -> String?
```

Get metadatum for File type

**Returns:** `String?`

#### `:getFlag`

```lua
getFlag() -> String?
```

Get metadatum for Flag/Circled

**Returns:** `String?`

#### `:getFlip`

```lua
getFlip() -> String?
```

Get metadatum for Flip

**Returns:** `String?`

#### `:getFocalLength`

```lua
getFocalLength() -> String?
```

Get metadatum for Focal length

**Returns:** `String?`

#### `:getFocusDistance`

```lua
getFocusDistance() -> String?
```

Get metadatum for Focus distance

**Returns:** `String?`

#### `:getFstop`

```lua
getFstop() -> String?
```

Get metadatum for F-Stop

**Returns:** `String?`

#### `:getGPSposition`

```lua
getGPSposition() -> String?
```

Get metadatum for GPS position

**Returns:** `String?`

#### `:getGradingMode`

```lua
getGradingMode() -> String?
```

Get metadatum for Grading mode

**Returns:** `String?`

#### `:getHashC4`

```lua
getHashC4() -> String?
```

Get metadatum for C4ID hash of file

**Returns:** `String?`

#### `:getHashMD5`

```lua
getHashMD5() -> String?
```

Get metadatum for MD5 hash of file

**Returns:** `String?`

#### `:getHashSHA1`

```lua
getHashSHA1() -> String?
```

Get metadatum for SHA1 hash of file

**Returns:** `String?`

#### `:getHashXXH128`

```lua
getHashXXH128() -> String?
```

Get metadatum for XXH128 hash of file

**Returns:** `String?`

#### `:getHashXXH3`

```lua
getHashXXH3() -> String?
```

Get metadatum for XXH3 hash of file

**Returns:** `String?`

#### `:getHashXXH64`

```lua
getHashXXH64() -> String?
```

Get metadatum for XXH64 (BE) hash of file

**Returns:** `String?`

#### `:getHashes`

```lua
getHashes() -> String?
```

Get metadatum for Available checksums

**Returns:** `String?`

#### `:getInOutDuration`

```lua
getInOutDuration() -> String?
```

Get metadatum for Duration (frames) between In and Out point

**Returns:** `String?`

#### `:getInteriorExterior`

```lua
getInteriorExterior() -> String?
```

Get metadatum for Interior/Exterior

**Returns:** `String?`

#### `:getLabel`

```lua
getLabel() -> String?
```

Get metadatum for Label (customizeable per project in prefs)

**Returns:** `String?`

#### `:getLensFilter`

```lua
getLensFilter() -> String?
```

Get metadatum for Lens filter

**Returns:** `String?`

#### `:getLensModel`

```lua
getLensModel() -> String?
```

Get metadatum for Lens model

**Returns:** `String?`

#### `:getLensSerialNumber`

```lua
getLensSerialNumber() -> String?
```

Get metadatum for Lens serial number

**Returns:** `String?`

#### `:getLensZEISScorrection`

```lua
getLensZEISScorrection() -> String?
```

Get metadatum for ZEISS lens correction data

**Returns:** `String?`

#### `:getLocation`

```lua
getLocation() -> String?
```

Get metadatum for Location

**Returns:** `String?`

#### `:getLookInfo`

```lua
getLookInfo() -> String?
```

Get metadatum for Look info from camera

**Returns:** `String?`

#### `:getLookSource`

```lua
getLookSource() -> String?
```

Get metadatum for Selected look source

**Returns:** `String?`

#### `:getLookSourceName`

```lua
getLookSourceName() -> String?
```

Get metadatum for Name of look source

**Returns:** `String?`

#### `:getNDopticalDensity`

```lua
getNDopticalDensity() -> String?
```

Get metadatum for Neutral-density filter (optical density)

**Returns:** `String?`

#### `:getNativeISO`

```lua
getNativeISO() -> String?
```

Get metadatum for Native ISO

**Returns:** `String?`

#### `:getNodesCDL`

```lua
getNodesCDL() -> String?
```

Get metadatum for CDL values: Slope Offset Power

**Returns:** `String?`

#### `:getNodesLMT`

```lua
getNodesLMT() -> String?
```

Get metadatum for LMT Nodes

**Returns:** `String?`

#### `:getNodesLUT`

```lua
getNodesLUT() -> String?
```

Get metadatum for List of applied LUTs

**Returns:** `String?`

#### `:getNodesSAT`

```lua
getNodesSAT() -> String?
```

Get metadatum for Saturation nodes

**Returns:** `String?`

#### `:getProcessedResolution`

```lua
getProcessedResolution() -> String?
```

Get metadatum for Clip resolution after desqueeze, crop & rotate

**Returns:** `String?`

#### `:getProducer`

```lua
getProducer() -> String?
```

Get metadatum for Producer

**Returns:** `String?`

#### `:getProductionCompany`

```lua
getProductionCompany() -> String?
```

Get metadatum for Production Company

**Returns:** `String?`

#### `:getProjectFPS`

```lua
getProjectFPS() -> String?
```

Get metadatum for Project / playback FPS

**Returns:** `String?`

#### `:getRating`

```lua
getRating() -> String?
```

Get metadatum for Rating

**Returns:** `String?`

#### `:getRecorderFirmwareVersion`

```lua
getRecorderFirmwareVersion() -> String?
```

Get metadatum for Recording device firmware version

**Returns:** `String?`

#### `:getRecorderID`

```lua
getRecorderID() -> String?
```

Get metadatum for Recording device model ID

**Returns:** `String?`

#### `:getRecorderManufacturer`

```lua
getRecorderManufacturer() -> String?
```

Get metadatum for Recording device manufacturer

**Returns:** `String?`

#### `:getRecorderModel`

```lua
getRecorderModel() -> String?
```

Get metadatum for Recording device model

**Returns:** `String?`

#### `:getRecorderSerialNumber`

```lua
getRecorderSerialNumber() -> String?
```

Get metadatum for Recording device serial number

**Returns:** `String?`

#### `:getRecordingColorSpace`

```lua
getRecordingColorSpace() -> String?
```

Get metadatum for Recording color space

**Returns:** `String?`

#### `:getRecordingDate`

```lua
getRecordingDate() -> String?
```

Get metadatum for Recording date from recorder

**Returns:** `String?`

#### `:getReel`

```lua
getReel() -> String?
```

Get metadatum for Reel/Tape

**Returns:** `String?`

#### `:getReferenceGamutCompression`

```lua
getReferenceGamutCompression() -> String?
```

Get metadatum for Reference Gamut Compression

**Returns:** `String?`

#### `:getRegistrationDate`

```lua
getRegistrationDate() -> String?
```

Get metadatum for Date of ingest in library

**Returns:** `String?`

#### `:getResolution`

```lua
getResolution() -> String?
```

Get metadatum for Clip resolution before desqueeze, crop & rotate

**Returns:** `String?`

#### `:getRotation`

```lua
getRotation() -> String?
```

Get metadatum for Applied rotation

**Returns:** `String?`

#### `:getSamplesSinceMidnight`

```lua
getSamplesSinceMidnight() -> String?
```

Get metadatum for Samples since midnight

**Returns:** `String?`

#### `:getScan`

```lua
getScan() -> String?
```

Get metadatum for Scan type (progressive / interlaced)

**Returns:** `String?`

#### `:getScene`

```lua
getScene() -> String?
```

Get metadatum for Scene

**Returns:** `String?`

#### `:getScriptSupervisor`

```lua
getScriptSupervisor() -> String?
```

Get metadatum for Script supervisor

**Returns:** `String?`

#### `:getSeason`

```lua
getSeason() -> String?
```

Get metadatum for Season

**Returns:** `String?`

#### `:getSensorFPS`

```lua
getSensorFPS() -> String?
```

Get metadatum for Sensor FPS of camera

**Returns:** `String?`

#### `:getShootingDate`

```lua
getShootingDate() -> String?
```

Get metadatum for Shooting Date

**Returns:** `String?`

#### `:getShootingDay`

```lua
getShootingDay() -> String?
```

Get metadatum for Shooting day

**Returns:** `String?`

#### `:getShot`

```lua
getShot() -> String?
```

Get metadatum for Shot

**Returns:** `String?`

#### `:getShotDescriptors`

```lua
getShotDescriptors() -> String?
```

Get metadatum for Shot descriptors

**Returns:** `String?`

#### `:getShotID`

```lua
getShotID() -> String?
```

Get metadatum for ShotID for referencing clip information (e.g. in ShotHub)

**Returns:** `String?`

#### `:getShothubCreatedBy`

```lua
getShothubCreatedBy() -> String?
```

Get metadatum for Added to ShotHub by user

**Returns:** `String?`

#### `:getShutterAngle`

```lua
getShutterAngle() -> String?
```

Get metadatum for Shutter angle (degrees)

**Returns:** `String?`

#### `:getShutterTime`

```lua
getShutterTime() -> String?
```

Get metadatum for Shutter (exposure time)

**Returns:** `String?`

#### `:getSoundMixer`

```lua
getSoundMixer() -> String?
```

Get metadatum for Sound mixer

**Returns:** `String?`

#### `:getSoundroll`

```lua
getSoundroll() -> String?
```

Get metadatum for Tape name of synced audio clip

**Returns:** `String?`

#### `:getSourceCreationDate`

```lua
getSourceCreationDate() -> String?
```

Get metadatum for Creation date of source file

**Returns:** `String?`

#### `:getTCaudioOffsets`

```lua
getTCaudioOffsets() -> String?
```

Get metadatum for Offset between audio and video timecodes

**Returns:** `String?`

#### `:getTCend`

```lua
getTCend() -> String?
```

Get metadatum for End timecode of clip (exclusive)

**Returns:** `String?`

#### `:getTCendExtAudio`

```lua
getTCendExtAudio() -> String?
```

Get metadatum for Timecode of external audio clip at last video frame (exclusive)

**Returns:** `String?`

#### `:getTCformat`

```lua
getTCformat() -> String?
```

Get metadatum for Timecode format

**Returns:** `String?`

#### `:getTCinPoint`

```lua
getTCinPoint() -> String?
```

Get metadatum for Timecode of In point

**Returns:** `String?`

#### `:getTCoutPoint`

```lua
getTCoutPoint() -> String?
```

Get metadatum for Timecode of Out point

**Returns:** `String?`

#### `:getTCstart`

```lua
getTCstart() -> String?
```

Get metadatum for Start timecode of clip

**Returns:** `String?`

#### `:getTCstartExtAudio`

```lua
getTCstartExtAudio() -> String?
```

Get metadatum for Timecode of external audio clip at first video frame

**Returns:** `String?`

#### `:getTCsyncSlate`

```lua
getTCsyncSlate() -> String?
```

Get metadatum for Timecode of slate marker

**Returns:** `String?`

#### `:getTags`

```lua
getTags() -> String?
```

Get metadatum for Tags

**Returns:** `String?`

#### `:getTake`

```lua
getTake() -> String?
```

Get metadatum for Take

**Returns:** `String?`

#### `:getTape`

```lua
getTape() -> String?
```

Get metadatum for Audio tape name

**Returns:** `String?`

#### `:getTstop`

```lua
getTstop() -> String?
```

Get metadatum for T-Stop

**Returns:** `String?`

#### `:getVerificationState`

```lua
getVerificationState() -> String?
```

Get metadatum for Verification state

**Returns:** `String?`

#### `:getWildTrack`

```lua
getWildTrack() -> String?
```

Get metadatum for Wild track

**Returns:** `String?`

#### `:setActors`

```lua
setActors(String) -> String?
```

Set metadatum for Actors: Actors

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setAnamorphic`

```lua
setAnamorphic(String) -> String?
```

Set metadatum for Anamorphic: Anamorphic desqueeze

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setCameraAssistant`

```lua
setCameraAssistant(String) -> String?
```

Set metadatum for Camera Assistant: Camera Assistant

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setCameraAssistant2`

```lua
setCameraAssistant2(String) -> String?
```

Set metadatum for Camera Assistant (2nd): Second camera assistant

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setCameraIndex`

```lua
setCameraIndex(String) -> String?
```

Set metadatum for Camera: Camera index letter or number

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setCameraOrientation`

```lua
setCameraOrientation(String) -> String?
```

Set metadatum for Camera Orientation: Camera orientation

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setCameraRollAngle`

```lua
setCameraRollAngle(String) -> String?
```

Set metadatum for Camera Roll [°]: Camera roll

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setCameraTiltAngle`

```lua
setCameraTiltAngle(String) -> String?
```

Set metadatum for Camera Tilt [°]: Camera tilt

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setCaption`

```lua
setCaption(String) -> String?
```

Set metadatum for Caption: Caption

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setCinematographer`

```lua
setCinematographer(String) -> String?
```

Set metadatum for Cinematographer: Cinematographer

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setClipName`

```lua
setClipName(String) -> String?
```

Set metadatum for Name: (Clip) Name

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setComment`

```lua
setComment(String) -> String?
```

Set metadatum for Comment: Comment

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setCopyrightInfo`

```lua
setCopyrightInfo(String) -> String?
```

Set metadatum for Copyright Information: Copyright information

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setCrewUnit`

```lua
setCrewUnit(String) -> String?
```

Set metadatum for Crew Unit: Crew unit

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setCustom1`

```lua
setCustom1(String) -> String?
```

Set metadatum for Custom 1: Custom field 1 (customizeable per project in prefs)

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setCustom2`

```lua
setCustom2(String) -> String?
```

Set metadatum for Custom 2: Custom field 2 (customizeable per project in prefs)

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setCustom3`

```lua
setCustom3(String) -> String?
```

Set metadatum for Custom 3: Custom field 3 (customizeable per project in prefs)

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setCustom4`

```lua
setCustom4(String) -> String?
```

Set metadatum for Custom 4: Custom field 4 (customizeable per project in prefs)

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setCustom5`

```lua
setCustom5(String) -> String?
```

Set metadatum for Custom 5: Custom field 5 (customizeable per project in prefs)

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setCustom6`

```lua
setCustom6(String) -> String?
```

Set metadatum for Custom 6: Custom field 6 (customizeable per project in prefs)

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setDIT`

```lua
setDIT(String) -> String?
```

Set metadatum for DIT: Digital image technican

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setDataManager`

```lua
setDataManager(String) -> String?
```

Set metadatum for Data Manager: Data manager

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setDayNight`

```lua
setDayNight(String) -> String?
```

Set metadatum for Day/Night: Day/Night

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setDirector`

```lua
setDirector(String) -> String?
```

Set metadatum for Director: Director

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setDistanceToObject`

```lua
setDistanceToObject(String) -> String?
```

Set metadatum for Distance to Object: Distance to object

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setEpisode`

```lua
setEpisode(String) -> String?
```

Set metadatum for Episode: Episode

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setFlag`

```lua
setFlag(String) -> String?
```

Set metadatum for Flag/Circled: Flag/Circled

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setFlip`

```lua
setFlip(String) -> String?
```

Set metadatum for Flip: Flip

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setFocalLength`

```lua
setFocalLength(String) -> String?
```

Set metadatum for Focal Length: Focal length

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setFocusDistance`

```lua
setFocusDistance(String) -> String?
```

Set metadatum for Focus Distance: Focus distance

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setFstop`

```lua
setFstop(String) -> String?
```

Set metadatum for F-Stop: F-Stop

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setGPSposition`

```lua
setGPSposition(String) -> String?
```

Set metadatum for GPS Position: GPS position

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setInteriorExterior`

```lua
setInteriorExterior(String) -> String?
```

Set metadatum for Int/Ext: Interior/Exterior

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setLabel`

```lua
setLabel(String) -> String?
```

Set metadatum for Label: Label (customizeable per project in prefs)

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setLensFilter`

```lua
setLensFilter(String) -> String?
```

Set metadatum for Lens Filter: Lens filter

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setLensModel`

```lua
setLensModel(String) -> String?
```

Set metadatum for Lens Model: Lens model

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setLensSerialNumber`

```lua
setLensSerialNumber(String) -> String?
```

Set metadatum for Lens Serial: Lens serial number

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setLocation`

```lua
setLocation(String) -> String?
```

Set metadatum for Location: Location

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setNDopticalDensity`

```lua
setNDopticalDensity(String) -> String?
```

Set metadatum for ND Filter: Neutral-density filter (optical density)

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setNativeISO`

```lua
setNativeISO(String) -> String?
```

Set metadatum for Native ISO: Native ISO

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setProducer`

```lua
setProducer(String) -> String?
```

Set metadatum for Producer: Producer

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setProductionCompany`

```lua
setProductionCompany(String) -> String?
```

Set metadatum for Production: Production Company

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setProjectFPS`

```lua
setProjectFPS(String) -> String?
```

Set metadatum for Project FPS: Project / playback FPS

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setRating`

```lua
setRating(String) -> String?
```

Set metadatum for Rating: Rating

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setRecordingDate`

```lua
setRecordingDate(String) -> String?
```

Set metadatum for Recording Date: Recording date from recorder

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setReel`

```lua
setReel(String) -> String?
```

Set metadatum for Reel/Tape: Reel/Tape

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setRotation`

```lua
setRotation(String) -> String?
```

Set metadatum for Rotation: Applied rotation

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setScene`

```lua
setScene(String) -> String?
```

Set metadatum for Scene: Scene

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setScriptSupervisor`

```lua
setScriptSupervisor(String) -> String?
```

Set metadatum for Script Supervisor: Script supervisor

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setSeason`

```lua
setSeason(String) -> String?
```

Set metadatum for Season: Season

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setShootingDate`

```lua
setShootingDate(String) -> String?
```

Set metadatum for Shooting Date: Shooting Date

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setShootingDay`

```lua
setShootingDay(String) -> String?
```

Set metadatum for Shooting Day: Shooting day

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setShot`

```lua
setShot(String) -> String?
```

Set metadatum for Shot: Shot

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setShotDescriptors`

```lua
setShotDescriptors(String) -> String?
```

Set metadatum for Shot Descriptors: Shot descriptors

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setSoundMixer`

```lua
setSoundMixer(String) -> String?
```

Set metadatum for Sound Mixer: Sound mixer

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setTCstart`

```lua
setTCstart(String) -> String?
```

Set metadatum for TC Start: Start timecode of clip

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setTake`

```lua
setTake(String) -> String?
```

Set metadatum for Take: Take

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setTape`

```lua
setTape(String) -> String?
```

Set metadatum for Tape: Audio tape name

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

#### `:setTstop`

```lua
setTstop(String) -> String?
```

Set metadatum for T-Stop: T-Stop

| Parameter | Description |
|-----------|-------------|
| `String` | Formatted String |

**Returns:** `String?`

### Volume

#### `:getLabel`

```lua
getLabel() -> String?
```

Get the label of the Volume.

**Returns:** `String?`

#### `:getMountPath`

```lua
getMountPath() -> String?
```

Get the mount path of the Volume.

**Returns:** `String?`

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

**Returns:** `[String]`

#### `utils.slack.sendMessage`

```lua
sst.utils.slack.sendMessage(String, String)
```

Send a message via Slack

| Parameter | Description |
|-----------|-------------|
| `String` | Receiver channel |
| `String` | Message to send |
