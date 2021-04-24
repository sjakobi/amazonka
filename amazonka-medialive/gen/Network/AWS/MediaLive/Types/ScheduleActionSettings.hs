{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.ScheduleActionSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.ScheduleActionSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.HlsId3SegmentTaggingScheduleActionSettings
import Network.AWS.MediaLive.Types.HlsTimedMetadataScheduleActionSettings
import Network.AWS.MediaLive.Types.InputPrepareScheduleActionSettings
import Network.AWS.MediaLive.Types.InputSwitchScheduleActionSettings
import Network.AWS.MediaLive.Types.PauseStateScheduleActionSettings
import Network.AWS.MediaLive.Types.Scte35ReturnToNetworkScheduleActionSettings
import Network.AWS.MediaLive.Types.Scte35SpliceInsertScheduleActionSettings
import Network.AWS.MediaLive.Types.Scte35TimeSignalScheduleActionSettings
import Network.AWS.MediaLive.Types.StaticImageActivateScheduleActionSettings
import Network.AWS.MediaLive.Types.StaticImageDeactivateScheduleActionSettings
import Network.AWS.Prelude

-- | Holds the settings for a single schedule action.
--
-- /See:/ 'scheduleActionSettings' smart constructor.
data ScheduleActionSettings = ScheduleActionSettings'
  { _sasInputSwitchSettings ::
      !( Maybe
           InputSwitchScheduleActionSettings
       ),
    _sasScte35TimeSignalSettings ::
      !( Maybe
           Scte35TimeSignalScheduleActionSettings
       ),
    _sasHlsTimedMetadataSettings ::
      !( Maybe
           HlsTimedMetadataScheduleActionSettings
       ),
    _sasStaticImageActivateSettings ::
      !( Maybe
           StaticImageActivateScheduleActionSettings
       ),
    _sasPauseStateSettings ::
      !( Maybe
           PauseStateScheduleActionSettings
       ),
    _sasScte35SpliceInsertSettings ::
      !( Maybe
           Scte35SpliceInsertScheduleActionSettings
       ),
    _sasScte35ReturnToNetworkSettings ::
      !( Maybe
           Scte35ReturnToNetworkScheduleActionSettings
       ),
    _sasHlsId3SegmentTaggingSettings ::
      !( Maybe
           HlsId3SegmentTaggingScheduleActionSettings
       ),
    _sasStaticImageDeactivateSettings ::
      !( Maybe
           StaticImageDeactivateScheduleActionSettings
       ),
    _sasInputPrepareSettings ::
      !( Maybe
           InputPrepareScheduleActionSettings
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ScheduleActionSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sasInputSwitchSettings' - Action to switch the input
--
-- * 'sasScte35TimeSignalSettings' - Action to insert SCTE-35 time_signal message
--
-- * 'sasHlsTimedMetadataSettings' - Action to insert HLS metadata
--
-- * 'sasStaticImageActivateSettings' - Action to activate a static image overlay
--
-- * 'sasPauseStateSettings' - Action to pause or unpause one or both channel pipelines
--
-- * 'sasScte35SpliceInsertSettings' - Action to insert SCTE-35 splice_insert message
--
-- * 'sasScte35ReturnToNetworkSettings' - Action to insert SCTE-35 return_to_network message
--
-- * 'sasHlsId3SegmentTaggingSettings' - Action to insert HLS ID3 segment tagging
--
-- * 'sasStaticImageDeactivateSettings' - Action to deactivate a static image overlay
--
-- * 'sasInputPrepareSettings' - Action to prepare an input for a future immediate input switch
scheduleActionSettings ::
  ScheduleActionSettings
scheduleActionSettings =
  ScheduleActionSettings'
    { _sasInputSwitchSettings =
        Nothing,
      _sasScte35TimeSignalSettings = Nothing,
      _sasHlsTimedMetadataSettings = Nothing,
      _sasStaticImageActivateSettings = Nothing,
      _sasPauseStateSettings = Nothing,
      _sasScte35SpliceInsertSettings = Nothing,
      _sasScte35ReturnToNetworkSettings = Nothing,
      _sasHlsId3SegmentTaggingSettings = Nothing,
      _sasStaticImageDeactivateSettings = Nothing,
      _sasInputPrepareSettings = Nothing
    }

-- | Action to switch the input
sasInputSwitchSettings :: Lens' ScheduleActionSettings (Maybe InputSwitchScheduleActionSettings)
sasInputSwitchSettings = lens _sasInputSwitchSettings (\s a -> s {_sasInputSwitchSettings = a})

-- | Action to insert SCTE-35 time_signal message
sasScte35TimeSignalSettings :: Lens' ScheduleActionSettings (Maybe Scte35TimeSignalScheduleActionSettings)
sasScte35TimeSignalSettings = lens _sasScte35TimeSignalSettings (\s a -> s {_sasScte35TimeSignalSettings = a})

-- | Action to insert HLS metadata
sasHlsTimedMetadataSettings :: Lens' ScheduleActionSettings (Maybe HlsTimedMetadataScheduleActionSettings)
sasHlsTimedMetadataSettings = lens _sasHlsTimedMetadataSettings (\s a -> s {_sasHlsTimedMetadataSettings = a})

-- | Action to activate a static image overlay
sasStaticImageActivateSettings :: Lens' ScheduleActionSettings (Maybe StaticImageActivateScheduleActionSettings)
sasStaticImageActivateSettings = lens _sasStaticImageActivateSettings (\s a -> s {_sasStaticImageActivateSettings = a})

-- | Action to pause or unpause one or both channel pipelines
sasPauseStateSettings :: Lens' ScheduleActionSettings (Maybe PauseStateScheduleActionSettings)
sasPauseStateSettings = lens _sasPauseStateSettings (\s a -> s {_sasPauseStateSettings = a})

-- | Action to insert SCTE-35 splice_insert message
sasScte35SpliceInsertSettings :: Lens' ScheduleActionSettings (Maybe Scte35SpliceInsertScheduleActionSettings)
sasScte35SpliceInsertSettings = lens _sasScte35SpliceInsertSettings (\s a -> s {_sasScte35SpliceInsertSettings = a})

-- | Action to insert SCTE-35 return_to_network message
sasScte35ReturnToNetworkSettings :: Lens' ScheduleActionSettings (Maybe Scte35ReturnToNetworkScheduleActionSettings)
sasScte35ReturnToNetworkSettings = lens _sasScte35ReturnToNetworkSettings (\s a -> s {_sasScte35ReturnToNetworkSettings = a})

-- | Action to insert HLS ID3 segment tagging
sasHlsId3SegmentTaggingSettings :: Lens' ScheduleActionSettings (Maybe HlsId3SegmentTaggingScheduleActionSettings)
sasHlsId3SegmentTaggingSettings = lens _sasHlsId3SegmentTaggingSettings (\s a -> s {_sasHlsId3SegmentTaggingSettings = a})

-- | Action to deactivate a static image overlay
sasStaticImageDeactivateSettings :: Lens' ScheduleActionSettings (Maybe StaticImageDeactivateScheduleActionSettings)
sasStaticImageDeactivateSettings = lens _sasStaticImageDeactivateSettings (\s a -> s {_sasStaticImageDeactivateSettings = a})

-- | Action to prepare an input for a future immediate input switch
sasInputPrepareSettings :: Lens' ScheduleActionSettings (Maybe InputPrepareScheduleActionSettings)
sasInputPrepareSettings = lens _sasInputPrepareSettings (\s a -> s {_sasInputPrepareSettings = a})

instance FromJSON ScheduleActionSettings where
  parseJSON =
    withObject
      "ScheduleActionSettings"
      ( \x ->
          ScheduleActionSettings'
            <$> (x .:? "inputSwitchSettings")
            <*> (x .:? "scte35TimeSignalSettings")
            <*> (x .:? "hlsTimedMetadataSettings")
            <*> (x .:? "staticImageActivateSettings")
            <*> (x .:? "pauseStateSettings")
            <*> (x .:? "scte35SpliceInsertSettings")
            <*> (x .:? "scte35ReturnToNetworkSettings")
            <*> (x .:? "hlsId3SegmentTaggingSettings")
            <*> (x .:? "staticImageDeactivateSettings")
            <*> (x .:? "inputPrepareSettings")
      )

instance Hashable ScheduleActionSettings

instance NFData ScheduleActionSettings

instance ToJSON ScheduleActionSettings where
  toJSON ScheduleActionSettings' {..} =
    object
      ( catMaybes
          [ ("inputSwitchSettings" .=)
              <$> _sasInputSwitchSettings,
            ("scte35TimeSignalSettings" .=)
              <$> _sasScte35TimeSignalSettings,
            ("hlsTimedMetadataSettings" .=)
              <$> _sasHlsTimedMetadataSettings,
            ("staticImageActivateSettings" .=)
              <$> _sasStaticImageActivateSettings,
            ("pauseStateSettings" .=) <$> _sasPauseStateSettings,
            ("scte35SpliceInsertSettings" .=)
              <$> _sasScte35SpliceInsertSettings,
            ("scte35ReturnToNetworkSettings" .=)
              <$> _sasScte35ReturnToNetworkSettings,
            ("hlsId3SegmentTaggingSettings" .=)
              <$> _sasHlsId3SegmentTaggingSettings,
            ("staticImageDeactivateSettings" .=)
              <$> _sasStaticImageDeactivateSettings,
            ("inputPrepareSettings" .=)
              <$> _sasInputPrepareSettings
          ]
      )
