{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types.DashPackage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.DashPackage where

import Network.AWS.Lens
import Network.AWS.MediaPackage.Types.AdTriggersElement
import Network.AWS.MediaPackage.Types.AdsOnDeliveryRestrictions
import Network.AWS.MediaPackage.Types.DashEncryption
import Network.AWS.MediaPackage.Types.ManifestLayout
import Network.AWS.MediaPackage.Types.PeriodTriggersElement
import Network.AWS.MediaPackage.Types.Profile
import Network.AWS.MediaPackage.Types.SegmentTemplateFormat
import Network.AWS.MediaPackage.Types.StreamSelection
import Network.AWS.MediaPackage.Types.UtcTiming
import Network.AWS.Prelude

-- | A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
--
-- /See:/ 'dashPackage' smart constructor.
data DashPackage = DashPackage'
  { _dpMinBufferTimeSeconds ::
      !(Maybe Int),
    _dpStreamSelection :: !(Maybe StreamSelection),
    _dpPeriodTriggers ::
      !(Maybe [PeriodTriggersElement]),
    _dpAdTriggers :: !(Maybe [AdTriggersElement]),
    _dpManifestWindowSeconds :: !(Maybe Int),
    _dpManifestLayout :: !(Maybe ManifestLayout),
    _dpMinUpdatePeriodSeconds :: !(Maybe Int),
    _dpEncryption :: !(Maybe DashEncryption),
    _dpAdsOnDeliveryRestrictions ::
      !(Maybe AdsOnDeliveryRestrictions),
    _dpUtcTimingURI :: !(Maybe Text),
    _dpSegmentDurationSeconds :: !(Maybe Int),
    _dpProfile :: !(Maybe Profile),
    _dpSegmentTemplateFormat ::
      !(Maybe SegmentTemplateFormat),
    _dpSuggestedPresentationDelaySeconds ::
      !(Maybe Int),
    _dpUtcTiming :: !(Maybe UtcTiming)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DashPackage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpMinBufferTimeSeconds' - Minimum duration (in seconds) that a player will buffer media before starting the presentation.
--
-- * 'dpStreamSelection' - Undocumented member.
--
-- * 'dpPeriodTriggers' - A list of triggers that controls when the outgoing Dynamic Adaptive Streaming over HTTP (DASH) Media Presentation Description (MPD) will be partitioned into multiple periods. If empty, the content will not be partitioned into more than one period. If the list contains "ADS", new periods will be created where the Channel source contains SCTE-35 ad markers.
--
-- * 'dpAdTriggers' - Undocumented member.
--
-- * 'dpManifestWindowSeconds' - Time window (in seconds) contained in each manifest.
--
-- * 'dpManifestLayout' - Determines the position of some tags in the Media Presentation Description (MPD).  When set to FULL, elements like SegmentTemplate and ContentProtection are included in each Representation.  When set to COMPACT, duplicate elements are combined and presented at the AdaptationSet level.
--
-- * 'dpMinUpdatePeriodSeconds' - Minimum duration (in seconds) between potential changes to the Dynamic Adaptive Streaming over HTTP (DASH) Media Presentation Description (MPD).
--
-- * 'dpEncryption' - Undocumented member.
--
-- * 'dpAdsOnDeliveryRestrictions' - Undocumented member.
--
-- * 'dpUtcTimingURI' - Specifies the value attribute of the UTCTiming field when utcTiming is set to HTTP-ISO or HTTP-HEAD
--
-- * 'dpSegmentDurationSeconds' - Duration (in seconds) of each segment. Actual segments will be rounded to the nearest multiple of the source segment duration.
--
-- * 'dpProfile' - The Dynamic Adaptive Streaming over HTTP (DASH) profile type.  When set to "HBBTV_1_5", HbbTV 1.5 compliant output is enabled.
--
-- * 'dpSegmentTemplateFormat' - Determines the type of SegmentTemplate included in the Media Presentation Description (MPD).  When set to NUMBER_WITH_TIMELINE, a full timeline is presented in each SegmentTemplate, with $Number$ media URLs.  When set to TIME_WITH_TIMELINE, a full timeline is presented in each SegmentTemplate, with $Time$ media URLs. When set to NUMBER_WITH_DURATION, only a duration is included in each SegmentTemplate, with $Number$ media URLs.
--
-- * 'dpSuggestedPresentationDelaySeconds' - Duration (in seconds) to delay live content before presentation.
--
-- * 'dpUtcTiming' - Determines the type of UTCTiming included in the Media Presentation Description (MPD)
dashPackage ::
  DashPackage
dashPackage =
  DashPackage'
    { _dpMinBufferTimeSeconds = Nothing,
      _dpStreamSelection = Nothing,
      _dpPeriodTriggers = Nothing,
      _dpAdTriggers = Nothing,
      _dpManifestWindowSeconds = Nothing,
      _dpManifestLayout = Nothing,
      _dpMinUpdatePeriodSeconds = Nothing,
      _dpEncryption = Nothing,
      _dpAdsOnDeliveryRestrictions = Nothing,
      _dpUtcTimingURI = Nothing,
      _dpSegmentDurationSeconds = Nothing,
      _dpProfile = Nothing,
      _dpSegmentTemplateFormat = Nothing,
      _dpSuggestedPresentationDelaySeconds = Nothing,
      _dpUtcTiming = Nothing
    }

-- | Minimum duration (in seconds) that a player will buffer media before starting the presentation.
dpMinBufferTimeSeconds :: Lens' DashPackage (Maybe Int)
dpMinBufferTimeSeconds = lens _dpMinBufferTimeSeconds (\s a -> s {_dpMinBufferTimeSeconds = a})

-- | Undocumented member.
dpStreamSelection :: Lens' DashPackage (Maybe StreamSelection)
dpStreamSelection = lens _dpStreamSelection (\s a -> s {_dpStreamSelection = a})

-- | A list of triggers that controls when the outgoing Dynamic Adaptive Streaming over HTTP (DASH) Media Presentation Description (MPD) will be partitioned into multiple periods. If empty, the content will not be partitioned into more than one period. If the list contains "ADS", new periods will be created where the Channel source contains SCTE-35 ad markers.
dpPeriodTriggers :: Lens' DashPackage [PeriodTriggersElement]
dpPeriodTriggers = lens _dpPeriodTriggers (\s a -> s {_dpPeriodTriggers = a}) . _Default . _Coerce

-- | Undocumented member.
dpAdTriggers :: Lens' DashPackage [AdTriggersElement]
dpAdTriggers = lens _dpAdTriggers (\s a -> s {_dpAdTriggers = a}) . _Default . _Coerce

-- | Time window (in seconds) contained in each manifest.
dpManifestWindowSeconds :: Lens' DashPackage (Maybe Int)
dpManifestWindowSeconds = lens _dpManifestWindowSeconds (\s a -> s {_dpManifestWindowSeconds = a})

-- | Determines the position of some tags in the Media Presentation Description (MPD).  When set to FULL, elements like SegmentTemplate and ContentProtection are included in each Representation.  When set to COMPACT, duplicate elements are combined and presented at the AdaptationSet level.
dpManifestLayout :: Lens' DashPackage (Maybe ManifestLayout)
dpManifestLayout = lens _dpManifestLayout (\s a -> s {_dpManifestLayout = a})

-- | Minimum duration (in seconds) between potential changes to the Dynamic Adaptive Streaming over HTTP (DASH) Media Presentation Description (MPD).
dpMinUpdatePeriodSeconds :: Lens' DashPackage (Maybe Int)
dpMinUpdatePeriodSeconds = lens _dpMinUpdatePeriodSeconds (\s a -> s {_dpMinUpdatePeriodSeconds = a})

-- | Undocumented member.
dpEncryption :: Lens' DashPackage (Maybe DashEncryption)
dpEncryption = lens _dpEncryption (\s a -> s {_dpEncryption = a})

-- | Undocumented member.
dpAdsOnDeliveryRestrictions :: Lens' DashPackage (Maybe AdsOnDeliveryRestrictions)
dpAdsOnDeliveryRestrictions = lens _dpAdsOnDeliveryRestrictions (\s a -> s {_dpAdsOnDeliveryRestrictions = a})

-- | Specifies the value attribute of the UTCTiming field when utcTiming is set to HTTP-ISO or HTTP-HEAD
dpUtcTimingURI :: Lens' DashPackage (Maybe Text)
dpUtcTimingURI = lens _dpUtcTimingURI (\s a -> s {_dpUtcTimingURI = a})

-- | Duration (in seconds) of each segment. Actual segments will be rounded to the nearest multiple of the source segment duration.
dpSegmentDurationSeconds :: Lens' DashPackage (Maybe Int)
dpSegmentDurationSeconds = lens _dpSegmentDurationSeconds (\s a -> s {_dpSegmentDurationSeconds = a})

-- | The Dynamic Adaptive Streaming over HTTP (DASH) profile type.  When set to "HBBTV_1_5", HbbTV 1.5 compliant output is enabled.
dpProfile :: Lens' DashPackage (Maybe Profile)
dpProfile = lens _dpProfile (\s a -> s {_dpProfile = a})

-- | Determines the type of SegmentTemplate included in the Media Presentation Description (MPD).  When set to NUMBER_WITH_TIMELINE, a full timeline is presented in each SegmentTemplate, with $Number$ media URLs.  When set to TIME_WITH_TIMELINE, a full timeline is presented in each SegmentTemplate, with $Time$ media URLs. When set to NUMBER_WITH_DURATION, only a duration is included in each SegmentTemplate, with $Number$ media URLs.
dpSegmentTemplateFormat :: Lens' DashPackage (Maybe SegmentTemplateFormat)
dpSegmentTemplateFormat = lens _dpSegmentTemplateFormat (\s a -> s {_dpSegmentTemplateFormat = a})

-- | Duration (in seconds) to delay live content before presentation.
dpSuggestedPresentationDelaySeconds :: Lens' DashPackage (Maybe Int)
dpSuggestedPresentationDelaySeconds = lens _dpSuggestedPresentationDelaySeconds (\s a -> s {_dpSuggestedPresentationDelaySeconds = a})

-- | Determines the type of UTCTiming included in the Media Presentation Description (MPD)
dpUtcTiming :: Lens' DashPackage (Maybe UtcTiming)
dpUtcTiming = lens _dpUtcTiming (\s a -> s {_dpUtcTiming = a})

instance FromJSON DashPackage where
  parseJSON =
    withObject
      "DashPackage"
      ( \x ->
          DashPackage'
            <$> (x .:? "minBufferTimeSeconds")
            <*> (x .:? "streamSelection")
            <*> (x .:? "periodTriggers" .!= mempty)
            <*> (x .:? "adTriggers" .!= mempty)
            <*> (x .:? "manifestWindowSeconds")
            <*> (x .:? "manifestLayout")
            <*> (x .:? "minUpdatePeriodSeconds")
            <*> (x .:? "encryption")
            <*> (x .:? "adsOnDeliveryRestrictions")
            <*> (x .:? "utcTimingUri")
            <*> (x .:? "segmentDurationSeconds")
            <*> (x .:? "profile")
            <*> (x .:? "segmentTemplateFormat")
            <*> (x .:? "suggestedPresentationDelaySeconds")
            <*> (x .:? "utcTiming")
      )

instance Hashable DashPackage

instance NFData DashPackage

instance ToJSON DashPackage where
  toJSON DashPackage' {..} =
    object
      ( catMaybes
          [ ("minBufferTimeSeconds" .=)
              <$> _dpMinBufferTimeSeconds,
            ("streamSelection" .=) <$> _dpStreamSelection,
            ("periodTriggers" .=) <$> _dpPeriodTriggers,
            ("adTriggers" .=) <$> _dpAdTriggers,
            ("manifestWindowSeconds" .=)
              <$> _dpManifestWindowSeconds,
            ("manifestLayout" .=) <$> _dpManifestLayout,
            ("minUpdatePeriodSeconds" .=)
              <$> _dpMinUpdatePeriodSeconds,
            ("encryption" .=) <$> _dpEncryption,
            ("adsOnDeliveryRestrictions" .=)
              <$> _dpAdsOnDeliveryRestrictions,
            ("utcTimingUri" .=) <$> _dpUtcTimingURI,
            ("segmentDurationSeconds" .=)
              <$> _dpSegmentDurationSeconds,
            ("profile" .=) <$> _dpProfile,
            ("segmentTemplateFormat" .=)
              <$> _dpSegmentTemplateFormat,
            ("suggestedPresentationDelaySeconds" .=)
              <$> _dpSuggestedPresentationDelaySeconds,
            ("utcTiming" .=) <$> _dpUtcTiming
          ]
      )
