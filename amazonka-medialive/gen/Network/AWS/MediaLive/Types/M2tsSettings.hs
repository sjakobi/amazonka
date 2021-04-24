{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.M2tsSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.DvbNitSettings
import Network.AWS.MediaLive.Types.DvbSdtSettings
import Network.AWS.MediaLive.Types.DvbTdtSettings
import Network.AWS.MediaLive.Types.M2tsAbsentInputAudioBehavior
import Network.AWS.MediaLive.Types.M2tsArib
import Network.AWS.MediaLive.Types.M2tsAribCaptionsPidControl
import Network.AWS.MediaLive.Types.M2tsAudioBufferModel
import Network.AWS.MediaLive.Types.M2tsAudioInterval
import Network.AWS.MediaLive.Types.M2tsAudioStreamType
import Network.AWS.MediaLive.Types.M2tsBufferModel
import Network.AWS.MediaLive.Types.M2tsCCDescriptor
import Network.AWS.MediaLive.Types.M2tsEbifControl
import Network.AWS.MediaLive.Types.M2tsEbpPlacement
import Network.AWS.MediaLive.Types.M2tsEsRateInPes
import Network.AWS.MediaLive.Types.M2tsKlv
import Network.AWS.MediaLive.Types.M2tsNielsenId3Behavior
import Network.AWS.MediaLive.Types.M2tsPcrControl
import Network.AWS.MediaLive.Types.M2tsRateMode
import Network.AWS.MediaLive.Types.M2tsScte35Control
import Network.AWS.MediaLive.Types.M2tsSegmentationMarkers
import Network.AWS.MediaLive.Types.M2tsSegmentationStyle
import Network.AWS.MediaLive.Types.M2tsTimedMetadataBehavior
import Network.AWS.Prelude

-- | M2ts Settings
--
-- /See:/ 'm2tsSettings' smart constructor.
data M2tsSettings = M2tsSettings'
  { _mSegmentationMarkers ::
      !(Maybe M2tsSegmentationMarkers),
    _mKlvDataPids :: !(Maybe Text),
    _mEtvSignalPid :: !(Maybe Text),
    _mPcrPeriod :: !(Maybe Nat),
    _mPmtPid :: !(Maybe Text),
    _mVideoPid :: !(Maybe Text),
    _mNielsenId3Behavior ::
      !(Maybe M2tsNielsenId3Behavior),
    _mAudioBufferModel ::
      !(Maybe M2tsAudioBufferModel),
    _mTimedMetadataPid :: !(Maybe Text),
    _mSegmentationStyle ::
      !(Maybe M2tsSegmentationStyle),
    _mDvbNitSettings :: !(Maybe DvbNitSettings),
    _mNullPacketBitrate :: !(Maybe Double),
    _mPcrControl :: !(Maybe M2tsPcrControl),
    _mEbpAudioInterval ::
      !(Maybe M2tsAudioInterval),
    _mEbpPlacement :: !(Maybe M2tsEbpPlacement),
    _mPmtInterval :: !(Maybe Nat),
    _mCCDescriptor :: !(Maybe M2tsCCDescriptor),
    _mScte35Control :: !(Maybe M2tsScte35Control),
    _mAribCaptionsPid :: !(Maybe Text),
    _mAudioPids :: !(Maybe Text),
    _mEtvPlatformPid :: !(Maybe Text),
    _mPatInterval :: !(Maybe Nat),
    _mProgramNum :: !(Maybe Nat),
    _mAudioStreamType ::
      !(Maybe M2tsAudioStreamType),
    _mEbpLookaheadMs :: !(Maybe Nat),
    _mBufferModel :: !(Maybe M2tsBufferModel),
    _mAribCaptionsPidControl ::
      !(Maybe M2tsAribCaptionsPidControl),
    _mPcrPid :: !(Maybe Text),
    _mKlv :: !(Maybe M2tsKlv),
    _mAudioFramesPerPes :: !(Maybe Nat),
    _mRateMode :: !(Maybe M2tsRateMode),
    _mDvbTdtSettings :: !(Maybe DvbTdtSettings),
    _mEcmPid :: !(Maybe Text),
    _mDvbSdtSettings :: !(Maybe DvbSdtSettings),
    _mAbsentInputAudioBehavior ::
      !(Maybe M2tsAbsentInputAudioBehavior),
    _mSegmentationTime :: !(Maybe Double),
    _mEbif :: !(Maybe M2tsEbifControl),
    _mDvbTeletextPid :: !(Maybe Text),
    _mTimedMetadataBehavior ::
      !(Maybe M2tsTimedMetadataBehavior),
    _mArib :: !(Maybe M2tsArib),
    _mBitrate :: !(Maybe Nat),
    _mFragmentTime :: !(Maybe Double),
    _mEsRateInPes :: !(Maybe M2tsEsRateInPes),
    _mScte27Pids :: !(Maybe Text),
    _mTransportStreamId :: !(Maybe Nat),
    _mDvbSubPids :: !(Maybe Text),
    _mScte35Pid :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'M2tsSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mSegmentationMarkers' - Inserts segmentation markers at each segmentationTime period. raiSegstart sets the Random Access Indicator bit in the adaptation field. raiAdapt sets the RAI bit and adds the current timecode in the private data bytes. psiSegstart inserts PAT and PMT tables at the start of segments. ebp adds Encoder Boundary Point information to the adaptation field as per OpenCable specification OC-SP-EBP-I01-130118. ebpLegacy adds Encoder Boundary Point information to the adaptation field using a legacy proprietary format.
--
-- * 'mKlvDataPids' - Packet Identifier (PID) for input source KLV data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
--
-- * 'mEtvSignalPid' - Packet Identifier (PID) for input source ETV Signal data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
--
-- * 'mPcrPeriod' - Maximum time in milliseconds between Program Clock Reference (PCRs) inserted into the transport stream.
--
-- * 'mPmtPid' - Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream. Can be entered as a decimal or hexadecimal value. Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
--
-- * 'mVideoPid' - Packet Identifier (PID) of the elementary video stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
--
-- * 'mNielsenId3Behavior' - If set to passthrough, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
--
-- * 'mAudioBufferModel' - When set to dvb, uses DVB buffer model for Dolby Digital audio.  When set to atsc, the ATSC model is used.
--
-- * 'mTimedMetadataPid' - Packet Identifier (PID) of the timed metadata stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
--
-- * 'mSegmentationStyle' - The segmentation style parameter controls how segmentation markers are inserted into the transport stream. With avails, it is possible that segments may be truncated, which can influence where future segmentation markers are inserted. When a segmentation style of "resetCadence" is selected and a segment is truncated due to an avail, we will reset the segmentation cadence. This means the subsequent segment will have a duration of $segmentationTime seconds. When a segmentation style of "maintainCadence" is selected and a segment is truncated due to an avail, we will not reset the segmentation cadence. This means the subsequent segment will likely be truncated as well. However, all segments after that will have a duration of $segmentationTime seconds. Note that EBP lookahead is a slight exception to this rule.
--
-- * 'mDvbNitSettings' - Inserts DVB Network Information Table (NIT) at the specified table repetition interval.
--
-- * 'mNullPacketBitrate' - Value in bits per second of extra null packets to insert into the transport stream. This can be used if a downstream encryption system requires periodic null packets.
--
-- * 'mPcrControl' - When set to pcrEveryPesPacket, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream.
--
-- * 'mEbpAudioInterval' - When videoAndFixedIntervals is selected, audio EBP markers will be added to partitions 3 and 4. The interval between these additional markers will be fixed, and will be slightly shorter than the video EBP marker interval. Only available when EBP Cablelabs segmentation markers are selected.  Partitions 1 and 2 will always follow the video interval.
--
-- * 'mEbpPlacement' - Controls placement of EBP on Audio PIDs. If set to videoAndAudioPids, EBP markers will be placed on the video PID and all audio PIDs.  If set to videoPid, EBP markers will be placed on only the video PID.
--
-- * 'mPmtInterval' - The number of milliseconds between instances of this table in the output transport stream. Valid values are 0, 10..1000.
--
-- * 'mCCDescriptor' - When set to enabled, generates captionServiceDescriptor in PMT.
--
-- * 'mScte35Control' - Optionally pass SCTE-35 signals from the input source to this output.
--
-- * 'mAribCaptionsPid' - Packet Identifier (PID) for ARIB Captions in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
--
-- * 'mAudioPids' - Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values. Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
--
-- * 'mEtvPlatformPid' - Packet Identifier (PID) for input source ETV Platform data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
--
-- * 'mPatInterval' - The number of milliseconds between instances of this table in the output transport stream.  Valid values are 0, 10..1000.
--
-- * 'mProgramNum' - The value of the program number field in the Program Map Table.
--
-- * 'mAudioStreamType' - When set to atsc, uses stream type = 0x81 for AC3 and stream type = 0x87 for EAC3. When set to dvb, uses stream type = 0x06.
--
-- * 'mEbpLookaheadMs' - When set, enforces that Encoder Boundary Points do not come within the specified time interval of each other by looking ahead at input video. If another EBP is going to come in within the specified time interval, the current EBP is not emitted, and the segment is "stretched" to the next marker.  The lookahead value does not add latency to the system. The Live Event must be configured elsewhere to create sufficient latency to make the lookahead accurate.
--
-- * 'mBufferModel' - Controls the timing accuracy for output network traffic. Leave as MULTIPLEX to ensure accurate network packet timing. Or set to NONE, which might result in lower latency but will result in more variability in output network packet timing. This variability might cause interruptions, jitter, or bursty behavior in your playback or receiving devices.
--
-- * 'mAribCaptionsPidControl' - If set to auto, pid number used for ARIB Captions will be auto-selected from unused pids.  If set to useConfigured, ARIB Captions will be on the configured pid number.
--
-- * 'mPcrPid' - Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
--
-- * 'mKlv' - If set to passthrough, passes any KLV data from the input source to this output.
--
-- * 'mAudioFramesPerPes' - The number of audio frames to insert for each PES packet.
--
-- * 'mRateMode' - When vbr, does not insert null packets into transport stream to fill specified bitrate. The bitrate setting acts as the maximum bitrate when vbr is set.
--
-- * 'mDvbTdtSettings' - Inserts DVB Time and Date Table (TDT) at the specified table repetition interval.
--
-- * 'mEcmPid' - This field is unused and deprecated.
--
-- * 'mDvbSdtSettings' - Inserts DVB Service Description Table (SDT) at the specified table repetition interval.
--
-- * 'mAbsentInputAudioBehavior' - When set to drop, output audio streams will be removed from the program if the selected input audio stream is removed from the input. This allows the output audio configuration to dynamically change based on input configuration. If this is set to encodeSilence, all output audio streams will output encoded silence when not connected to an active input stream.
--
-- * 'mSegmentationTime' - The length in seconds of each segment. Required unless markers is set to _none_.
--
-- * 'mEbif' - If set to passthrough, passes any EBIF data from the input source to this output.
--
-- * 'mDvbTeletextPid' - Packet Identifier (PID) for input source DVB Teletext data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
--
-- * 'mTimedMetadataBehavior' - When set to passthrough, timed metadata will be passed through from input to output.
--
-- * 'mArib' - When set to enabled, uses ARIB-compliant field muxing and removes video descriptor.
--
-- * 'mBitrate' - The output bitrate of the transport stream in bits per second. Setting to 0 lets the muxer automatically determine the appropriate bitrate.
--
-- * 'mFragmentTime' - The length in seconds of each fragment. Only used with EBP markers.
--
-- * 'mEsRateInPes' - Include or exclude the ES Rate field in the PES header.
--
-- * 'mScte27Pids' - Packet Identifier (PID) for input source SCTE-27 data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
--
-- * 'mTransportStreamId' - The value of the transport stream ID field in the Program Map Table.
--
-- * 'mDvbSubPids' - Packet Identifier (PID) for input source DVB Subtitle data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
--
-- * 'mScte35Pid' - Packet Identifier (PID) of the SCTE-35 stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
m2tsSettings ::
  M2tsSettings
m2tsSettings =
  M2tsSettings'
    { _mSegmentationMarkers = Nothing,
      _mKlvDataPids = Nothing,
      _mEtvSignalPid = Nothing,
      _mPcrPeriod = Nothing,
      _mPmtPid = Nothing,
      _mVideoPid = Nothing,
      _mNielsenId3Behavior = Nothing,
      _mAudioBufferModel = Nothing,
      _mTimedMetadataPid = Nothing,
      _mSegmentationStyle = Nothing,
      _mDvbNitSettings = Nothing,
      _mNullPacketBitrate = Nothing,
      _mPcrControl = Nothing,
      _mEbpAudioInterval = Nothing,
      _mEbpPlacement = Nothing,
      _mPmtInterval = Nothing,
      _mCCDescriptor = Nothing,
      _mScte35Control = Nothing,
      _mAribCaptionsPid = Nothing,
      _mAudioPids = Nothing,
      _mEtvPlatformPid = Nothing,
      _mPatInterval = Nothing,
      _mProgramNum = Nothing,
      _mAudioStreamType = Nothing,
      _mEbpLookaheadMs = Nothing,
      _mBufferModel = Nothing,
      _mAribCaptionsPidControl = Nothing,
      _mPcrPid = Nothing,
      _mKlv = Nothing,
      _mAudioFramesPerPes = Nothing,
      _mRateMode = Nothing,
      _mDvbTdtSettings = Nothing,
      _mEcmPid = Nothing,
      _mDvbSdtSettings = Nothing,
      _mAbsentInputAudioBehavior = Nothing,
      _mSegmentationTime = Nothing,
      _mEbif = Nothing,
      _mDvbTeletextPid = Nothing,
      _mTimedMetadataBehavior = Nothing,
      _mArib = Nothing,
      _mBitrate = Nothing,
      _mFragmentTime = Nothing,
      _mEsRateInPes = Nothing,
      _mScte27Pids = Nothing,
      _mTransportStreamId = Nothing,
      _mDvbSubPids = Nothing,
      _mScte35Pid = Nothing
    }

-- | Inserts segmentation markers at each segmentationTime period. raiSegstart sets the Random Access Indicator bit in the adaptation field. raiAdapt sets the RAI bit and adds the current timecode in the private data bytes. psiSegstart inserts PAT and PMT tables at the start of segments. ebp adds Encoder Boundary Point information to the adaptation field as per OpenCable specification OC-SP-EBP-I01-130118. ebpLegacy adds Encoder Boundary Point information to the adaptation field using a legacy proprietary format.
mSegmentationMarkers :: Lens' M2tsSettings (Maybe M2tsSegmentationMarkers)
mSegmentationMarkers = lens _mSegmentationMarkers (\s a -> s {_mSegmentationMarkers = a})

-- | Packet Identifier (PID) for input source KLV data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
mKlvDataPids :: Lens' M2tsSettings (Maybe Text)
mKlvDataPids = lens _mKlvDataPids (\s a -> s {_mKlvDataPids = a})

-- | Packet Identifier (PID) for input source ETV Signal data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
mEtvSignalPid :: Lens' M2tsSettings (Maybe Text)
mEtvSignalPid = lens _mEtvSignalPid (\s a -> s {_mEtvSignalPid = a})

-- | Maximum time in milliseconds between Program Clock Reference (PCRs) inserted into the transport stream.
mPcrPeriod :: Lens' M2tsSettings (Maybe Natural)
mPcrPeriod = lens _mPcrPeriod (\s a -> s {_mPcrPeriod = a}) . mapping _Nat

-- | Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream. Can be entered as a decimal or hexadecimal value. Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
mPmtPid :: Lens' M2tsSettings (Maybe Text)
mPmtPid = lens _mPmtPid (\s a -> s {_mPmtPid = a})

-- | Packet Identifier (PID) of the elementary video stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
mVideoPid :: Lens' M2tsSettings (Maybe Text)
mVideoPid = lens _mVideoPid (\s a -> s {_mVideoPid = a})

-- | If set to passthrough, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
mNielsenId3Behavior :: Lens' M2tsSettings (Maybe M2tsNielsenId3Behavior)
mNielsenId3Behavior = lens _mNielsenId3Behavior (\s a -> s {_mNielsenId3Behavior = a})

-- | When set to dvb, uses DVB buffer model for Dolby Digital audio.  When set to atsc, the ATSC model is used.
mAudioBufferModel :: Lens' M2tsSettings (Maybe M2tsAudioBufferModel)
mAudioBufferModel = lens _mAudioBufferModel (\s a -> s {_mAudioBufferModel = a})

-- | Packet Identifier (PID) of the timed metadata stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
mTimedMetadataPid :: Lens' M2tsSettings (Maybe Text)
mTimedMetadataPid = lens _mTimedMetadataPid (\s a -> s {_mTimedMetadataPid = a})

-- | The segmentation style parameter controls how segmentation markers are inserted into the transport stream. With avails, it is possible that segments may be truncated, which can influence where future segmentation markers are inserted. When a segmentation style of "resetCadence" is selected and a segment is truncated due to an avail, we will reset the segmentation cadence. This means the subsequent segment will have a duration of $segmentationTime seconds. When a segmentation style of "maintainCadence" is selected and a segment is truncated due to an avail, we will not reset the segmentation cadence. This means the subsequent segment will likely be truncated as well. However, all segments after that will have a duration of $segmentationTime seconds. Note that EBP lookahead is a slight exception to this rule.
mSegmentationStyle :: Lens' M2tsSettings (Maybe M2tsSegmentationStyle)
mSegmentationStyle = lens _mSegmentationStyle (\s a -> s {_mSegmentationStyle = a})

-- | Inserts DVB Network Information Table (NIT) at the specified table repetition interval.
mDvbNitSettings :: Lens' M2tsSettings (Maybe DvbNitSettings)
mDvbNitSettings = lens _mDvbNitSettings (\s a -> s {_mDvbNitSettings = a})

-- | Value in bits per second of extra null packets to insert into the transport stream. This can be used if a downstream encryption system requires periodic null packets.
mNullPacketBitrate :: Lens' M2tsSettings (Maybe Double)
mNullPacketBitrate = lens _mNullPacketBitrate (\s a -> s {_mNullPacketBitrate = a})

-- | When set to pcrEveryPesPacket, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream.
mPcrControl :: Lens' M2tsSettings (Maybe M2tsPcrControl)
mPcrControl = lens _mPcrControl (\s a -> s {_mPcrControl = a})

-- | When videoAndFixedIntervals is selected, audio EBP markers will be added to partitions 3 and 4. The interval between these additional markers will be fixed, and will be slightly shorter than the video EBP marker interval. Only available when EBP Cablelabs segmentation markers are selected.  Partitions 1 and 2 will always follow the video interval.
mEbpAudioInterval :: Lens' M2tsSettings (Maybe M2tsAudioInterval)
mEbpAudioInterval = lens _mEbpAudioInterval (\s a -> s {_mEbpAudioInterval = a})

-- | Controls placement of EBP on Audio PIDs. If set to videoAndAudioPids, EBP markers will be placed on the video PID and all audio PIDs.  If set to videoPid, EBP markers will be placed on only the video PID.
mEbpPlacement :: Lens' M2tsSettings (Maybe M2tsEbpPlacement)
mEbpPlacement = lens _mEbpPlacement (\s a -> s {_mEbpPlacement = a})

-- | The number of milliseconds between instances of this table in the output transport stream. Valid values are 0, 10..1000.
mPmtInterval :: Lens' M2tsSettings (Maybe Natural)
mPmtInterval = lens _mPmtInterval (\s a -> s {_mPmtInterval = a}) . mapping _Nat

-- | When set to enabled, generates captionServiceDescriptor in PMT.
mCCDescriptor :: Lens' M2tsSettings (Maybe M2tsCCDescriptor)
mCCDescriptor = lens _mCCDescriptor (\s a -> s {_mCCDescriptor = a})

-- | Optionally pass SCTE-35 signals from the input source to this output.
mScte35Control :: Lens' M2tsSettings (Maybe M2tsScte35Control)
mScte35Control = lens _mScte35Control (\s a -> s {_mScte35Control = a})

-- | Packet Identifier (PID) for ARIB Captions in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
mAribCaptionsPid :: Lens' M2tsSettings (Maybe Text)
mAribCaptionsPid = lens _mAribCaptionsPid (\s a -> s {_mAribCaptionsPid = a})

-- | Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values. Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
mAudioPids :: Lens' M2tsSettings (Maybe Text)
mAudioPids = lens _mAudioPids (\s a -> s {_mAudioPids = a})

-- | Packet Identifier (PID) for input source ETV Platform data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
mEtvPlatformPid :: Lens' M2tsSettings (Maybe Text)
mEtvPlatformPid = lens _mEtvPlatformPid (\s a -> s {_mEtvPlatformPid = a})

-- | The number of milliseconds between instances of this table in the output transport stream.  Valid values are 0, 10..1000.
mPatInterval :: Lens' M2tsSettings (Maybe Natural)
mPatInterval = lens _mPatInterval (\s a -> s {_mPatInterval = a}) . mapping _Nat

-- | The value of the program number field in the Program Map Table.
mProgramNum :: Lens' M2tsSettings (Maybe Natural)
mProgramNum = lens _mProgramNum (\s a -> s {_mProgramNum = a}) . mapping _Nat

-- | When set to atsc, uses stream type = 0x81 for AC3 and stream type = 0x87 for EAC3. When set to dvb, uses stream type = 0x06.
mAudioStreamType :: Lens' M2tsSettings (Maybe M2tsAudioStreamType)
mAudioStreamType = lens _mAudioStreamType (\s a -> s {_mAudioStreamType = a})

-- | When set, enforces that Encoder Boundary Points do not come within the specified time interval of each other by looking ahead at input video. If another EBP is going to come in within the specified time interval, the current EBP is not emitted, and the segment is "stretched" to the next marker.  The lookahead value does not add latency to the system. The Live Event must be configured elsewhere to create sufficient latency to make the lookahead accurate.
mEbpLookaheadMs :: Lens' M2tsSettings (Maybe Natural)
mEbpLookaheadMs = lens _mEbpLookaheadMs (\s a -> s {_mEbpLookaheadMs = a}) . mapping _Nat

-- | Controls the timing accuracy for output network traffic. Leave as MULTIPLEX to ensure accurate network packet timing. Or set to NONE, which might result in lower latency but will result in more variability in output network packet timing. This variability might cause interruptions, jitter, or bursty behavior in your playback or receiving devices.
mBufferModel :: Lens' M2tsSettings (Maybe M2tsBufferModel)
mBufferModel = lens _mBufferModel (\s a -> s {_mBufferModel = a})

-- | If set to auto, pid number used for ARIB Captions will be auto-selected from unused pids.  If set to useConfigured, ARIB Captions will be on the configured pid number.
mAribCaptionsPidControl :: Lens' M2tsSettings (Maybe M2tsAribCaptionsPidControl)
mAribCaptionsPidControl = lens _mAribCaptionsPidControl (\s a -> s {_mAribCaptionsPidControl = a})

-- | Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
mPcrPid :: Lens' M2tsSettings (Maybe Text)
mPcrPid = lens _mPcrPid (\s a -> s {_mPcrPid = a})

-- | If set to passthrough, passes any KLV data from the input source to this output.
mKlv :: Lens' M2tsSettings (Maybe M2tsKlv)
mKlv = lens _mKlv (\s a -> s {_mKlv = a})

-- | The number of audio frames to insert for each PES packet.
mAudioFramesPerPes :: Lens' M2tsSettings (Maybe Natural)
mAudioFramesPerPes = lens _mAudioFramesPerPes (\s a -> s {_mAudioFramesPerPes = a}) . mapping _Nat

-- | When vbr, does not insert null packets into transport stream to fill specified bitrate. The bitrate setting acts as the maximum bitrate when vbr is set.
mRateMode :: Lens' M2tsSettings (Maybe M2tsRateMode)
mRateMode = lens _mRateMode (\s a -> s {_mRateMode = a})

-- | Inserts DVB Time and Date Table (TDT) at the specified table repetition interval.
mDvbTdtSettings :: Lens' M2tsSettings (Maybe DvbTdtSettings)
mDvbTdtSettings = lens _mDvbTdtSettings (\s a -> s {_mDvbTdtSettings = a})

-- | This field is unused and deprecated.
mEcmPid :: Lens' M2tsSettings (Maybe Text)
mEcmPid = lens _mEcmPid (\s a -> s {_mEcmPid = a})

-- | Inserts DVB Service Description Table (SDT) at the specified table repetition interval.
mDvbSdtSettings :: Lens' M2tsSettings (Maybe DvbSdtSettings)
mDvbSdtSettings = lens _mDvbSdtSettings (\s a -> s {_mDvbSdtSettings = a})

-- | When set to drop, output audio streams will be removed from the program if the selected input audio stream is removed from the input. This allows the output audio configuration to dynamically change based on input configuration. If this is set to encodeSilence, all output audio streams will output encoded silence when not connected to an active input stream.
mAbsentInputAudioBehavior :: Lens' M2tsSettings (Maybe M2tsAbsentInputAudioBehavior)
mAbsentInputAudioBehavior = lens _mAbsentInputAudioBehavior (\s a -> s {_mAbsentInputAudioBehavior = a})

-- | The length in seconds of each segment. Required unless markers is set to _none_.
mSegmentationTime :: Lens' M2tsSettings (Maybe Double)
mSegmentationTime = lens _mSegmentationTime (\s a -> s {_mSegmentationTime = a})

-- | If set to passthrough, passes any EBIF data from the input source to this output.
mEbif :: Lens' M2tsSettings (Maybe M2tsEbifControl)
mEbif = lens _mEbif (\s a -> s {_mEbif = a})

-- | Packet Identifier (PID) for input source DVB Teletext data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
mDvbTeletextPid :: Lens' M2tsSettings (Maybe Text)
mDvbTeletextPid = lens _mDvbTeletextPid (\s a -> s {_mDvbTeletextPid = a})

-- | When set to passthrough, timed metadata will be passed through from input to output.
mTimedMetadataBehavior :: Lens' M2tsSettings (Maybe M2tsTimedMetadataBehavior)
mTimedMetadataBehavior = lens _mTimedMetadataBehavior (\s a -> s {_mTimedMetadataBehavior = a})

-- | When set to enabled, uses ARIB-compliant field muxing and removes video descriptor.
mArib :: Lens' M2tsSettings (Maybe M2tsArib)
mArib = lens _mArib (\s a -> s {_mArib = a})

-- | The output bitrate of the transport stream in bits per second. Setting to 0 lets the muxer automatically determine the appropriate bitrate.
mBitrate :: Lens' M2tsSettings (Maybe Natural)
mBitrate = lens _mBitrate (\s a -> s {_mBitrate = a}) . mapping _Nat

-- | The length in seconds of each fragment. Only used with EBP markers.
mFragmentTime :: Lens' M2tsSettings (Maybe Double)
mFragmentTime = lens _mFragmentTime (\s a -> s {_mFragmentTime = a})

-- | Include or exclude the ES Rate field in the PES header.
mEsRateInPes :: Lens' M2tsSettings (Maybe M2tsEsRateInPes)
mEsRateInPes = lens _mEsRateInPes (\s a -> s {_mEsRateInPes = a})

-- | Packet Identifier (PID) for input source SCTE-27 data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
mScte27Pids :: Lens' M2tsSettings (Maybe Text)
mScte27Pids = lens _mScte27Pids (\s a -> s {_mScte27Pids = a})

-- | The value of the transport stream ID field in the Program Map Table.
mTransportStreamId :: Lens' M2tsSettings (Maybe Natural)
mTransportStreamId = lens _mTransportStreamId (\s a -> s {_mTransportStreamId = a}) . mapping _Nat

-- | Packet Identifier (PID) for input source DVB Subtitle data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
mDvbSubPids :: Lens' M2tsSettings (Maybe Text)
mDvbSubPids = lens _mDvbSubPids (\s a -> s {_mDvbSubPids = a})

-- | Packet Identifier (PID) of the SCTE-35 stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
mScte35Pid :: Lens' M2tsSettings (Maybe Text)
mScte35Pid = lens _mScte35Pid (\s a -> s {_mScte35Pid = a})

instance FromJSON M2tsSettings where
  parseJSON =
    withObject
      "M2tsSettings"
      ( \x ->
          M2tsSettings'
            <$> (x .:? "segmentationMarkers")
            <*> (x .:? "klvDataPids")
            <*> (x .:? "etvSignalPid")
            <*> (x .:? "pcrPeriod")
            <*> (x .:? "pmtPid")
            <*> (x .:? "videoPid")
            <*> (x .:? "nielsenId3Behavior")
            <*> (x .:? "audioBufferModel")
            <*> (x .:? "timedMetadataPid")
            <*> (x .:? "segmentationStyle")
            <*> (x .:? "dvbNitSettings")
            <*> (x .:? "nullPacketBitrate")
            <*> (x .:? "pcrControl")
            <*> (x .:? "ebpAudioInterval")
            <*> (x .:? "ebpPlacement")
            <*> (x .:? "pmtInterval")
            <*> (x .:? "ccDescriptor")
            <*> (x .:? "scte35Control")
            <*> (x .:? "aribCaptionsPid")
            <*> (x .:? "audioPids")
            <*> (x .:? "etvPlatformPid")
            <*> (x .:? "patInterval")
            <*> (x .:? "programNum")
            <*> (x .:? "audioStreamType")
            <*> (x .:? "ebpLookaheadMs")
            <*> (x .:? "bufferModel")
            <*> (x .:? "aribCaptionsPidControl")
            <*> (x .:? "pcrPid")
            <*> (x .:? "klv")
            <*> (x .:? "audioFramesPerPes")
            <*> (x .:? "rateMode")
            <*> (x .:? "dvbTdtSettings")
            <*> (x .:? "ecmPid")
            <*> (x .:? "dvbSdtSettings")
            <*> (x .:? "absentInputAudioBehavior")
            <*> (x .:? "segmentationTime")
            <*> (x .:? "ebif")
            <*> (x .:? "dvbTeletextPid")
            <*> (x .:? "timedMetadataBehavior")
            <*> (x .:? "arib")
            <*> (x .:? "bitrate")
            <*> (x .:? "fragmentTime")
            <*> (x .:? "esRateInPes")
            <*> (x .:? "scte27Pids")
            <*> (x .:? "transportStreamId")
            <*> (x .:? "dvbSubPids")
            <*> (x .:? "scte35Pid")
      )

instance Hashable M2tsSettings

instance NFData M2tsSettings

instance ToJSON M2tsSettings where
  toJSON M2tsSettings' {..} =
    object
      ( catMaybes
          [ ("segmentationMarkers" .=)
              <$> _mSegmentationMarkers,
            ("klvDataPids" .=) <$> _mKlvDataPids,
            ("etvSignalPid" .=) <$> _mEtvSignalPid,
            ("pcrPeriod" .=) <$> _mPcrPeriod,
            ("pmtPid" .=) <$> _mPmtPid,
            ("videoPid" .=) <$> _mVideoPid,
            ("nielsenId3Behavior" .=) <$> _mNielsenId3Behavior,
            ("audioBufferModel" .=) <$> _mAudioBufferModel,
            ("timedMetadataPid" .=) <$> _mTimedMetadataPid,
            ("segmentationStyle" .=) <$> _mSegmentationStyle,
            ("dvbNitSettings" .=) <$> _mDvbNitSettings,
            ("nullPacketBitrate" .=) <$> _mNullPacketBitrate,
            ("pcrControl" .=) <$> _mPcrControl,
            ("ebpAudioInterval" .=) <$> _mEbpAudioInterval,
            ("ebpPlacement" .=) <$> _mEbpPlacement,
            ("pmtInterval" .=) <$> _mPmtInterval,
            ("ccDescriptor" .=) <$> _mCCDescriptor,
            ("scte35Control" .=) <$> _mScte35Control,
            ("aribCaptionsPid" .=) <$> _mAribCaptionsPid,
            ("audioPids" .=) <$> _mAudioPids,
            ("etvPlatformPid" .=) <$> _mEtvPlatformPid,
            ("patInterval" .=) <$> _mPatInterval,
            ("programNum" .=) <$> _mProgramNum,
            ("audioStreamType" .=) <$> _mAudioStreamType,
            ("ebpLookaheadMs" .=) <$> _mEbpLookaheadMs,
            ("bufferModel" .=) <$> _mBufferModel,
            ("aribCaptionsPidControl" .=)
              <$> _mAribCaptionsPidControl,
            ("pcrPid" .=) <$> _mPcrPid,
            ("klv" .=) <$> _mKlv,
            ("audioFramesPerPes" .=) <$> _mAudioFramesPerPes,
            ("rateMode" .=) <$> _mRateMode,
            ("dvbTdtSettings" .=) <$> _mDvbTdtSettings,
            ("ecmPid" .=) <$> _mEcmPid,
            ("dvbSdtSettings" .=) <$> _mDvbSdtSettings,
            ("absentInputAudioBehavior" .=)
              <$> _mAbsentInputAudioBehavior,
            ("segmentationTime" .=) <$> _mSegmentationTime,
            ("ebif" .=) <$> _mEbif,
            ("dvbTeletextPid" .=) <$> _mDvbTeletextPid,
            ("timedMetadataBehavior" .=)
              <$> _mTimedMetadataBehavior,
            ("arib" .=) <$> _mArib,
            ("bitrate" .=) <$> _mBitrate,
            ("fragmentTime" .=) <$> _mFragmentTime,
            ("esRateInPes" .=) <$> _mEsRateInPes,
            ("scte27Pids" .=) <$> _mScte27Pids,
            ("transportStreamId" .=) <$> _mTransportStreamId,
            ("dvbSubPids" .=) <$> _mDvbSubPids,
            ("scte35Pid" .=) <$> _mScte35Pid
          ]
      )
