{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.M3u8Settings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M3u8Settings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.M3u8NielsenId3Behavior
import Network.AWS.MediaLive.Types.M3u8PcrControl
import Network.AWS.MediaLive.Types.M3u8Scte35Behavior
import Network.AWS.MediaLive.Types.M3u8TimedMetadataBehavior
import Network.AWS.Prelude

-- | Settings information for the .m3u8 container
--
-- /See:/ 'm3u8Settings' smart constructor.
data M3u8Settings = M3u8Settings'
  { _msPcrPeriod ::
      !(Maybe Nat),
    _msPmtPid :: !(Maybe Text),
    _msVideoPid :: !(Maybe Text),
    _msNielsenId3Behavior ::
      !(Maybe M3u8NielsenId3Behavior),
    _msTimedMetadataPid :: !(Maybe Text),
    _msPcrControl :: !(Maybe M3u8PcrControl),
    _msPmtInterval :: !(Maybe Nat),
    _msAudioPids :: !(Maybe Text),
    _msPatInterval :: !(Maybe Nat),
    _msProgramNum :: !(Maybe Nat),
    _msPcrPid :: !(Maybe Text),
    _msAudioFramesPerPes :: !(Maybe Nat),
    _msEcmPid :: !(Maybe Text),
    _msScte35Behavior ::
      !(Maybe M3u8Scte35Behavior),
    _msTimedMetadataBehavior ::
      !(Maybe M3u8TimedMetadataBehavior),
    _msTransportStreamId :: !(Maybe Nat),
    _msScte35Pid :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'M3u8Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msPcrPeriod' - Maximum time in milliseconds between Program Clock References (PCRs) inserted into the transport stream.
--
-- * 'msPmtPid' - Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream. Can be entered as a decimal or hexadecimal value.
--
-- * 'msVideoPid' - Packet Identifier (PID) of the elementary video stream in the transport stream. Can be entered as a decimal or hexadecimal value.
--
-- * 'msNielsenId3Behavior' - If set to passthrough, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
--
-- * 'msTimedMetadataPid' - Packet Identifier (PID) of the timed metadata stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
--
-- * 'msPcrControl' - When set to pcrEveryPesPacket, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream.
--
-- * 'msPmtInterval' - The number of milliseconds between instances of this table in the output transport stream. A value of \"0\" writes out the PMT once per segment file.
--
-- * 'msAudioPids' - Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.
--
-- * 'msPatInterval' - The number of milliseconds between instances of this table in the output transport stream. A value of \"0\" writes out the PMT once per segment file.
--
-- * 'msProgramNum' - The value of the program number field in the Program Map Table.
--
-- * 'msPcrPid' - Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID. Can be entered as a decimal or hexadecimal value.
--
-- * 'msAudioFramesPerPes' - The number of audio frames to insert for each PES packet.
--
-- * 'msEcmPid' - This parameter is unused and deprecated.
--
-- * 'msScte35Behavior' - If set to passthrough, passes any SCTE-35 signals from the input source to this output.
--
-- * 'msTimedMetadataBehavior' - When set to passthrough, timed metadata is passed through from input to output.
--
-- * 'msTransportStreamId' - The value of the transport stream ID field in the Program Map Table.
--
-- * 'msScte35Pid' - Packet Identifier (PID) of the SCTE-35 stream in the transport stream. Can be entered as a decimal or hexadecimal value.
m3u8Settings ::
  M3u8Settings
m3u8Settings =
  M3u8Settings'
    { _msPcrPeriod = Nothing,
      _msPmtPid = Nothing,
      _msVideoPid = Nothing,
      _msNielsenId3Behavior = Nothing,
      _msTimedMetadataPid = Nothing,
      _msPcrControl = Nothing,
      _msPmtInterval = Nothing,
      _msAudioPids = Nothing,
      _msPatInterval = Nothing,
      _msProgramNum = Nothing,
      _msPcrPid = Nothing,
      _msAudioFramesPerPes = Nothing,
      _msEcmPid = Nothing,
      _msScte35Behavior = Nothing,
      _msTimedMetadataBehavior = Nothing,
      _msTransportStreamId = Nothing,
      _msScte35Pid = Nothing
    }

-- | Maximum time in milliseconds between Program Clock References (PCRs) inserted into the transport stream.
msPcrPeriod :: Lens' M3u8Settings (Maybe Natural)
msPcrPeriod = lens _msPcrPeriod (\s a -> s {_msPcrPeriod = a}) . mapping _Nat

-- | Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream. Can be entered as a decimal or hexadecimal value.
msPmtPid :: Lens' M3u8Settings (Maybe Text)
msPmtPid = lens _msPmtPid (\s a -> s {_msPmtPid = a})

-- | Packet Identifier (PID) of the elementary video stream in the transport stream. Can be entered as a decimal or hexadecimal value.
msVideoPid :: Lens' M3u8Settings (Maybe Text)
msVideoPid = lens _msVideoPid (\s a -> s {_msVideoPid = a})

-- | If set to passthrough, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
msNielsenId3Behavior :: Lens' M3u8Settings (Maybe M3u8NielsenId3Behavior)
msNielsenId3Behavior = lens _msNielsenId3Behavior (\s a -> s {_msNielsenId3Behavior = a})

-- | Packet Identifier (PID) of the timed metadata stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
msTimedMetadataPid :: Lens' M3u8Settings (Maybe Text)
msTimedMetadataPid = lens _msTimedMetadataPid (\s a -> s {_msTimedMetadataPid = a})

-- | When set to pcrEveryPesPacket, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream.
msPcrControl :: Lens' M3u8Settings (Maybe M3u8PcrControl)
msPcrControl = lens _msPcrControl (\s a -> s {_msPcrControl = a})

-- | The number of milliseconds between instances of this table in the output transport stream. A value of \"0\" writes out the PMT once per segment file.
msPmtInterval :: Lens' M3u8Settings (Maybe Natural)
msPmtInterval = lens _msPmtInterval (\s a -> s {_msPmtInterval = a}) . mapping _Nat

-- | Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.
msAudioPids :: Lens' M3u8Settings (Maybe Text)
msAudioPids = lens _msAudioPids (\s a -> s {_msAudioPids = a})

-- | The number of milliseconds between instances of this table in the output transport stream. A value of \"0\" writes out the PMT once per segment file.
msPatInterval :: Lens' M3u8Settings (Maybe Natural)
msPatInterval = lens _msPatInterval (\s a -> s {_msPatInterval = a}) . mapping _Nat

-- | The value of the program number field in the Program Map Table.
msProgramNum :: Lens' M3u8Settings (Maybe Natural)
msProgramNum = lens _msProgramNum (\s a -> s {_msProgramNum = a}) . mapping _Nat

-- | Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID. Can be entered as a decimal or hexadecimal value.
msPcrPid :: Lens' M3u8Settings (Maybe Text)
msPcrPid = lens _msPcrPid (\s a -> s {_msPcrPid = a})

-- | The number of audio frames to insert for each PES packet.
msAudioFramesPerPes :: Lens' M3u8Settings (Maybe Natural)
msAudioFramesPerPes = lens _msAudioFramesPerPes (\s a -> s {_msAudioFramesPerPes = a}) . mapping _Nat

-- | This parameter is unused and deprecated.
msEcmPid :: Lens' M3u8Settings (Maybe Text)
msEcmPid = lens _msEcmPid (\s a -> s {_msEcmPid = a})

-- | If set to passthrough, passes any SCTE-35 signals from the input source to this output.
msScte35Behavior :: Lens' M3u8Settings (Maybe M3u8Scte35Behavior)
msScte35Behavior = lens _msScte35Behavior (\s a -> s {_msScte35Behavior = a})

-- | When set to passthrough, timed metadata is passed through from input to output.
msTimedMetadataBehavior :: Lens' M3u8Settings (Maybe M3u8TimedMetadataBehavior)
msTimedMetadataBehavior = lens _msTimedMetadataBehavior (\s a -> s {_msTimedMetadataBehavior = a})

-- | The value of the transport stream ID field in the Program Map Table.
msTransportStreamId :: Lens' M3u8Settings (Maybe Natural)
msTransportStreamId = lens _msTransportStreamId (\s a -> s {_msTransportStreamId = a}) . mapping _Nat

-- | Packet Identifier (PID) of the SCTE-35 stream in the transport stream. Can be entered as a decimal or hexadecimal value.
msScte35Pid :: Lens' M3u8Settings (Maybe Text)
msScte35Pid = lens _msScte35Pid (\s a -> s {_msScte35Pid = a})

instance FromJSON M3u8Settings where
  parseJSON =
    withObject
      "M3u8Settings"
      ( \x ->
          M3u8Settings'
            <$> (x .:? "pcrPeriod")
            <*> (x .:? "pmtPid")
            <*> (x .:? "videoPid")
            <*> (x .:? "nielsenId3Behavior")
            <*> (x .:? "timedMetadataPid")
            <*> (x .:? "pcrControl")
            <*> (x .:? "pmtInterval")
            <*> (x .:? "audioPids")
            <*> (x .:? "patInterval")
            <*> (x .:? "programNum")
            <*> (x .:? "pcrPid")
            <*> (x .:? "audioFramesPerPes")
            <*> (x .:? "ecmPid")
            <*> (x .:? "scte35Behavior")
            <*> (x .:? "timedMetadataBehavior")
            <*> (x .:? "transportStreamId")
            <*> (x .:? "scte35Pid")
      )

instance Hashable M3u8Settings

instance NFData M3u8Settings

instance ToJSON M3u8Settings where
  toJSON M3u8Settings' {..} =
    object
      ( catMaybes
          [ ("pcrPeriod" .=) <$> _msPcrPeriod,
            ("pmtPid" .=) <$> _msPmtPid,
            ("videoPid" .=) <$> _msVideoPid,
            ("nielsenId3Behavior" .=) <$> _msNielsenId3Behavior,
            ("timedMetadataPid" .=) <$> _msTimedMetadataPid,
            ("pcrControl" .=) <$> _msPcrControl,
            ("pmtInterval" .=) <$> _msPmtInterval,
            ("audioPids" .=) <$> _msAudioPids,
            ("patInterval" .=) <$> _msPatInterval,
            ("programNum" .=) <$> _msProgramNum,
            ("pcrPid" .=) <$> _msPcrPid,
            ("audioFramesPerPes" .=) <$> _msAudioFramesPerPes,
            ("ecmPid" .=) <$> _msEcmPid,
            ("scte35Behavior" .=) <$> _msScte35Behavior,
            ("timedMetadataBehavior" .=)
              <$> _msTimedMetadataBehavior,
            ("transportStreamId" .=) <$> _msTransportStreamId,
            ("scte35Pid" .=) <$> _msScte35Pid
          ]
      )
