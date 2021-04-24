{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types.HlsManifestCreateOrUpdateParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.HlsManifestCreateOrUpdateParameters where

import Network.AWS.Lens
import Network.AWS.MediaPackage.Types.AdMarkers
import Network.AWS.MediaPackage.Types.AdTriggersElement
import Network.AWS.MediaPackage.Types.AdsOnDeliveryRestrictions
import Network.AWS.MediaPackage.Types.PlaylistType
import Network.AWS.Prelude

-- | A HTTP Live Streaming (HLS) manifest configuration.
--
-- /See:/ 'hlsManifestCreateOrUpdateParameters' smart constructor.
data HlsManifestCreateOrUpdateParameters = HlsManifestCreateOrUpdateParameters'
  { _hmcoupAdMarkers ::
      !( Maybe
           AdMarkers
       ),
    _hmcoupProgramDateTimeIntervalSeconds ::
      !( Maybe
           Int
       ),
    _hmcoupPlaylistWindowSeconds ::
      !( Maybe
           Int
       ),
    _hmcoupAdTriggers ::
      !( Maybe
           [AdTriggersElement]
       ),
    _hmcoupIncludeIframeOnlyStream ::
      !( Maybe
           Bool
       ),
    _hmcoupManifestName ::
      !( Maybe
           Text
       ),
    _hmcoupAdsOnDeliveryRestrictions ::
      !( Maybe
           AdsOnDeliveryRestrictions
       ),
    _hmcoupPlaylistType ::
      !( Maybe
           PlaylistType
       ),
    _hmcoupId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'HlsManifestCreateOrUpdateParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hmcoupAdMarkers' - This setting controls how ad markers are included in the packaged OriginEndpoint. "NONE" will omit all SCTE-35 ad markers from the output. "PASSTHROUGH" causes the manifest to contain a copy of the SCTE-35 ad markers (comments) taken directly from the input HTTP Live Streaming (HLS) manifest. "SCTE35_ENHANCED" generates ad markers and blackout tags based on SCTE-35 messages in the input source. "DATERANGE" inserts EXT-X-DATERANGE tags to signal ad and program transition events  in HLS and CMAF manifests. For this option, you must set a programDateTimeIntervalSeconds value  that is greater than 0.
--
-- * 'hmcoupProgramDateTimeIntervalSeconds' - The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag inserted into manifests. Additionally, when an interval is specified ID3Timed Metadata messages will be generated every 5 seconds using the ingest time of the content. If the interval is not specified, or set to 0, then no EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests and no ID3Timed Metadata messages will be generated. Note that irrespective of this parameter, if any ID3 Timed Metadata is found in HTTP Live Streaming (HLS) input, it will be passed through to HLS output.
--
-- * 'hmcoupPlaylistWindowSeconds' - Time window (in seconds) contained in each parent manifest.
--
-- * 'hmcoupAdTriggers' - Undocumented member.
--
-- * 'hmcoupIncludeIframeOnlyStream' - When enabled, an I-Frame only stream will be included in the output.
--
-- * 'hmcoupManifestName' - An optional short string appended to the end of the OriginEndpoint URL. If not specified, defaults to the manifestName for the OriginEndpoint.
--
-- * 'hmcoupAdsOnDeliveryRestrictions' - Undocumented member.
--
-- * 'hmcoupPlaylistType' - The HTTP Live Streaming (HLS) playlist type. When either "EVENT" or "VOD" is specified, a corresponding EXT-X-PLAYLIST-TYPE entry will be included in the media playlist.
--
-- * 'hmcoupId' - The ID of the manifest. The ID must be unique within the OriginEndpoint and it cannot be changed after it is created.
hlsManifestCreateOrUpdateParameters ::
  -- | 'hmcoupId'
  Text ->
  HlsManifestCreateOrUpdateParameters
hlsManifestCreateOrUpdateParameters pId_ =
  HlsManifestCreateOrUpdateParameters'
    { _hmcoupAdMarkers =
        Nothing,
      _hmcoupProgramDateTimeIntervalSeconds =
        Nothing,
      _hmcoupPlaylistWindowSeconds = Nothing,
      _hmcoupAdTriggers = Nothing,
      _hmcoupIncludeIframeOnlyStream =
        Nothing,
      _hmcoupManifestName = Nothing,
      _hmcoupAdsOnDeliveryRestrictions =
        Nothing,
      _hmcoupPlaylistType = Nothing,
      _hmcoupId = pId_
    }

-- | This setting controls how ad markers are included in the packaged OriginEndpoint. "NONE" will omit all SCTE-35 ad markers from the output. "PASSTHROUGH" causes the manifest to contain a copy of the SCTE-35 ad markers (comments) taken directly from the input HTTP Live Streaming (HLS) manifest. "SCTE35_ENHANCED" generates ad markers and blackout tags based on SCTE-35 messages in the input source. "DATERANGE" inserts EXT-X-DATERANGE tags to signal ad and program transition events  in HLS and CMAF manifests. For this option, you must set a programDateTimeIntervalSeconds value  that is greater than 0.
hmcoupAdMarkers :: Lens' HlsManifestCreateOrUpdateParameters (Maybe AdMarkers)
hmcoupAdMarkers = lens _hmcoupAdMarkers (\s a -> s {_hmcoupAdMarkers = a})

-- | The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag inserted into manifests. Additionally, when an interval is specified ID3Timed Metadata messages will be generated every 5 seconds using the ingest time of the content. If the interval is not specified, or set to 0, then no EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests and no ID3Timed Metadata messages will be generated. Note that irrespective of this parameter, if any ID3 Timed Metadata is found in HTTP Live Streaming (HLS) input, it will be passed through to HLS output.
hmcoupProgramDateTimeIntervalSeconds :: Lens' HlsManifestCreateOrUpdateParameters (Maybe Int)
hmcoupProgramDateTimeIntervalSeconds = lens _hmcoupProgramDateTimeIntervalSeconds (\s a -> s {_hmcoupProgramDateTimeIntervalSeconds = a})

-- | Time window (in seconds) contained in each parent manifest.
hmcoupPlaylistWindowSeconds :: Lens' HlsManifestCreateOrUpdateParameters (Maybe Int)
hmcoupPlaylistWindowSeconds = lens _hmcoupPlaylistWindowSeconds (\s a -> s {_hmcoupPlaylistWindowSeconds = a})

-- | Undocumented member.
hmcoupAdTriggers :: Lens' HlsManifestCreateOrUpdateParameters [AdTriggersElement]
hmcoupAdTriggers = lens _hmcoupAdTriggers (\s a -> s {_hmcoupAdTriggers = a}) . _Default . _Coerce

-- | When enabled, an I-Frame only stream will be included in the output.
hmcoupIncludeIframeOnlyStream :: Lens' HlsManifestCreateOrUpdateParameters (Maybe Bool)
hmcoupIncludeIframeOnlyStream = lens _hmcoupIncludeIframeOnlyStream (\s a -> s {_hmcoupIncludeIframeOnlyStream = a})

-- | An optional short string appended to the end of the OriginEndpoint URL. If not specified, defaults to the manifestName for the OriginEndpoint.
hmcoupManifestName :: Lens' HlsManifestCreateOrUpdateParameters (Maybe Text)
hmcoupManifestName = lens _hmcoupManifestName (\s a -> s {_hmcoupManifestName = a})

-- | Undocumented member.
hmcoupAdsOnDeliveryRestrictions :: Lens' HlsManifestCreateOrUpdateParameters (Maybe AdsOnDeliveryRestrictions)
hmcoupAdsOnDeliveryRestrictions = lens _hmcoupAdsOnDeliveryRestrictions (\s a -> s {_hmcoupAdsOnDeliveryRestrictions = a})

-- | The HTTP Live Streaming (HLS) playlist type. When either "EVENT" or "VOD" is specified, a corresponding EXT-X-PLAYLIST-TYPE entry will be included in the media playlist.
hmcoupPlaylistType :: Lens' HlsManifestCreateOrUpdateParameters (Maybe PlaylistType)
hmcoupPlaylistType = lens _hmcoupPlaylistType (\s a -> s {_hmcoupPlaylistType = a})

-- | The ID of the manifest. The ID must be unique within the OriginEndpoint and it cannot be changed after it is created.
hmcoupId :: Lens' HlsManifestCreateOrUpdateParameters Text
hmcoupId = lens _hmcoupId (\s a -> s {_hmcoupId = a})

instance Hashable HlsManifestCreateOrUpdateParameters

instance NFData HlsManifestCreateOrUpdateParameters

instance ToJSON HlsManifestCreateOrUpdateParameters where
  toJSON HlsManifestCreateOrUpdateParameters' {..} =
    object
      ( catMaybes
          [ ("adMarkers" .=) <$> _hmcoupAdMarkers,
            ("programDateTimeIntervalSeconds" .=)
              <$> _hmcoupProgramDateTimeIntervalSeconds,
            ("playlistWindowSeconds" .=)
              <$> _hmcoupPlaylistWindowSeconds,
            ("adTriggers" .=) <$> _hmcoupAdTriggers,
            ("includeIframeOnlyStream" .=)
              <$> _hmcoupIncludeIframeOnlyStream,
            ("manifestName" .=) <$> _hmcoupManifestName,
            ("adsOnDeliveryRestrictions" .=)
              <$> _hmcoupAdsOnDeliveryRestrictions,
            ("playlistType" .=) <$> _hmcoupPlaylistType,
            Just ("id" .= _hmcoupId)
          ]
      )
