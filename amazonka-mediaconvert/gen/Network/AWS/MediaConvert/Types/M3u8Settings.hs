{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.M3u8Settings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.M3u8Settings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.M3u8AudioDuration
import Network.AWS.MediaConvert.Types.M3u8NielsenId3
import Network.AWS.MediaConvert.Types.M3u8PcrControl
import Network.AWS.MediaConvert.Types.M3u8Scte35Source
import Network.AWS.MediaConvert.Types.TimedMetadata
import Network.AWS.Prelude

-- | Settings for TS segments in HLS
--
-- /See:/ 'm3u8Settings' smart constructor.
data M3u8Settings = M3u8Settings'
  { _mssPmtPid ::
      !(Maybe Nat),
    _mssTimedMetadata :: !(Maybe TimedMetadata),
    _mssVideoPid :: !(Maybe Nat),
    _mssTimedMetadataPid :: !(Maybe Nat),
    _mssPcrControl :: !(Maybe M3u8PcrControl),
    _mssPmtInterval :: !(Maybe Nat),
    _mssAudioPids :: !(Maybe [Nat]),
    _mssPatInterval :: !(Maybe Nat),
    _mssProgramNumber :: !(Maybe Nat),
    _mssPcrPid :: !(Maybe Nat),
    _mssAudioFramesPerPes :: !(Maybe Nat),
    _mssAudioDuration ::
      !(Maybe M3u8AudioDuration),
    _mssNielsenId3 :: !(Maybe M3u8NielsenId3),
    _mssPrivateMetadataPid :: !(Maybe Nat),
    _mssScte35Source :: !(Maybe M3u8Scte35Source),
    _mssTransportStreamId :: !(Maybe Nat),
    _mssScte35Pid :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'M3u8Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mssPmtPid' - Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream.
--
-- * 'mssTimedMetadata' - Applies only to HLS outputs. Use this setting to specify whether the service inserts the ID3 timed metadata from the input in this output.
--
-- * 'mssVideoPid' - Packet Identifier (PID) of the elementary video stream in the transport stream.
--
-- * 'mssTimedMetadataPid' - Packet Identifier (PID) of the timed metadata stream in the transport stream.
--
-- * 'mssPcrControl' - When set to PCR_EVERY_PES_PACKET a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream.
--
-- * 'mssPmtInterval' - The number of milliseconds between instances of this table in the output transport stream.
--
-- * 'mssAudioPids' - Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation.
--
-- * 'mssPatInterval' - The number of milliseconds between instances of this table in the output transport stream.
--
-- * 'mssProgramNumber' - The value of the program number field in the Program Map Table.
--
-- * 'mssPcrPid' - Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID.
--
-- * 'mssAudioFramesPerPes' - The number of audio frames to insert for each PES packet.
--
-- * 'mssAudioDuration' - Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration (MATCH_VIDEO_DURATION). In all other cases, keep the default value, Default codec duration (DEFAULT_CODEC_DURATION). When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec.
--
-- * 'mssNielsenId3' - If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
--
-- * 'mssPrivateMetadataPid' - Packet Identifier (PID) of the private metadata stream in the transport stream.
--
-- * 'mssScte35Source' - For SCTE-35 markers from your input-- Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want SCTE-35 markers in this output. For SCTE-35 markers from an ESAM XML document-- Choose None (NONE) if you don't want manifest conditioning. Choose Passthrough (PASSTHROUGH) and choose Ad markers (adMarkers) if you do want manifest conditioning. In both cases, also provide the ESAM XML as a string in the setting Signal processing notification XML (sccXml).
--
-- * 'mssTransportStreamId' - The value of the transport stream ID field in the Program Map Table.
--
-- * 'mssScte35Pid' - Packet Identifier (PID) of the SCTE-35 stream in the transport stream.
m3u8Settings ::
  M3u8Settings
m3u8Settings =
  M3u8Settings'
    { _mssPmtPid = Nothing,
      _mssTimedMetadata = Nothing,
      _mssVideoPid = Nothing,
      _mssTimedMetadataPid = Nothing,
      _mssPcrControl = Nothing,
      _mssPmtInterval = Nothing,
      _mssAudioPids = Nothing,
      _mssPatInterval = Nothing,
      _mssProgramNumber = Nothing,
      _mssPcrPid = Nothing,
      _mssAudioFramesPerPes = Nothing,
      _mssAudioDuration = Nothing,
      _mssNielsenId3 = Nothing,
      _mssPrivateMetadataPid = Nothing,
      _mssScte35Source = Nothing,
      _mssTransportStreamId = Nothing,
      _mssScte35Pid = Nothing
    }

-- | Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream.
mssPmtPid :: Lens' M3u8Settings (Maybe Natural)
mssPmtPid = lens _mssPmtPid (\s a -> s {_mssPmtPid = a}) . mapping _Nat

-- | Applies only to HLS outputs. Use this setting to specify whether the service inserts the ID3 timed metadata from the input in this output.
mssTimedMetadata :: Lens' M3u8Settings (Maybe TimedMetadata)
mssTimedMetadata = lens _mssTimedMetadata (\s a -> s {_mssTimedMetadata = a})

-- | Packet Identifier (PID) of the elementary video stream in the transport stream.
mssVideoPid :: Lens' M3u8Settings (Maybe Natural)
mssVideoPid = lens _mssVideoPid (\s a -> s {_mssVideoPid = a}) . mapping _Nat

-- | Packet Identifier (PID) of the timed metadata stream in the transport stream.
mssTimedMetadataPid :: Lens' M3u8Settings (Maybe Natural)
mssTimedMetadataPid = lens _mssTimedMetadataPid (\s a -> s {_mssTimedMetadataPid = a}) . mapping _Nat

-- | When set to PCR_EVERY_PES_PACKET a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream.
mssPcrControl :: Lens' M3u8Settings (Maybe M3u8PcrControl)
mssPcrControl = lens _mssPcrControl (\s a -> s {_mssPcrControl = a})

-- | The number of milliseconds between instances of this table in the output transport stream.
mssPmtInterval :: Lens' M3u8Settings (Maybe Natural)
mssPmtInterval = lens _mssPmtInterval (\s a -> s {_mssPmtInterval = a}) . mapping _Nat

-- | Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation.
mssAudioPids :: Lens' M3u8Settings [Natural]
mssAudioPids = lens _mssAudioPids (\s a -> s {_mssAudioPids = a}) . _Default . _Coerce

-- | The number of milliseconds between instances of this table in the output transport stream.
mssPatInterval :: Lens' M3u8Settings (Maybe Natural)
mssPatInterval = lens _mssPatInterval (\s a -> s {_mssPatInterval = a}) . mapping _Nat

-- | The value of the program number field in the Program Map Table.
mssProgramNumber :: Lens' M3u8Settings (Maybe Natural)
mssProgramNumber = lens _mssProgramNumber (\s a -> s {_mssProgramNumber = a}) . mapping _Nat

-- | Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID.
mssPcrPid :: Lens' M3u8Settings (Maybe Natural)
mssPcrPid = lens _mssPcrPid (\s a -> s {_mssPcrPid = a}) . mapping _Nat

-- | The number of audio frames to insert for each PES packet.
mssAudioFramesPerPes :: Lens' M3u8Settings (Maybe Natural)
mssAudioFramesPerPes = lens _mssAudioFramesPerPes (\s a -> s {_mssAudioFramesPerPes = a}) . mapping _Nat

-- | Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration (MATCH_VIDEO_DURATION). In all other cases, keep the default value, Default codec duration (DEFAULT_CODEC_DURATION). When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec.
mssAudioDuration :: Lens' M3u8Settings (Maybe M3u8AudioDuration)
mssAudioDuration = lens _mssAudioDuration (\s a -> s {_mssAudioDuration = a})

-- | If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
mssNielsenId3 :: Lens' M3u8Settings (Maybe M3u8NielsenId3)
mssNielsenId3 = lens _mssNielsenId3 (\s a -> s {_mssNielsenId3 = a})

-- | Packet Identifier (PID) of the private metadata stream in the transport stream.
mssPrivateMetadataPid :: Lens' M3u8Settings (Maybe Natural)
mssPrivateMetadataPid = lens _mssPrivateMetadataPid (\s a -> s {_mssPrivateMetadataPid = a}) . mapping _Nat

-- | For SCTE-35 markers from your input-- Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want SCTE-35 markers in this output. For SCTE-35 markers from an ESAM XML document-- Choose None (NONE) if you don't want manifest conditioning. Choose Passthrough (PASSTHROUGH) and choose Ad markers (adMarkers) if you do want manifest conditioning. In both cases, also provide the ESAM XML as a string in the setting Signal processing notification XML (sccXml).
mssScte35Source :: Lens' M3u8Settings (Maybe M3u8Scte35Source)
mssScte35Source = lens _mssScte35Source (\s a -> s {_mssScte35Source = a})

-- | The value of the transport stream ID field in the Program Map Table.
mssTransportStreamId :: Lens' M3u8Settings (Maybe Natural)
mssTransportStreamId = lens _mssTransportStreamId (\s a -> s {_mssTransportStreamId = a}) . mapping _Nat

-- | Packet Identifier (PID) of the SCTE-35 stream in the transport stream.
mssScte35Pid :: Lens' M3u8Settings (Maybe Natural)
mssScte35Pid = lens _mssScte35Pid (\s a -> s {_mssScte35Pid = a}) . mapping _Nat

instance FromJSON M3u8Settings where
  parseJSON =
    withObject
      "M3u8Settings"
      ( \x ->
          M3u8Settings'
            <$> (x .:? "pmtPid")
            <*> (x .:? "timedMetadata")
            <*> (x .:? "videoPid")
            <*> (x .:? "timedMetadataPid")
            <*> (x .:? "pcrControl")
            <*> (x .:? "pmtInterval")
            <*> (x .:? "audioPids" .!= mempty)
            <*> (x .:? "patInterval")
            <*> (x .:? "programNumber")
            <*> (x .:? "pcrPid")
            <*> (x .:? "audioFramesPerPes")
            <*> (x .:? "audioDuration")
            <*> (x .:? "nielsenId3")
            <*> (x .:? "privateMetadataPid")
            <*> (x .:? "scte35Source")
            <*> (x .:? "transportStreamId")
            <*> (x .:? "scte35Pid")
      )

instance Hashable M3u8Settings

instance NFData M3u8Settings

instance ToJSON M3u8Settings where
  toJSON M3u8Settings' {..} =
    object
      ( catMaybes
          [ ("pmtPid" .=) <$> _mssPmtPid,
            ("timedMetadata" .=) <$> _mssTimedMetadata,
            ("videoPid" .=) <$> _mssVideoPid,
            ("timedMetadataPid" .=) <$> _mssTimedMetadataPid,
            ("pcrControl" .=) <$> _mssPcrControl,
            ("pmtInterval" .=) <$> _mssPmtInterval,
            ("audioPids" .=) <$> _mssAudioPids,
            ("patInterval" .=) <$> _mssPatInterval,
            ("programNumber" .=) <$> _mssProgramNumber,
            ("pcrPid" .=) <$> _mssPcrPid,
            ("audioFramesPerPes" .=) <$> _mssAudioFramesPerPes,
            ("audioDuration" .=) <$> _mssAudioDuration,
            ("nielsenId3" .=) <$> _mssNielsenId3,
            ("privateMetadataPid" .=) <$> _mssPrivateMetadataPid,
            ("scte35Source" .=) <$> _mssScte35Source,
            ("transportStreamId" .=) <$> _mssTransportStreamId,
            ("scte35Pid" .=) <$> _mssScte35Pid
          ]
      )
