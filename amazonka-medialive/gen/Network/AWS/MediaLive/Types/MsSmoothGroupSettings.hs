{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.MsSmoothGroupSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.MsSmoothGroupSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.InputLossActionForMsSmoothOut
import Network.AWS.MediaLive.Types.OutputLocationRef
import Network.AWS.MediaLive.Types.SmoothGroupAudioOnlyTimecodeControl
import Network.AWS.MediaLive.Types.SmoothGroupCertificateMode
import Network.AWS.MediaLive.Types.SmoothGroupEventIdMode
import Network.AWS.MediaLive.Types.SmoothGroupEventStopBehavior
import Network.AWS.MediaLive.Types.SmoothGroupSegmentationMode
import Network.AWS.MediaLive.Types.SmoothGroupSparseTrackType
import Network.AWS.MediaLive.Types.SmoothGroupStreamManifestBehavior
import Network.AWS.MediaLive.Types.SmoothGroupTimestampOffsetMode
import Network.AWS.Prelude

-- | Ms Smooth Group Settings
--
-- /See:/ 'msSmoothGroupSettings' smart constructor.
data MsSmoothGroupSettings = MsSmoothGroupSettings'
  { _msgsStreamManifestBehavior ::
      !( Maybe
           SmoothGroupStreamManifestBehavior
       ),
    _msgsFilecacheDuration ::
      !(Maybe Nat),
    _msgsFragmentLength ::
      !(Maybe Nat),
    _msgsEventId ::
      !(Maybe Text),
    _msgsCertificateMode ::
      !( Maybe
           SmoothGroupCertificateMode
       ),
    _msgsNumRetries ::
      !(Maybe Nat),
    _msgsAcquisitionPointId ::
      !(Maybe Text),
    _msgsAudioOnlyTimecodeControl ::
      !( Maybe
           SmoothGroupAudioOnlyTimecodeControl
       ),
    _msgsSegmentationMode ::
      !( Maybe
           SmoothGroupSegmentationMode
       ),
    _msgsEventIdMode ::
      !( Maybe
           SmoothGroupEventIdMode
       ),
    _msgsSendDelayMs ::
      !(Maybe Nat),
    _msgsConnectionRetryInterval ::
      !(Maybe Nat),
    _msgsSparseTrackType ::
      !( Maybe
           SmoothGroupSparseTrackType
       ),
    _msgsInputLossAction ::
      !( Maybe
           InputLossActionForMsSmoothOut
       ),
    _msgsTimestampOffset ::
      !(Maybe Text),
    _msgsEventStopBehavior ::
      !( Maybe
           SmoothGroupEventStopBehavior
       ),
    _msgsTimestampOffsetMode ::
      !( Maybe
           SmoothGroupTimestampOffsetMode
       ),
    _msgsRestartDelay ::
      !(Maybe Nat),
    _msgsDestination ::
      !OutputLocationRef
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'MsSmoothGroupSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msgsStreamManifestBehavior' - When set to send, send stream manifest so publishing point doesn't start until all streams start.
--
-- * 'msgsFilecacheDuration' - Size in seconds of file cache for streaming outputs.
--
-- * 'msgsFragmentLength' - Length of mp4 fragments to generate (in seconds). Fragment length must be compatible with GOP size and framerate.
--
-- * 'msgsEventId' - MS Smooth event ID to be sent to the IIS server. Should only be specified if eventIdMode is set to useConfigured.
--
-- * 'msgsCertificateMode' - If set to verifyAuthenticity, verify the https certificate chain to a trusted Certificate Authority (CA).  This will cause https outputs to self-signed certificates to fail.
--
-- * 'msgsNumRetries' - Number of retry attempts.
--
-- * 'msgsAcquisitionPointId' - The ID to include in each message in the sparse track. Ignored if sparseTrackType is NONE.
--
-- * 'msgsAudioOnlyTimecodeControl' - If set to passthrough for an audio-only MS Smooth output, the fragment absolute time will be set to the current timecode. This option does not write timecodes to the audio elementary stream.
--
-- * 'msgsSegmentationMode' - useInputSegmentation has been deprecated. The configured segment size is always used.
--
-- * 'msgsEventIdMode' - Specifies whether or not to send an event ID to the IIS server. If no event ID is sent and the same Live Event is used without changing the publishing point, clients might see cached video from the previous run. Options: - "useConfigured" - use the value provided in eventId - "useTimestamp" - generate and send an event ID based on the current timestamp - "noEventId" - do not send an event ID to the IIS server.
--
-- * 'msgsSendDelayMs' - Number of milliseconds to delay the output from the second pipeline.
--
-- * 'msgsConnectionRetryInterval' - Number of seconds to wait before retrying connection to the IIS server if the connection is lost. Content will be cached during this time and the cache will be be delivered to the IIS server once the connection is re-established.
--
-- * 'msgsSparseTrackType' - Identifies the type of data to place in the sparse track: - SCTE35: Insert SCTE-35 messages from the source content. With each message, insert an IDR frame to start a new segment. - SCTE35_WITHOUT_SEGMENTATION: Insert SCTE-35 messages from the source content. With each message, insert an IDR frame but don't start a new segment. - NONE: Don't generate a sparse track for any outputs in this output group.
--
-- * 'msgsInputLossAction' - Parameter that control output group behavior on input loss.
--
-- * 'msgsTimestampOffset' - Timestamp offset for the event.  Only used if timestampOffsetMode is set to useConfiguredOffset.
--
-- * 'msgsEventStopBehavior' - When set to sendEos, send EOS signal to IIS server when stopping the event
--
-- * 'msgsTimestampOffsetMode' - Type of timestamp date offset to use. - useEventStartDate: Use the date the event was started as the offset - useConfiguredOffset: Use an explicitly configured date as the offset
--
-- * 'msgsRestartDelay' - Number of seconds before initiating a restart due to output failure, due to exhausting the numRetries on one segment, or exceeding filecacheDuration.
--
-- * 'msgsDestination' - Smooth Streaming publish point on an IIS server. Elemental Live acts as a "Push" encoder to IIS.
msSmoothGroupSettings ::
  -- | 'msgsDestination'
  OutputLocationRef ->
  MsSmoothGroupSettings
msSmoothGroupSettings pDestination_ =
  MsSmoothGroupSettings'
    { _msgsStreamManifestBehavior =
        Nothing,
      _msgsFilecacheDuration = Nothing,
      _msgsFragmentLength = Nothing,
      _msgsEventId = Nothing,
      _msgsCertificateMode = Nothing,
      _msgsNumRetries = Nothing,
      _msgsAcquisitionPointId = Nothing,
      _msgsAudioOnlyTimecodeControl = Nothing,
      _msgsSegmentationMode = Nothing,
      _msgsEventIdMode = Nothing,
      _msgsSendDelayMs = Nothing,
      _msgsConnectionRetryInterval = Nothing,
      _msgsSparseTrackType = Nothing,
      _msgsInputLossAction = Nothing,
      _msgsTimestampOffset = Nothing,
      _msgsEventStopBehavior = Nothing,
      _msgsTimestampOffsetMode = Nothing,
      _msgsRestartDelay = Nothing,
      _msgsDestination = pDestination_
    }

-- | When set to send, send stream manifest so publishing point doesn't start until all streams start.
msgsStreamManifestBehavior :: Lens' MsSmoothGroupSettings (Maybe SmoothGroupStreamManifestBehavior)
msgsStreamManifestBehavior = lens _msgsStreamManifestBehavior (\s a -> s {_msgsStreamManifestBehavior = a})

-- | Size in seconds of file cache for streaming outputs.
msgsFilecacheDuration :: Lens' MsSmoothGroupSettings (Maybe Natural)
msgsFilecacheDuration = lens _msgsFilecacheDuration (\s a -> s {_msgsFilecacheDuration = a}) . mapping _Nat

-- | Length of mp4 fragments to generate (in seconds). Fragment length must be compatible with GOP size and framerate.
msgsFragmentLength :: Lens' MsSmoothGroupSettings (Maybe Natural)
msgsFragmentLength = lens _msgsFragmentLength (\s a -> s {_msgsFragmentLength = a}) . mapping _Nat

-- | MS Smooth event ID to be sent to the IIS server. Should only be specified if eventIdMode is set to useConfigured.
msgsEventId :: Lens' MsSmoothGroupSettings (Maybe Text)
msgsEventId = lens _msgsEventId (\s a -> s {_msgsEventId = a})

-- | If set to verifyAuthenticity, verify the https certificate chain to a trusted Certificate Authority (CA).  This will cause https outputs to self-signed certificates to fail.
msgsCertificateMode :: Lens' MsSmoothGroupSettings (Maybe SmoothGroupCertificateMode)
msgsCertificateMode = lens _msgsCertificateMode (\s a -> s {_msgsCertificateMode = a})

-- | Number of retry attempts.
msgsNumRetries :: Lens' MsSmoothGroupSettings (Maybe Natural)
msgsNumRetries = lens _msgsNumRetries (\s a -> s {_msgsNumRetries = a}) . mapping _Nat

-- | The ID to include in each message in the sparse track. Ignored if sparseTrackType is NONE.
msgsAcquisitionPointId :: Lens' MsSmoothGroupSettings (Maybe Text)
msgsAcquisitionPointId = lens _msgsAcquisitionPointId (\s a -> s {_msgsAcquisitionPointId = a})

-- | If set to passthrough for an audio-only MS Smooth output, the fragment absolute time will be set to the current timecode. This option does not write timecodes to the audio elementary stream.
msgsAudioOnlyTimecodeControl :: Lens' MsSmoothGroupSettings (Maybe SmoothGroupAudioOnlyTimecodeControl)
msgsAudioOnlyTimecodeControl = lens _msgsAudioOnlyTimecodeControl (\s a -> s {_msgsAudioOnlyTimecodeControl = a})

-- | useInputSegmentation has been deprecated. The configured segment size is always used.
msgsSegmentationMode :: Lens' MsSmoothGroupSettings (Maybe SmoothGroupSegmentationMode)
msgsSegmentationMode = lens _msgsSegmentationMode (\s a -> s {_msgsSegmentationMode = a})

-- | Specifies whether or not to send an event ID to the IIS server. If no event ID is sent and the same Live Event is used without changing the publishing point, clients might see cached video from the previous run. Options: - "useConfigured" - use the value provided in eventId - "useTimestamp" - generate and send an event ID based on the current timestamp - "noEventId" - do not send an event ID to the IIS server.
msgsEventIdMode :: Lens' MsSmoothGroupSettings (Maybe SmoothGroupEventIdMode)
msgsEventIdMode = lens _msgsEventIdMode (\s a -> s {_msgsEventIdMode = a})

-- | Number of milliseconds to delay the output from the second pipeline.
msgsSendDelayMs :: Lens' MsSmoothGroupSettings (Maybe Natural)
msgsSendDelayMs = lens _msgsSendDelayMs (\s a -> s {_msgsSendDelayMs = a}) . mapping _Nat

-- | Number of seconds to wait before retrying connection to the IIS server if the connection is lost. Content will be cached during this time and the cache will be be delivered to the IIS server once the connection is re-established.
msgsConnectionRetryInterval :: Lens' MsSmoothGroupSettings (Maybe Natural)
msgsConnectionRetryInterval = lens _msgsConnectionRetryInterval (\s a -> s {_msgsConnectionRetryInterval = a}) . mapping _Nat

-- | Identifies the type of data to place in the sparse track: - SCTE35: Insert SCTE-35 messages from the source content. With each message, insert an IDR frame to start a new segment. - SCTE35_WITHOUT_SEGMENTATION: Insert SCTE-35 messages from the source content. With each message, insert an IDR frame but don't start a new segment. - NONE: Don't generate a sparse track for any outputs in this output group.
msgsSparseTrackType :: Lens' MsSmoothGroupSettings (Maybe SmoothGroupSparseTrackType)
msgsSparseTrackType = lens _msgsSparseTrackType (\s a -> s {_msgsSparseTrackType = a})

-- | Parameter that control output group behavior on input loss.
msgsInputLossAction :: Lens' MsSmoothGroupSettings (Maybe InputLossActionForMsSmoothOut)
msgsInputLossAction = lens _msgsInputLossAction (\s a -> s {_msgsInputLossAction = a})

-- | Timestamp offset for the event.  Only used if timestampOffsetMode is set to useConfiguredOffset.
msgsTimestampOffset :: Lens' MsSmoothGroupSettings (Maybe Text)
msgsTimestampOffset = lens _msgsTimestampOffset (\s a -> s {_msgsTimestampOffset = a})

-- | When set to sendEos, send EOS signal to IIS server when stopping the event
msgsEventStopBehavior :: Lens' MsSmoothGroupSettings (Maybe SmoothGroupEventStopBehavior)
msgsEventStopBehavior = lens _msgsEventStopBehavior (\s a -> s {_msgsEventStopBehavior = a})

-- | Type of timestamp date offset to use. - useEventStartDate: Use the date the event was started as the offset - useConfiguredOffset: Use an explicitly configured date as the offset
msgsTimestampOffsetMode :: Lens' MsSmoothGroupSettings (Maybe SmoothGroupTimestampOffsetMode)
msgsTimestampOffsetMode = lens _msgsTimestampOffsetMode (\s a -> s {_msgsTimestampOffsetMode = a})

-- | Number of seconds before initiating a restart due to output failure, due to exhausting the numRetries on one segment, or exceeding filecacheDuration.
msgsRestartDelay :: Lens' MsSmoothGroupSettings (Maybe Natural)
msgsRestartDelay = lens _msgsRestartDelay (\s a -> s {_msgsRestartDelay = a}) . mapping _Nat

-- | Smooth Streaming publish point on an IIS server. Elemental Live acts as a "Push" encoder to IIS.
msgsDestination :: Lens' MsSmoothGroupSettings OutputLocationRef
msgsDestination = lens _msgsDestination (\s a -> s {_msgsDestination = a})

instance FromJSON MsSmoothGroupSettings where
  parseJSON =
    withObject
      "MsSmoothGroupSettings"
      ( \x ->
          MsSmoothGroupSettings'
            <$> (x .:? "streamManifestBehavior")
            <*> (x .:? "filecacheDuration")
            <*> (x .:? "fragmentLength")
            <*> (x .:? "eventId")
            <*> (x .:? "certificateMode")
            <*> (x .:? "numRetries")
            <*> (x .:? "acquisitionPointId")
            <*> (x .:? "audioOnlyTimecodeControl")
            <*> (x .:? "segmentationMode")
            <*> (x .:? "eventIdMode")
            <*> (x .:? "sendDelayMs")
            <*> (x .:? "connectionRetryInterval")
            <*> (x .:? "sparseTrackType")
            <*> (x .:? "inputLossAction")
            <*> (x .:? "timestampOffset")
            <*> (x .:? "eventStopBehavior")
            <*> (x .:? "timestampOffsetMode")
            <*> (x .:? "restartDelay")
            <*> (x .: "destination")
      )

instance Hashable MsSmoothGroupSettings

instance NFData MsSmoothGroupSettings

instance ToJSON MsSmoothGroupSettings where
  toJSON MsSmoothGroupSettings' {..} =
    object
      ( catMaybes
          [ ("streamManifestBehavior" .=)
              <$> _msgsStreamManifestBehavior,
            ("filecacheDuration" .=) <$> _msgsFilecacheDuration,
            ("fragmentLength" .=) <$> _msgsFragmentLength,
            ("eventId" .=) <$> _msgsEventId,
            ("certificateMode" .=) <$> _msgsCertificateMode,
            ("numRetries" .=) <$> _msgsNumRetries,
            ("acquisitionPointId" .=)
              <$> _msgsAcquisitionPointId,
            ("audioOnlyTimecodeControl" .=)
              <$> _msgsAudioOnlyTimecodeControl,
            ("segmentationMode" .=) <$> _msgsSegmentationMode,
            ("eventIdMode" .=) <$> _msgsEventIdMode,
            ("sendDelayMs" .=) <$> _msgsSendDelayMs,
            ("connectionRetryInterval" .=)
              <$> _msgsConnectionRetryInterval,
            ("sparseTrackType" .=) <$> _msgsSparseTrackType,
            ("inputLossAction" .=) <$> _msgsInputLossAction,
            ("timestampOffset" .=) <$> _msgsTimestampOffset,
            ("eventStopBehavior" .=) <$> _msgsEventStopBehavior,
            ("timestampOffsetMode" .=)
              <$> _msgsTimestampOffsetMode,
            ("restartDelay" .=) <$> _msgsRestartDelay,
            Just ("destination" .= _msgsDestination)
          ]
      )
