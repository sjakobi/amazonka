{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.HlsGroupSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsGroupSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.CaptionLanguageMapping
import Network.AWS.MediaLive.Types.HlsAdMarkers
import Network.AWS.MediaLive.Types.HlsCaptionLanguageSetting
import Network.AWS.MediaLive.Types.HlsCdnSettings
import Network.AWS.MediaLive.Types.HlsClientCache
import Network.AWS.MediaLive.Types.HlsCodecSpecification
import Network.AWS.MediaLive.Types.HlsDirectoryStructure
import Network.AWS.MediaLive.Types.HlsDiscontinuityTags
import Network.AWS.MediaLive.Types.HlsEncryptionType
import Network.AWS.MediaLive.Types.HlsId3SegmentTaggingState
import Network.AWS.MediaLive.Types.HlsIncompleteSegmentBehavior
import Network.AWS.MediaLive.Types.HlsIvInManifest
import Network.AWS.MediaLive.Types.HlsIvSource
import Network.AWS.MediaLive.Types.HlsManifestCompression
import Network.AWS.MediaLive.Types.HlsManifestDurationFormat
import Network.AWS.MediaLive.Types.HlsMode
import Network.AWS.MediaLive.Types.HlsOutputSelection
import Network.AWS.MediaLive.Types.HlsProgramDateTime
import Network.AWS.MediaLive.Types.HlsRedundantManifest
import Network.AWS.MediaLive.Types.HlsSegmentationMode
import Network.AWS.MediaLive.Types.HlsStreamInfResolution
import Network.AWS.MediaLive.Types.HlsTimedMetadataId3Frame
import Network.AWS.MediaLive.Types.HlsTsFileMode
import Network.AWS.MediaLive.Types.IFrameOnlyPlaylistType
import Network.AWS.MediaLive.Types.InputLossActionForHlsOut
import Network.AWS.MediaLive.Types.KeyProviderSettings
import Network.AWS.MediaLive.Types.OutputLocationRef
import Network.AWS.Prelude

-- | Hls Group Settings
--
-- /See:/ 'hlsGroupSettings' smart constructor.
data HlsGroupSettings = HlsGroupSettings'
  { _hgsOutputSelection ::
      !(Maybe HlsOutputSelection),
    _hgsIvInManifest ::
      !(Maybe HlsIvInManifest),
    _hgsTimedMetadataId3Period ::
      !(Maybe Nat),
    _hgsEncryptionType ::
      !(Maybe HlsEncryptionType),
    _hgsSegmentLength :: !(Maybe Nat),
    _hgsTimedMetadataId3Frame ::
      !(Maybe HlsTimedMetadataId3Frame),
    _hgsAdMarkers ::
      !(Maybe [HlsAdMarkers]),
    _hgsKeyFormat :: !(Maybe Text),
    _hgsDirectoryStructure ::
      !(Maybe HlsDirectoryStructure),
    _hgsConstantIv :: !(Maybe Text),
    _hgsManifestCompression ::
      !(Maybe HlsManifestCompression),
    _hgsStreamInfResolution ::
      !(Maybe HlsStreamInfResolution),
    _hgsMode :: !(Maybe HlsMode),
    _hgsHlsCdnSettings ::
      !(Maybe HlsCdnSettings),
    _hgsCodecSpecification ::
      !(Maybe HlsCodecSpecification),
    _hgsRedundantManifest ::
      !(Maybe HlsRedundantManifest),
    _hgsIndexNSegments :: !(Maybe Nat),
    _hgsIFrameOnlyPlaylists ::
      !(Maybe IFrameOnlyPlaylistType),
    _hgsSegmentationMode ::
      !(Maybe HlsSegmentationMode),
    _hgsProgramDateTime ::
      !(Maybe HlsProgramDateTime),
    _hgsSegmentsPerSubdirectory ::
      !(Maybe Nat),
    _hgsTsFileMode ::
      !(Maybe HlsTsFileMode),
    _hgsDiscontinuityTags ::
      !(Maybe HlsDiscontinuityTags),
    _hgsBaseURLContent :: !(Maybe Text),
    _hgsHlsId3SegmentTagging ::
      !(Maybe HlsId3SegmentTaggingState),
    _hgsIncompleteSegmentBehavior ::
      !(Maybe HlsIncompleteSegmentBehavior),
    _hgsBaseURLManifest :: !(Maybe Text),
    _hgsBaseURLContent1 :: !(Maybe Text),
    _hgsCaptionLanguageMappings ::
      !(Maybe [CaptionLanguageMapping]),
    _hgsInputLossAction ::
      !(Maybe InputLossActionForHlsOut),
    _hgsKeyProviderSettings ::
      !(Maybe KeyProviderSettings),
    _hgsKeepSegments :: !(Maybe Nat),
    _hgsTimestampDeltaMilliseconds ::
      !(Maybe Nat),
    _hgsBaseURLManifest1 :: !(Maybe Text),
    _hgsProgramDateTimePeriod ::
      !(Maybe Nat),
    _hgsKeyFormatVersions ::
      !(Maybe Text),
    _hgsClientCache ::
      !(Maybe HlsClientCache),
    _hgsMinSegmentLength :: !(Maybe Nat),
    _hgsManifestDurationFormat ::
      !(Maybe HlsManifestDurationFormat),
    _hgsIvSource :: !(Maybe HlsIvSource),
    _hgsCaptionLanguageSetting ::
      !(Maybe HlsCaptionLanguageSetting),
    _hgsDestination :: !OutputLocationRef
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'HlsGroupSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hgsOutputSelection' - MANIFESTS_AND_SEGMENTS: Generates manifests (master manifest, if applicable, and media manifests) for this output group. VARIANT_MANIFESTS_AND_SEGMENTS: Generates media manifests for this output group, but not a master manifest. SEGMENTS_ONLY: Does not generate any manifests for this output group.
--
-- * 'hgsIvInManifest' - For use with encryptionType. The IV (Initialization Vector) is a 128-bit number used in conjunction with the key for encrypting blocks. If set to "include", IV is listed in the manifest, otherwise the IV is not in the manifest.
--
-- * 'hgsTimedMetadataId3Period' - Timed Metadata interval in seconds.
--
-- * 'hgsEncryptionType' - Encrypts the segments with the given encryption scheme.  Exclude this parameter if no encryption is desired.
--
-- * 'hgsSegmentLength' - Length of MPEG-2 Transport Stream segments to create (in seconds). Note that segments will end on the next keyframe after this number of seconds, so actual segment length may be longer.
--
-- * 'hgsTimedMetadataId3Frame' - Indicates ID3 frame that has the timecode.
--
-- * 'hgsAdMarkers' - Choose one or more ad marker types to pass SCTE35 signals through to this group of Apple HLS outputs.
--
-- * 'hgsKeyFormat' - The value specifies how the key is represented in the resource identified by the URI.  If parameter is absent, an implicit value of "identity" is used.  A reverse DNS string can also be given.
--
-- * 'hgsDirectoryStructure' - Place segments in subdirectories.
--
-- * 'hgsConstantIv' - For use with encryptionType. This is a 128-bit, 16-byte hex value represented by a 32-character text string. If ivSource is set to "explicit" then this parameter is required and is used as the IV for encryption.
--
-- * 'hgsManifestCompression' - When set to gzip, compresses HLS playlist.
--
-- * 'hgsStreamInfResolution' - Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest.
--
-- * 'hgsMode' - If "vod", all segments are indexed and kept permanently in the destination and manifest. If "live", only the number segments specified in keepSegments and indexNSegments are kept; newer segments replace older segments, which may prevent players from rewinding all the way to the beginning of the event. VOD mode uses HLS EXT-X-PLAYLIST-TYPE of EVENT while the channel is running, converting it to a "VOD" type manifest on completion of the stream.
--
-- * 'hgsHlsCdnSettings' - Parameters that control interactions with the CDN.
--
-- * 'hgsCodecSpecification' - Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation.
--
-- * 'hgsRedundantManifest' - ENABLED: The master manifest (.m3u8 file) for each pipeline includes information about both pipelines: first its own media files, then the media files of the other pipeline. This feature allows playout device that support stale manifest detection to switch from one manifest to the other, when the current manifest seems to be stale. There are still two destinations and two master manifests, but both master manifests reference the media files from both pipelines. DISABLED: The master manifest (.m3u8 file) for each pipeline includes information about its own pipeline only. For an HLS output group with MediaPackage as the destination, the DISABLED behavior is always followed. MediaPackage regenerates the manifests it serves to players so a redundant manifest from MediaLive is irrelevant.
--
-- * 'hgsIndexNSegments' - Applies only if Mode field is LIVE. Specifies the maximum number of segments in the media manifest file. After this maximum, older segments are removed from the media manifest. This number must be smaller than the number in the Keep Segments field.
--
-- * 'hgsIFrameOnlyPlaylists' - DISABLED: Do not create an I-frame-only manifest, but do create the master and media manifests (according to the Output Selection field). STANDARD: Create an I-frame-only manifest for each output that contains video, as well as the other manifests (according to the Output Selection field). The I-frame manifest contains a #EXT-X-I-FRAMES-ONLY tag to indicate it is I-frame only, and one or more #EXT-X-BYTERANGE entries identifying the I-frame position. For example, #EXT-X-BYTERANGE:160364@1461888"
--
-- * 'hgsSegmentationMode' - useInputSegmentation has been deprecated. The configured segment size is always used.
--
-- * 'hgsProgramDateTime' - Includes or excludes EXT-X-PROGRAM-DATE-TIME tag in .m3u8 manifest files. The value is calculated as follows: either the program date and time are initialized using the input timecode source, or the time is initialized using the input timecode source and the date is initialized using the timestampOffset.
--
-- * 'hgsSegmentsPerSubdirectory' - Number of segments to write to a subdirectory before starting a new one. directoryStructure must be subdirectoryPerStream for this setting to have an effect.
--
-- * 'hgsTsFileMode' - SEGMENTED_FILES: Emit the program as segments - multiple .ts media files. SINGLE_FILE: Applies only if Mode field is VOD. Emit the program as a single .ts media file. The media manifest includes #EXT-X-BYTERANGE tags to index segments for playback. A typical use for this value is when sending the output to AWS Elemental MediaConvert, which can accept only a single media file. Playback while the channel is running is not guaranteed due to HTTP server caching.
--
-- * 'hgsDiscontinuityTags' - Specifies whether to insert EXT-X-DISCONTINUITY tags in the HLS child manifests for this output group. Typically, choose Insert because these tags are required in the manifest (according to the HLS specification) and serve an important purpose. Choose Never Insert only if the downstream system is doing real-time failover (without using the MediaLive automatic failover feature) and only if that downstream system has advised you to exclude the tags.
--
-- * 'hgsBaseURLContent' - A partial URI prefix that will be prepended to each output in the media .m3u8 file. Can be used if base manifest is delivered from a different URL than the main .m3u8 file.
--
-- * 'hgsHlsId3SegmentTagging' - State of HLS ID3 Segment Tagging
--
-- * 'hgsIncompleteSegmentBehavior' - Specifies whether to include the final (incomplete) segment in the media output when the pipeline stops producing output because of a channel stop, a channel pause or a loss of input to the pipeline. Auto means that MediaLive decides whether to include the final segment, depending on the channel class and the types of output groups. Suppress means to never include the incomplete segment. We recommend you choose Auto and let MediaLive control the behavior.
--
-- * 'hgsBaseURLManifest' - A partial URI prefix that will be prepended to each output in the media .m3u8 file. Can be used if base manifest is delivered from a different URL than the main .m3u8 file.
--
-- * 'hgsBaseURLContent1' - Optional. One value per output group. This field is required only if you are completing Base URL content A, and the downstream system has notified you that the media files for pipeline 1 of all outputs are in a location different from the media files for pipeline 0.
--
-- * 'hgsCaptionLanguageMappings' - Mapping of up to 4 caption channels to caption languages.  Is only meaningful if captionLanguageSetting is set to "insert".
--
-- * 'hgsInputLossAction' - Parameter that control output group behavior on input loss.
--
-- * 'hgsKeyProviderSettings' - The key provider settings.
--
-- * 'hgsKeepSegments' - Applies only if Mode field is LIVE. Specifies the number of media segments to retain in the destination directory. This number should be bigger than indexNSegments (Num segments). We recommend (value = (2 x indexNsegments) + 1). If this "keep segments" number is too low, the following might happen: the player is still reading a media manifest file that lists this segment, but that segment has been removed from the destination directory (as directed by indexNSegments). This situation would result in a 404 HTTP error on the player.
--
-- * 'hgsTimestampDeltaMilliseconds' - Provides an extra millisecond delta offset to fine tune the timestamps.
--
-- * 'hgsBaseURLManifest1' - Optional. One value per output group. Complete this field only if you are completing Base URL manifest A, and the downstream system has notified you that the child manifest files for pipeline 1 of all outputs are in a location different from the child manifest files for pipeline 0.
--
-- * 'hgsProgramDateTimePeriod' - Period of insertion of EXT-X-PROGRAM-DATE-TIME entry, in seconds.
--
-- * 'hgsKeyFormatVersions' - Either a single positive integer version value or a slash delimited list of version values (1/2/3).
--
-- * 'hgsClientCache' - When set to "disabled", sets the #EXT-X-ALLOW-CACHE:no tag in the manifest, which prevents clients from saving media segments for later replay.
--
-- * 'hgsMinSegmentLength' - When set, minimumSegmentLength is enforced by looking ahead and back within the specified range for a nearby avail and extending the segment size if needed.
--
-- * 'hgsManifestDurationFormat' - Indicates whether the output manifest should use floating point or integer values for segment duration.
--
-- * 'hgsIvSource' - For use with encryptionType. The IV (Initialization Vector) is a 128-bit number used in conjunction with the key for encrypting blocks. If this setting is "followsSegmentNumber", it will cause the IV to change every segment (to match the segment number). If this is set to "explicit", you must enter a constantIv value.
--
-- * 'hgsCaptionLanguageSetting' - Applies only to 608 Embedded output captions. insert: Include CLOSED-CAPTIONS lines in the manifest. Specify at least one language in the CC1 Language Code field. One CLOSED-CAPTION line is added for each Language Code you specify. Make sure to specify the languages in the order in which they appear in the original source (if the source is embedded format) or the order of the caption selectors (if the source is other than embedded). Otherwise, languages in the manifest will not match up properly with the output captions. none: Include CLOSED-CAPTIONS=NONE line in the manifest. omit: Omit any CLOSED-CAPTIONS line from the manifest.
--
-- * 'hgsDestination' - A directory or HTTP destination for the HLS segments, manifest files, and encryption keys (if enabled).
hlsGroupSettings ::
  -- | 'hgsDestination'
  OutputLocationRef ->
  HlsGroupSettings
hlsGroupSettings pDestination_ =
  HlsGroupSettings'
    { _hgsOutputSelection = Nothing,
      _hgsIvInManifest = Nothing,
      _hgsTimedMetadataId3Period = Nothing,
      _hgsEncryptionType = Nothing,
      _hgsSegmentLength = Nothing,
      _hgsTimedMetadataId3Frame = Nothing,
      _hgsAdMarkers = Nothing,
      _hgsKeyFormat = Nothing,
      _hgsDirectoryStructure = Nothing,
      _hgsConstantIv = Nothing,
      _hgsManifestCompression = Nothing,
      _hgsStreamInfResolution = Nothing,
      _hgsMode = Nothing,
      _hgsHlsCdnSettings = Nothing,
      _hgsCodecSpecification = Nothing,
      _hgsRedundantManifest = Nothing,
      _hgsIndexNSegments = Nothing,
      _hgsIFrameOnlyPlaylists = Nothing,
      _hgsSegmentationMode = Nothing,
      _hgsProgramDateTime = Nothing,
      _hgsSegmentsPerSubdirectory = Nothing,
      _hgsTsFileMode = Nothing,
      _hgsDiscontinuityTags = Nothing,
      _hgsBaseURLContent = Nothing,
      _hgsHlsId3SegmentTagging = Nothing,
      _hgsIncompleteSegmentBehavior = Nothing,
      _hgsBaseURLManifest = Nothing,
      _hgsBaseURLContent1 = Nothing,
      _hgsCaptionLanguageMappings = Nothing,
      _hgsInputLossAction = Nothing,
      _hgsKeyProviderSettings = Nothing,
      _hgsKeepSegments = Nothing,
      _hgsTimestampDeltaMilliseconds = Nothing,
      _hgsBaseURLManifest1 = Nothing,
      _hgsProgramDateTimePeriod = Nothing,
      _hgsKeyFormatVersions = Nothing,
      _hgsClientCache = Nothing,
      _hgsMinSegmentLength = Nothing,
      _hgsManifestDurationFormat = Nothing,
      _hgsIvSource = Nothing,
      _hgsCaptionLanguageSetting = Nothing,
      _hgsDestination = pDestination_
    }

-- | MANIFESTS_AND_SEGMENTS: Generates manifests (master manifest, if applicable, and media manifests) for this output group. VARIANT_MANIFESTS_AND_SEGMENTS: Generates media manifests for this output group, but not a master manifest. SEGMENTS_ONLY: Does not generate any manifests for this output group.
hgsOutputSelection :: Lens' HlsGroupSettings (Maybe HlsOutputSelection)
hgsOutputSelection = lens _hgsOutputSelection (\s a -> s {_hgsOutputSelection = a})

-- | For use with encryptionType. The IV (Initialization Vector) is a 128-bit number used in conjunction with the key for encrypting blocks. If set to "include", IV is listed in the manifest, otherwise the IV is not in the manifest.
hgsIvInManifest :: Lens' HlsGroupSettings (Maybe HlsIvInManifest)
hgsIvInManifest = lens _hgsIvInManifest (\s a -> s {_hgsIvInManifest = a})

-- | Timed Metadata interval in seconds.
hgsTimedMetadataId3Period :: Lens' HlsGroupSettings (Maybe Natural)
hgsTimedMetadataId3Period = lens _hgsTimedMetadataId3Period (\s a -> s {_hgsTimedMetadataId3Period = a}) . mapping _Nat

-- | Encrypts the segments with the given encryption scheme.  Exclude this parameter if no encryption is desired.
hgsEncryptionType :: Lens' HlsGroupSettings (Maybe HlsEncryptionType)
hgsEncryptionType = lens _hgsEncryptionType (\s a -> s {_hgsEncryptionType = a})

-- | Length of MPEG-2 Transport Stream segments to create (in seconds). Note that segments will end on the next keyframe after this number of seconds, so actual segment length may be longer.
hgsSegmentLength :: Lens' HlsGroupSettings (Maybe Natural)
hgsSegmentLength = lens _hgsSegmentLength (\s a -> s {_hgsSegmentLength = a}) . mapping _Nat

-- | Indicates ID3 frame that has the timecode.
hgsTimedMetadataId3Frame :: Lens' HlsGroupSettings (Maybe HlsTimedMetadataId3Frame)
hgsTimedMetadataId3Frame = lens _hgsTimedMetadataId3Frame (\s a -> s {_hgsTimedMetadataId3Frame = a})

-- | Choose one or more ad marker types to pass SCTE35 signals through to this group of Apple HLS outputs.
hgsAdMarkers :: Lens' HlsGroupSettings [HlsAdMarkers]
hgsAdMarkers = lens _hgsAdMarkers (\s a -> s {_hgsAdMarkers = a}) . _Default . _Coerce

-- | The value specifies how the key is represented in the resource identified by the URI.  If parameter is absent, an implicit value of "identity" is used.  A reverse DNS string can also be given.
hgsKeyFormat :: Lens' HlsGroupSettings (Maybe Text)
hgsKeyFormat = lens _hgsKeyFormat (\s a -> s {_hgsKeyFormat = a})

-- | Place segments in subdirectories.
hgsDirectoryStructure :: Lens' HlsGroupSettings (Maybe HlsDirectoryStructure)
hgsDirectoryStructure = lens _hgsDirectoryStructure (\s a -> s {_hgsDirectoryStructure = a})

-- | For use with encryptionType. This is a 128-bit, 16-byte hex value represented by a 32-character text string. If ivSource is set to "explicit" then this parameter is required and is used as the IV for encryption.
hgsConstantIv :: Lens' HlsGroupSettings (Maybe Text)
hgsConstantIv = lens _hgsConstantIv (\s a -> s {_hgsConstantIv = a})

-- | When set to gzip, compresses HLS playlist.
hgsManifestCompression :: Lens' HlsGroupSettings (Maybe HlsManifestCompression)
hgsManifestCompression = lens _hgsManifestCompression (\s a -> s {_hgsManifestCompression = a})

-- | Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest.
hgsStreamInfResolution :: Lens' HlsGroupSettings (Maybe HlsStreamInfResolution)
hgsStreamInfResolution = lens _hgsStreamInfResolution (\s a -> s {_hgsStreamInfResolution = a})

-- | If "vod", all segments are indexed and kept permanently in the destination and manifest. If "live", only the number segments specified in keepSegments and indexNSegments are kept; newer segments replace older segments, which may prevent players from rewinding all the way to the beginning of the event. VOD mode uses HLS EXT-X-PLAYLIST-TYPE of EVENT while the channel is running, converting it to a "VOD" type manifest on completion of the stream.
hgsMode :: Lens' HlsGroupSettings (Maybe HlsMode)
hgsMode = lens _hgsMode (\s a -> s {_hgsMode = a})

-- | Parameters that control interactions with the CDN.
hgsHlsCdnSettings :: Lens' HlsGroupSettings (Maybe HlsCdnSettings)
hgsHlsCdnSettings = lens _hgsHlsCdnSettings (\s a -> s {_hgsHlsCdnSettings = a})

-- | Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation.
hgsCodecSpecification :: Lens' HlsGroupSettings (Maybe HlsCodecSpecification)
hgsCodecSpecification = lens _hgsCodecSpecification (\s a -> s {_hgsCodecSpecification = a})

-- | ENABLED: The master manifest (.m3u8 file) for each pipeline includes information about both pipelines: first its own media files, then the media files of the other pipeline. This feature allows playout device that support stale manifest detection to switch from one manifest to the other, when the current manifest seems to be stale. There are still two destinations and two master manifests, but both master manifests reference the media files from both pipelines. DISABLED: The master manifest (.m3u8 file) for each pipeline includes information about its own pipeline only. For an HLS output group with MediaPackage as the destination, the DISABLED behavior is always followed. MediaPackage regenerates the manifests it serves to players so a redundant manifest from MediaLive is irrelevant.
hgsRedundantManifest :: Lens' HlsGroupSettings (Maybe HlsRedundantManifest)
hgsRedundantManifest = lens _hgsRedundantManifest (\s a -> s {_hgsRedundantManifest = a})

-- | Applies only if Mode field is LIVE. Specifies the maximum number of segments in the media manifest file. After this maximum, older segments are removed from the media manifest. This number must be smaller than the number in the Keep Segments field.
hgsIndexNSegments :: Lens' HlsGroupSettings (Maybe Natural)
hgsIndexNSegments = lens _hgsIndexNSegments (\s a -> s {_hgsIndexNSegments = a}) . mapping _Nat

-- | DISABLED: Do not create an I-frame-only manifest, but do create the master and media manifests (according to the Output Selection field). STANDARD: Create an I-frame-only manifest for each output that contains video, as well as the other manifests (according to the Output Selection field). The I-frame manifest contains a #EXT-X-I-FRAMES-ONLY tag to indicate it is I-frame only, and one or more #EXT-X-BYTERANGE entries identifying the I-frame position. For example, #EXT-X-BYTERANGE:160364@1461888"
hgsIFrameOnlyPlaylists :: Lens' HlsGroupSettings (Maybe IFrameOnlyPlaylistType)
hgsIFrameOnlyPlaylists = lens _hgsIFrameOnlyPlaylists (\s a -> s {_hgsIFrameOnlyPlaylists = a})

-- | useInputSegmentation has been deprecated. The configured segment size is always used.
hgsSegmentationMode :: Lens' HlsGroupSettings (Maybe HlsSegmentationMode)
hgsSegmentationMode = lens _hgsSegmentationMode (\s a -> s {_hgsSegmentationMode = a})

-- | Includes or excludes EXT-X-PROGRAM-DATE-TIME tag in .m3u8 manifest files. The value is calculated as follows: either the program date and time are initialized using the input timecode source, or the time is initialized using the input timecode source and the date is initialized using the timestampOffset.
hgsProgramDateTime :: Lens' HlsGroupSettings (Maybe HlsProgramDateTime)
hgsProgramDateTime = lens _hgsProgramDateTime (\s a -> s {_hgsProgramDateTime = a})

-- | Number of segments to write to a subdirectory before starting a new one. directoryStructure must be subdirectoryPerStream for this setting to have an effect.
hgsSegmentsPerSubdirectory :: Lens' HlsGroupSettings (Maybe Natural)
hgsSegmentsPerSubdirectory = lens _hgsSegmentsPerSubdirectory (\s a -> s {_hgsSegmentsPerSubdirectory = a}) . mapping _Nat

-- | SEGMENTED_FILES: Emit the program as segments - multiple .ts media files. SINGLE_FILE: Applies only if Mode field is VOD. Emit the program as a single .ts media file. The media manifest includes #EXT-X-BYTERANGE tags to index segments for playback. A typical use for this value is when sending the output to AWS Elemental MediaConvert, which can accept only a single media file. Playback while the channel is running is not guaranteed due to HTTP server caching.
hgsTsFileMode :: Lens' HlsGroupSettings (Maybe HlsTsFileMode)
hgsTsFileMode = lens _hgsTsFileMode (\s a -> s {_hgsTsFileMode = a})

-- | Specifies whether to insert EXT-X-DISCONTINUITY tags in the HLS child manifests for this output group. Typically, choose Insert because these tags are required in the manifest (according to the HLS specification) and serve an important purpose. Choose Never Insert only if the downstream system is doing real-time failover (without using the MediaLive automatic failover feature) and only if that downstream system has advised you to exclude the tags.
hgsDiscontinuityTags :: Lens' HlsGroupSettings (Maybe HlsDiscontinuityTags)
hgsDiscontinuityTags = lens _hgsDiscontinuityTags (\s a -> s {_hgsDiscontinuityTags = a})

-- | A partial URI prefix that will be prepended to each output in the media .m3u8 file. Can be used if base manifest is delivered from a different URL than the main .m3u8 file.
hgsBaseURLContent :: Lens' HlsGroupSettings (Maybe Text)
hgsBaseURLContent = lens _hgsBaseURLContent (\s a -> s {_hgsBaseURLContent = a})

-- | State of HLS ID3 Segment Tagging
hgsHlsId3SegmentTagging :: Lens' HlsGroupSettings (Maybe HlsId3SegmentTaggingState)
hgsHlsId3SegmentTagging = lens _hgsHlsId3SegmentTagging (\s a -> s {_hgsHlsId3SegmentTagging = a})

-- | Specifies whether to include the final (incomplete) segment in the media output when the pipeline stops producing output because of a channel stop, a channel pause or a loss of input to the pipeline. Auto means that MediaLive decides whether to include the final segment, depending on the channel class and the types of output groups. Suppress means to never include the incomplete segment. We recommend you choose Auto and let MediaLive control the behavior.
hgsIncompleteSegmentBehavior :: Lens' HlsGroupSettings (Maybe HlsIncompleteSegmentBehavior)
hgsIncompleteSegmentBehavior = lens _hgsIncompleteSegmentBehavior (\s a -> s {_hgsIncompleteSegmentBehavior = a})

-- | A partial URI prefix that will be prepended to each output in the media .m3u8 file. Can be used if base manifest is delivered from a different URL than the main .m3u8 file.
hgsBaseURLManifest :: Lens' HlsGroupSettings (Maybe Text)
hgsBaseURLManifest = lens _hgsBaseURLManifest (\s a -> s {_hgsBaseURLManifest = a})

-- | Optional. One value per output group. This field is required only if you are completing Base URL content A, and the downstream system has notified you that the media files for pipeline 1 of all outputs are in a location different from the media files for pipeline 0.
hgsBaseURLContent1 :: Lens' HlsGroupSettings (Maybe Text)
hgsBaseURLContent1 = lens _hgsBaseURLContent1 (\s a -> s {_hgsBaseURLContent1 = a})

-- | Mapping of up to 4 caption channels to caption languages.  Is only meaningful if captionLanguageSetting is set to "insert".
hgsCaptionLanguageMappings :: Lens' HlsGroupSettings [CaptionLanguageMapping]
hgsCaptionLanguageMappings = lens _hgsCaptionLanguageMappings (\s a -> s {_hgsCaptionLanguageMappings = a}) . _Default . _Coerce

-- | Parameter that control output group behavior on input loss.
hgsInputLossAction :: Lens' HlsGroupSettings (Maybe InputLossActionForHlsOut)
hgsInputLossAction = lens _hgsInputLossAction (\s a -> s {_hgsInputLossAction = a})

-- | The key provider settings.
hgsKeyProviderSettings :: Lens' HlsGroupSettings (Maybe KeyProviderSettings)
hgsKeyProviderSettings = lens _hgsKeyProviderSettings (\s a -> s {_hgsKeyProviderSettings = a})

-- | Applies only if Mode field is LIVE. Specifies the number of media segments to retain in the destination directory. This number should be bigger than indexNSegments (Num segments). We recommend (value = (2 x indexNsegments) + 1). If this "keep segments" number is too low, the following might happen: the player is still reading a media manifest file that lists this segment, but that segment has been removed from the destination directory (as directed by indexNSegments). This situation would result in a 404 HTTP error on the player.
hgsKeepSegments :: Lens' HlsGroupSettings (Maybe Natural)
hgsKeepSegments = lens _hgsKeepSegments (\s a -> s {_hgsKeepSegments = a}) . mapping _Nat

-- | Provides an extra millisecond delta offset to fine tune the timestamps.
hgsTimestampDeltaMilliseconds :: Lens' HlsGroupSettings (Maybe Natural)
hgsTimestampDeltaMilliseconds = lens _hgsTimestampDeltaMilliseconds (\s a -> s {_hgsTimestampDeltaMilliseconds = a}) . mapping _Nat

-- | Optional. One value per output group. Complete this field only if you are completing Base URL manifest A, and the downstream system has notified you that the child manifest files for pipeline 1 of all outputs are in a location different from the child manifest files for pipeline 0.
hgsBaseURLManifest1 :: Lens' HlsGroupSettings (Maybe Text)
hgsBaseURLManifest1 = lens _hgsBaseURLManifest1 (\s a -> s {_hgsBaseURLManifest1 = a})

-- | Period of insertion of EXT-X-PROGRAM-DATE-TIME entry, in seconds.
hgsProgramDateTimePeriod :: Lens' HlsGroupSettings (Maybe Natural)
hgsProgramDateTimePeriod = lens _hgsProgramDateTimePeriod (\s a -> s {_hgsProgramDateTimePeriod = a}) . mapping _Nat

-- | Either a single positive integer version value or a slash delimited list of version values (1/2/3).
hgsKeyFormatVersions :: Lens' HlsGroupSettings (Maybe Text)
hgsKeyFormatVersions = lens _hgsKeyFormatVersions (\s a -> s {_hgsKeyFormatVersions = a})

-- | When set to "disabled", sets the #EXT-X-ALLOW-CACHE:no tag in the manifest, which prevents clients from saving media segments for later replay.
hgsClientCache :: Lens' HlsGroupSettings (Maybe HlsClientCache)
hgsClientCache = lens _hgsClientCache (\s a -> s {_hgsClientCache = a})

-- | When set, minimumSegmentLength is enforced by looking ahead and back within the specified range for a nearby avail and extending the segment size if needed.
hgsMinSegmentLength :: Lens' HlsGroupSettings (Maybe Natural)
hgsMinSegmentLength = lens _hgsMinSegmentLength (\s a -> s {_hgsMinSegmentLength = a}) . mapping _Nat

-- | Indicates whether the output manifest should use floating point or integer values for segment duration.
hgsManifestDurationFormat :: Lens' HlsGroupSettings (Maybe HlsManifestDurationFormat)
hgsManifestDurationFormat = lens _hgsManifestDurationFormat (\s a -> s {_hgsManifestDurationFormat = a})

-- | For use with encryptionType. The IV (Initialization Vector) is a 128-bit number used in conjunction with the key for encrypting blocks. If this setting is "followsSegmentNumber", it will cause the IV to change every segment (to match the segment number). If this is set to "explicit", you must enter a constantIv value.
hgsIvSource :: Lens' HlsGroupSettings (Maybe HlsIvSource)
hgsIvSource = lens _hgsIvSource (\s a -> s {_hgsIvSource = a})

-- | Applies only to 608 Embedded output captions. insert: Include CLOSED-CAPTIONS lines in the manifest. Specify at least one language in the CC1 Language Code field. One CLOSED-CAPTION line is added for each Language Code you specify. Make sure to specify the languages in the order in which they appear in the original source (if the source is embedded format) or the order of the caption selectors (if the source is other than embedded). Otherwise, languages in the manifest will not match up properly with the output captions. none: Include CLOSED-CAPTIONS=NONE line in the manifest. omit: Omit any CLOSED-CAPTIONS line from the manifest.
hgsCaptionLanguageSetting :: Lens' HlsGroupSettings (Maybe HlsCaptionLanguageSetting)
hgsCaptionLanguageSetting = lens _hgsCaptionLanguageSetting (\s a -> s {_hgsCaptionLanguageSetting = a})

-- | A directory or HTTP destination for the HLS segments, manifest files, and encryption keys (if enabled).
hgsDestination :: Lens' HlsGroupSettings OutputLocationRef
hgsDestination = lens _hgsDestination (\s a -> s {_hgsDestination = a})

instance FromJSON HlsGroupSettings where
  parseJSON =
    withObject
      "HlsGroupSettings"
      ( \x ->
          HlsGroupSettings'
            <$> (x .:? "outputSelection")
            <*> (x .:? "ivInManifest")
            <*> (x .:? "timedMetadataId3Period")
            <*> (x .:? "encryptionType")
            <*> (x .:? "segmentLength")
            <*> (x .:? "timedMetadataId3Frame")
            <*> (x .:? "adMarkers" .!= mempty)
            <*> (x .:? "keyFormat")
            <*> (x .:? "directoryStructure")
            <*> (x .:? "constantIv")
            <*> (x .:? "manifestCompression")
            <*> (x .:? "streamInfResolution")
            <*> (x .:? "mode")
            <*> (x .:? "hlsCdnSettings")
            <*> (x .:? "codecSpecification")
            <*> (x .:? "redundantManifest")
            <*> (x .:? "indexNSegments")
            <*> (x .:? "iFrameOnlyPlaylists")
            <*> (x .:? "segmentationMode")
            <*> (x .:? "programDateTime")
            <*> (x .:? "segmentsPerSubdirectory")
            <*> (x .:? "tsFileMode")
            <*> (x .:? "discontinuityTags")
            <*> (x .:? "baseUrlContent")
            <*> (x .:? "hlsId3SegmentTagging")
            <*> (x .:? "incompleteSegmentBehavior")
            <*> (x .:? "baseUrlManifest")
            <*> (x .:? "baseUrlContent1")
            <*> (x .:? "captionLanguageMappings" .!= mempty)
            <*> (x .:? "inputLossAction")
            <*> (x .:? "keyProviderSettings")
            <*> (x .:? "keepSegments")
            <*> (x .:? "timestampDeltaMilliseconds")
            <*> (x .:? "baseUrlManifest1")
            <*> (x .:? "programDateTimePeriod")
            <*> (x .:? "keyFormatVersions")
            <*> (x .:? "clientCache")
            <*> (x .:? "minSegmentLength")
            <*> (x .:? "manifestDurationFormat")
            <*> (x .:? "ivSource")
            <*> (x .:? "captionLanguageSetting")
            <*> (x .: "destination")
      )

instance Hashable HlsGroupSettings

instance NFData HlsGroupSettings

instance ToJSON HlsGroupSettings where
  toJSON HlsGroupSettings' {..} =
    object
      ( catMaybes
          [ ("outputSelection" .=) <$> _hgsOutputSelection,
            ("ivInManifest" .=) <$> _hgsIvInManifest,
            ("timedMetadataId3Period" .=)
              <$> _hgsTimedMetadataId3Period,
            ("encryptionType" .=) <$> _hgsEncryptionType,
            ("segmentLength" .=) <$> _hgsSegmentLength,
            ("timedMetadataId3Frame" .=)
              <$> _hgsTimedMetadataId3Frame,
            ("adMarkers" .=) <$> _hgsAdMarkers,
            ("keyFormat" .=) <$> _hgsKeyFormat,
            ("directoryStructure" .=) <$> _hgsDirectoryStructure,
            ("constantIv" .=) <$> _hgsConstantIv,
            ("manifestCompression" .=)
              <$> _hgsManifestCompression,
            ("streamInfResolution" .=)
              <$> _hgsStreamInfResolution,
            ("mode" .=) <$> _hgsMode,
            ("hlsCdnSettings" .=) <$> _hgsHlsCdnSettings,
            ("codecSpecification" .=) <$> _hgsCodecSpecification,
            ("redundantManifest" .=) <$> _hgsRedundantManifest,
            ("indexNSegments" .=) <$> _hgsIndexNSegments,
            ("iFrameOnlyPlaylists" .=)
              <$> _hgsIFrameOnlyPlaylists,
            ("segmentationMode" .=) <$> _hgsSegmentationMode,
            ("programDateTime" .=) <$> _hgsProgramDateTime,
            ("segmentsPerSubdirectory" .=)
              <$> _hgsSegmentsPerSubdirectory,
            ("tsFileMode" .=) <$> _hgsTsFileMode,
            ("discontinuityTags" .=) <$> _hgsDiscontinuityTags,
            ("baseUrlContent" .=) <$> _hgsBaseURLContent,
            ("hlsId3SegmentTagging" .=)
              <$> _hgsHlsId3SegmentTagging,
            ("incompleteSegmentBehavior" .=)
              <$> _hgsIncompleteSegmentBehavior,
            ("baseUrlManifest" .=) <$> _hgsBaseURLManifest,
            ("baseUrlContent1" .=) <$> _hgsBaseURLContent1,
            ("captionLanguageMappings" .=)
              <$> _hgsCaptionLanguageMappings,
            ("inputLossAction" .=) <$> _hgsInputLossAction,
            ("keyProviderSettings" .=)
              <$> _hgsKeyProviderSettings,
            ("keepSegments" .=) <$> _hgsKeepSegments,
            ("timestampDeltaMilliseconds" .=)
              <$> _hgsTimestampDeltaMilliseconds,
            ("baseUrlManifest1" .=) <$> _hgsBaseURLManifest1,
            ("programDateTimePeriod" .=)
              <$> _hgsProgramDateTimePeriod,
            ("keyFormatVersions" .=) <$> _hgsKeyFormatVersions,
            ("clientCache" .=) <$> _hgsClientCache,
            ("minSegmentLength" .=) <$> _hgsMinSegmentLength,
            ("manifestDurationFormat" .=)
              <$> _hgsManifestDurationFormat,
            ("ivSource" .=) <$> _hgsIvSource,
            ("captionLanguageSetting" .=)
              <$> _hgsCaptionLanguageSetting,
            Just ("destination" .= _hgsDestination)
          ]
      )
