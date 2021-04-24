{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.CmafGroupSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmafGroupSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.CmafAdditionalManifest
import Network.AWS.MediaConvert.Types.CmafClientCache
import Network.AWS.MediaConvert.Types.CmafCodecSpecification
import Network.AWS.MediaConvert.Types.CmafEncryptionSettings
import Network.AWS.MediaConvert.Types.CmafManifestCompression
import Network.AWS.MediaConvert.Types.CmafManifestDurationFormat
import Network.AWS.MediaConvert.Types.CmafMpdProfile
import Network.AWS.MediaConvert.Types.CmafSegmentControl
import Network.AWS.MediaConvert.Types.CmafStreamInfResolution
import Network.AWS.MediaConvert.Types.CmafWriteDASHManifest
import Network.AWS.MediaConvert.Types.CmafWriteHLSManifest
import Network.AWS.MediaConvert.Types.CmafWriteSegmentTimelineInRepresentation
import Network.AWS.MediaConvert.Types.DestinationSettings
import Network.AWS.Prelude

-- | Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to CMAF_GROUP_SETTINGS. Each output in a CMAF Output Group may only contain a single video, audio, or caption output.
--
-- /See:/ 'cmafGroupSettings' smart constructor.
data CmafGroupSettings = CmafGroupSettings'
  { _cgsSegmentLength ::
      !(Maybe Nat),
    _cgsSegmentControl ::
      !(Maybe CmafSegmentControl),
    _cgsWriteDashManifest ::
      !(Maybe CmafWriteDASHManifest),
    _cgsFragmentLength :: !(Maybe Nat),
    _cgsManifestCompression ::
      !(Maybe CmafManifestCompression),
    _cgsBaseURL :: !(Maybe Text),
    _cgsStreamInfResolution ::
      !(Maybe CmafStreamInfResolution),
    _cgsCodecSpecification ::
      !(Maybe CmafCodecSpecification),
    _cgsAdditionalManifests ::
      !(Maybe [CmafAdditionalManifest]),
    _cgsMpdProfile ::
      !(Maybe CmafMpdProfile),
    _cgsEncryption ::
      !(Maybe CmafEncryptionSettings),
    _cgsMinBufferTime :: !(Maybe Nat),
    _cgsDestination :: !(Maybe Text),
    _cgsMinFinalSegmentLength ::
      !(Maybe Double),
    _cgsDestinationSettings ::
      !(Maybe DestinationSettings),
    _cgsWriteSegmentTimelineInRepresentation ::
      !( Maybe
           CmafWriteSegmentTimelineInRepresentation
       ),
    _cgsWriteHlsManifest ::
      !(Maybe CmafWriteHLSManifest),
    _cgsClientCache ::
      !(Maybe CmafClientCache),
    _cgsManifestDurationFormat ::
      !(Maybe CmafManifestDurationFormat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CmafGroupSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgsSegmentLength' - Use this setting to specify the length, in seconds, of each individual CMAF segment. This value applies to the whole package; that is, to every output in the output group. Note that segments end on the first keyframe after this number of seconds, so the actual segment length might be slightly longer. If you set Segment control (CmafSegmentControl) to single file, the service puts the content of each output in a single file that has metadata that marks these segments. If you set it to segmented files, the service creates multiple files for each output, each with the content of one segment.
--
-- * 'cgsSegmentControl' - When set to SINGLE_FILE, a single output file is generated, which is internally segmented using the Fragment Length and Segment Length. When set to SEGMENTED_FILES, separate segment files will be created.
--
-- * 'cgsWriteDashManifest' - When set to ENABLED, a DASH MPD manifest will be generated for this output.
--
-- * 'cgsFragmentLength' - Length of fragments to generate (in seconds). Fragment length must be compatible with GOP size and Framerate. Note that fragments will end on the next keyframe after this number of seconds, so actual fragment length may be longer. When Emit Single File is checked, the fragmentation is internal to a single output file and it does not cause the creation of many output files as in other output types.
--
-- * 'cgsManifestCompression' - When set to GZIP, compresses HLS playlist.
--
-- * 'cgsBaseURL' - A partial URI prefix that will be put in the manifest file at the top level BaseURL element. Can be used if streams are delivered from a different URL than the manifest file.
--
-- * 'cgsStreamInfResolution' - Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest.
--
-- * 'cgsCodecSpecification' - Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation.
--
-- * 'cgsAdditionalManifests' - By default, the service creates one top-level .m3u8 HLS manifest and one top -level .mpd DASH manifest for each CMAF output group in your job. These default manifests reference every output in the output group. To create additional top-level manifests that reference a subset of the outputs in the output group, specify a list of them here. For each additional manifest that you specify, the service creates one HLS manifest and one DASH manifest.
--
-- * 'cgsMpdProfile' - Specify whether your DASH profile is on-demand or main. When you choose Main profile (MAIN_PROFILE), the service signals  urn:mpeg:dash:profile:isoff-main:2011 in your .mpd DASH manifest. When you choose On-demand (ON_DEMAND_PROFILE), the service signals urn:mpeg:dash:profile:isoff-on-demand:2011 in your .mpd. When you choose On-demand, you must also set the output group setting Segment control (SegmentControl) to Single file (SINGLE_FILE).
--
-- * 'cgsEncryption' - DRM settings.
--
-- * 'cgsMinBufferTime' - Minimum time of initially buffered media that is needed to ensure smooth playout.
--
-- * 'cgsDestination' - Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file.
--
-- * 'cgsMinFinalSegmentLength' - Keep this setting at the default value of 0, unless you are troubleshooting a problem with how devices play back the end of your video asset. If you know that player devices are hanging on the final segment of your video because the length of your final segment is too short, use this setting to specify a minimum final segment length, in seconds. Choose a value that is greater than or equal to 1 and less than your segment length. When you specify a value for this setting, the encoder will combine any final segment that is shorter than the length that you specify with the previous segment. For example, your segment length is 3 seconds and your final segment is .5 seconds without a minimum final segment length; when you set the minimum final segment length to 1, your final segment is 3.5 seconds.
--
-- * 'cgsDestinationSettings' - Settings associated with the destination. Will vary based on the type of destination
--
-- * 'cgsWriteSegmentTimelineInRepresentation' - When you enable Precise segment duration in DASH manifests (writeSegmentTimelineInRepresentation), your DASH manifest shows precise segment durations. The segment duration information appears inside the SegmentTimeline element, inside SegmentTemplate at the Representation level. When this feature isn't enabled, the segment durations in your DASH manifest are approximate. The segment duration information appears in the duration attribute of the SegmentTemplate element.
--
-- * 'cgsWriteHlsManifest' - When set to ENABLED, an Apple HLS manifest will be generated for this output.
--
-- * 'cgsClientCache' - Disable this setting only when your workflow requires the #EXT-X-ALLOW-CACHE:no tag. Otherwise, keep the default value Enabled (ENABLED) and control caching in your video distribution set up. For example, use the Cache-Control http header.
--
-- * 'cgsManifestDurationFormat' - Indicates whether the output manifest should use floating point values for segment duration.
cmafGroupSettings ::
  CmafGroupSettings
cmafGroupSettings =
  CmafGroupSettings'
    { _cgsSegmentLength = Nothing,
      _cgsSegmentControl = Nothing,
      _cgsWriteDashManifest = Nothing,
      _cgsFragmentLength = Nothing,
      _cgsManifestCompression = Nothing,
      _cgsBaseURL = Nothing,
      _cgsStreamInfResolution = Nothing,
      _cgsCodecSpecification = Nothing,
      _cgsAdditionalManifests = Nothing,
      _cgsMpdProfile = Nothing,
      _cgsEncryption = Nothing,
      _cgsMinBufferTime = Nothing,
      _cgsDestination = Nothing,
      _cgsMinFinalSegmentLength = Nothing,
      _cgsDestinationSettings = Nothing,
      _cgsWriteSegmentTimelineInRepresentation = Nothing,
      _cgsWriteHlsManifest = Nothing,
      _cgsClientCache = Nothing,
      _cgsManifestDurationFormat = Nothing
    }

-- | Use this setting to specify the length, in seconds, of each individual CMAF segment. This value applies to the whole package; that is, to every output in the output group. Note that segments end on the first keyframe after this number of seconds, so the actual segment length might be slightly longer. If you set Segment control (CmafSegmentControl) to single file, the service puts the content of each output in a single file that has metadata that marks these segments. If you set it to segmented files, the service creates multiple files for each output, each with the content of one segment.
cgsSegmentLength :: Lens' CmafGroupSettings (Maybe Natural)
cgsSegmentLength = lens _cgsSegmentLength (\s a -> s {_cgsSegmentLength = a}) . mapping _Nat

-- | When set to SINGLE_FILE, a single output file is generated, which is internally segmented using the Fragment Length and Segment Length. When set to SEGMENTED_FILES, separate segment files will be created.
cgsSegmentControl :: Lens' CmafGroupSettings (Maybe CmafSegmentControl)
cgsSegmentControl = lens _cgsSegmentControl (\s a -> s {_cgsSegmentControl = a})

-- | When set to ENABLED, a DASH MPD manifest will be generated for this output.
cgsWriteDashManifest :: Lens' CmafGroupSettings (Maybe CmafWriteDASHManifest)
cgsWriteDashManifest = lens _cgsWriteDashManifest (\s a -> s {_cgsWriteDashManifest = a})

-- | Length of fragments to generate (in seconds). Fragment length must be compatible with GOP size and Framerate. Note that fragments will end on the next keyframe after this number of seconds, so actual fragment length may be longer. When Emit Single File is checked, the fragmentation is internal to a single output file and it does not cause the creation of many output files as in other output types.
cgsFragmentLength :: Lens' CmafGroupSettings (Maybe Natural)
cgsFragmentLength = lens _cgsFragmentLength (\s a -> s {_cgsFragmentLength = a}) . mapping _Nat

-- | When set to GZIP, compresses HLS playlist.
cgsManifestCompression :: Lens' CmafGroupSettings (Maybe CmafManifestCompression)
cgsManifestCompression = lens _cgsManifestCompression (\s a -> s {_cgsManifestCompression = a})

-- | A partial URI prefix that will be put in the manifest file at the top level BaseURL element. Can be used if streams are delivered from a different URL than the manifest file.
cgsBaseURL :: Lens' CmafGroupSettings (Maybe Text)
cgsBaseURL = lens _cgsBaseURL (\s a -> s {_cgsBaseURL = a})

-- | Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest.
cgsStreamInfResolution :: Lens' CmafGroupSettings (Maybe CmafStreamInfResolution)
cgsStreamInfResolution = lens _cgsStreamInfResolution (\s a -> s {_cgsStreamInfResolution = a})

-- | Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation.
cgsCodecSpecification :: Lens' CmafGroupSettings (Maybe CmafCodecSpecification)
cgsCodecSpecification = lens _cgsCodecSpecification (\s a -> s {_cgsCodecSpecification = a})

-- | By default, the service creates one top-level .m3u8 HLS manifest and one top -level .mpd DASH manifest for each CMAF output group in your job. These default manifests reference every output in the output group. To create additional top-level manifests that reference a subset of the outputs in the output group, specify a list of them here. For each additional manifest that you specify, the service creates one HLS manifest and one DASH manifest.
cgsAdditionalManifests :: Lens' CmafGroupSettings [CmafAdditionalManifest]
cgsAdditionalManifests = lens _cgsAdditionalManifests (\s a -> s {_cgsAdditionalManifests = a}) . _Default . _Coerce

-- | Specify whether your DASH profile is on-demand or main. When you choose Main profile (MAIN_PROFILE), the service signals  urn:mpeg:dash:profile:isoff-main:2011 in your .mpd DASH manifest. When you choose On-demand (ON_DEMAND_PROFILE), the service signals urn:mpeg:dash:profile:isoff-on-demand:2011 in your .mpd. When you choose On-demand, you must also set the output group setting Segment control (SegmentControl) to Single file (SINGLE_FILE).
cgsMpdProfile :: Lens' CmafGroupSettings (Maybe CmafMpdProfile)
cgsMpdProfile = lens _cgsMpdProfile (\s a -> s {_cgsMpdProfile = a})

-- | DRM settings.
cgsEncryption :: Lens' CmafGroupSettings (Maybe CmafEncryptionSettings)
cgsEncryption = lens _cgsEncryption (\s a -> s {_cgsEncryption = a})

-- | Minimum time of initially buffered media that is needed to ensure smooth playout.
cgsMinBufferTime :: Lens' CmafGroupSettings (Maybe Natural)
cgsMinBufferTime = lens _cgsMinBufferTime (\s a -> s {_cgsMinBufferTime = a}) . mapping _Nat

-- | Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file.
cgsDestination :: Lens' CmafGroupSettings (Maybe Text)
cgsDestination = lens _cgsDestination (\s a -> s {_cgsDestination = a})

-- | Keep this setting at the default value of 0, unless you are troubleshooting a problem with how devices play back the end of your video asset. If you know that player devices are hanging on the final segment of your video because the length of your final segment is too short, use this setting to specify a minimum final segment length, in seconds. Choose a value that is greater than or equal to 1 and less than your segment length. When you specify a value for this setting, the encoder will combine any final segment that is shorter than the length that you specify with the previous segment. For example, your segment length is 3 seconds and your final segment is .5 seconds without a minimum final segment length; when you set the minimum final segment length to 1, your final segment is 3.5 seconds.
cgsMinFinalSegmentLength :: Lens' CmafGroupSettings (Maybe Double)
cgsMinFinalSegmentLength = lens _cgsMinFinalSegmentLength (\s a -> s {_cgsMinFinalSegmentLength = a})

-- | Settings associated with the destination. Will vary based on the type of destination
cgsDestinationSettings :: Lens' CmafGroupSettings (Maybe DestinationSettings)
cgsDestinationSettings = lens _cgsDestinationSettings (\s a -> s {_cgsDestinationSettings = a})

-- | When you enable Precise segment duration in DASH manifests (writeSegmentTimelineInRepresentation), your DASH manifest shows precise segment durations. The segment duration information appears inside the SegmentTimeline element, inside SegmentTemplate at the Representation level. When this feature isn't enabled, the segment durations in your DASH manifest are approximate. The segment duration information appears in the duration attribute of the SegmentTemplate element.
cgsWriteSegmentTimelineInRepresentation :: Lens' CmafGroupSettings (Maybe CmafWriteSegmentTimelineInRepresentation)
cgsWriteSegmentTimelineInRepresentation = lens _cgsWriteSegmentTimelineInRepresentation (\s a -> s {_cgsWriteSegmentTimelineInRepresentation = a})

-- | When set to ENABLED, an Apple HLS manifest will be generated for this output.
cgsWriteHlsManifest :: Lens' CmafGroupSettings (Maybe CmafWriteHLSManifest)
cgsWriteHlsManifest = lens _cgsWriteHlsManifest (\s a -> s {_cgsWriteHlsManifest = a})

-- | Disable this setting only when your workflow requires the #EXT-X-ALLOW-CACHE:no tag. Otherwise, keep the default value Enabled (ENABLED) and control caching in your video distribution set up. For example, use the Cache-Control http header.
cgsClientCache :: Lens' CmafGroupSettings (Maybe CmafClientCache)
cgsClientCache = lens _cgsClientCache (\s a -> s {_cgsClientCache = a})

-- | Indicates whether the output manifest should use floating point values for segment duration.
cgsManifestDurationFormat :: Lens' CmafGroupSettings (Maybe CmafManifestDurationFormat)
cgsManifestDurationFormat = lens _cgsManifestDurationFormat (\s a -> s {_cgsManifestDurationFormat = a})

instance FromJSON CmafGroupSettings where
  parseJSON =
    withObject
      "CmafGroupSettings"
      ( \x ->
          CmafGroupSettings'
            <$> (x .:? "segmentLength")
            <*> (x .:? "segmentControl")
            <*> (x .:? "writeDashManifest")
            <*> (x .:? "fragmentLength")
            <*> (x .:? "manifestCompression")
            <*> (x .:? "baseUrl")
            <*> (x .:? "streamInfResolution")
            <*> (x .:? "codecSpecification")
            <*> (x .:? "additionalManifests" .!= mempty)
            <*> (x .:? "mpdProfile")
            <*> (x .:? "encryption")
            <*> (x .:? "minBufferTime")
            <*> (x .:? "destination")
            <*> (x .:? "minFinalSegmentLength")
            <*> (x .:? "destinationSettings")
            <*> (x .:? "writeSegmentTimelineInRepresentation")
            <*> (x .:? "writeHlsManifest")
            <*> (x .:? "clientCache")
            <*> (x .:? "manifestDurationFormat")
      )

instance Hashable CmafGroupSettings

instance NFData CmafGroupSettings

instance ToJSON CmafGroupSettings where
  toJSON CmafGroupSettings' {..} =
    object
      ( catMaybes
          [ ("segmentLength" .=) <$> _cgsSegmentLength,
            ("segmentControl" .=) <$> _cgsSegmentControl,
            ("writeDashManifest" .=) <$> _cgsWriteDashManifest,
            ("fragmentLength" .=) <$> _cgsFragmentLength,
            ("manifestCompression" .=)
              <$> _cgsManifestCompression,
            ("baseUrl" .=) <$> _cgsBaseURL,
            ("streamInfResolution" .=)
              <$> _cgsStreamInfResolution,
            ("codecSpecification" .=) <$> _cgsCodecSpecification,
            ("additionalManifests" .=)
              <$> _cgsAdditionalManifests,
            ("mpdProfile" .=) <$> _cgsMpdProfile,
            ("encryption" .=) <$> _cgsEncryption,
            ("minBufferTime" .=) <$> _cgsMinBufferTime,
            ("destination" .=) <$> _cgsDestination,
            ("minFinalSegmentLength" .=)
              <$> _cgsMinFinalSegmentLength,
            ("destinationSettings" .=)
              <$> _cgsDestinationSettings,
            ("writeSegmentTimelineInRepresentation" .=)
              <$> _cgsWriteSegmentTimelineInRepresentation,
            ("writeHlsManifest" .=) <$> _cgsWriteHlsManifest,
            ("clientCache" .=) <$> _cgsClientCache,
            ("manifestDurationFormat" .=)
              <$> _cgsManifestDurationFormat
          ]
      )
