{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.M2tsSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.M2tsSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.DvbNitSettings
import Network.AWS.MediaConvert.Types.DvbSdtSettings
import Network.AWS.MediaConvert.Types.DvbTdtSettings
import Network.AWS.MediaConvert.Types.M2tsAudioBufferModel
import Network.AWS.MediaConvert.Types.M2tsAudioDuration
import Network.AWS.MediaConvert.Types.M2tsBufferModel
import Network.AWS.MediaConvert.Types.M2tsEbpAudioInterval
import Network.AWS.MediaConvert.Types.M2tsEbpPlacement
import Network.AWS.MediaConvert.Types.M2tsEsRateInPes
import Network.AWS.MediaConvert.Types.M2tsForceTsVideoEbpOrder
import Network.AWS.MediaConvert.Types.M2tsNielsenId3
import Network.AWS.MediaConvert.Types.M2tsPcrControl
import Network.AWS.MediaConvert.Types.M2tsRateMode
import Network.AWS.MediaConvert.Types.M2tsScte35Esam
import Network.AWS.MediaConvert.Types.M2tsScte35Source
import Network.AWS.MediaConvert.Types.M2tsSegmentationMarkers
import Network.AWS.MediaConvert.Types.M2tsSegmentationStyle
import Network.AWS.Prelude

-- | MPEG-2 TS container settings. These apply to outputs in a File output group when the output's container (ContainerType) is MPEG-2 Transport Stream (M2TS). In these assets, data is organized by the program map table (PMT). Each transport stream program contains subsets of data, including audio, video, and metadata. Each of these subsets of data has a numerical label called a packet identifier (PID). Each transport stream program corresponds to one MediaConvert output. The PMT lists the types of data in a program along with their PID. Downstream systems and players use the program map table to look up the PID for each type of data it accesses and then uses the PIDs to locate specific data within the asset.
--
-- /See:/ 'm2tsSettings' smart constructor.
data M2tsSettings = M2tsSettings'
  { _m2tSegmentationMarkers ::
      !(Maybe M2tsSegmentationMarkers),
    _m2tPmtPid :: !(Maybe Nat),
    _m2tVideoPid :: !(Maybe Nat),
    _m2tAudioBufferModel ::
      !(Maybe M2tsAudioBufferModel),
    _m2tTimedMetadataPid :: !(Maybe Nat),
    _m2tSegmentationStyle ::
      !(Maybe M2tsSegmentationStyle),
    _m2tDvbNitSettings :: !(Maybe DvbNitSettings),
    _m2tNullPacketBitrate :: !(Maybe Double),
    _m2tPcrControl :: !(Maybe M2tsPcrControl),
    _m2tEbpAudioInterval ::
      !(Maybe M2tsEbpAudioInterval),
    _m2tEbpPlacement :: !(Maybe M2tsEbpPlacement),
    _m2tPmtInterval :: !(Maybe Nat),
    _m2tAudioPids :: !(Maybe [Nat]),
    _m2tPatInterval :: !(Maybe Nat),
    _m2tMinEbpInterval :: !(Maybe Nat),
    _m2tMaxPcrInterval :: !(Maybe Nat),
    _m2tProgramNumber :: !(Maybe Nat),
    _m2tBufferModel :: !(Maybe M2tsBufferModel),
    _m2tPcrPid :: !(Maybe Nat),
    _m2tAudioFramesPerPes :: !(Maybe Nat),
    _m2tRateMode :: !(Maybe M2tsRateMode),
    _m2tDvbTdtSettings :: !(Maybe DvbTdtSettings),
    _m2tDvbSdtSettings :: !(Maybe DvbSdtSettings),
    _m2tSegmentationTime :: !(Maybe Double),
    _m2tAudioDuration ::
      !(Maybe M2tsAudioDuration),
    _m2tNielsenId3 :: !(Maybe M2tsNielsenId3),
    _m2tDvbTeletextPid :: !(Maybe Nat),
    _m2tBitrate :: !(Maybe Nat),
    _m2tFragmentTime :: !(Maybe Double),
    _m2tEsRateInPes :: !(Maybe M2tsEsRateInPes),
    _m2tPrivateMetadataPid :: !(Maybe Nat),
    _m2tScte35Esam :: !(Maybe M2tsScte35Esam),
    _m2tScte35Source :: !(Maybe M2tsScte35Source),
    _m2tForceTsVideoEbpOrder ::
      !(Maybe M2tsForceTsVideoEbpOrder),
    _m2tTransportStreamId :: !(Maybe Nat),
    _m2tDvbSubPids :: !(Maybe [Nat]),
    _m2tScte35Pid :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'M2tsSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'm2tSegmentationMarkers' - Inserts segmentation markers at each segmentation_time period. rai_segstart sets the Random Access Indicator bit in the adaptation field. rai_adapt sets the RAI bit and adds the current timecode in the private data bytes. psi_segstart inserts PAT and PMT tables at the start of segments. ebp adds Encoder Boundary Point information to the adaptation field as per OpenCable specification OC-SP-EBP-I01-130118. ebp_legacy adds Encoder Boundary Point information to the adaptation field using a legacy proprietary format.
--
-- * 'm2tPmtPid' - Specify the packet identifier (PID) for the program map table (PMT) itself. Default is 480.
--
-- * 'm2tVideoPid' - Specify the packet identifier (PID) of the elementary video stream in the transport stream.
--
-- * 'm2tAudioBufferModel' - Selects between the DVB and ATSC buffer models for Dolby Digital audio.
--
-- * 'm2tTimedMetadataPid' - Specify the packet identifier (PID) for timed metadata in this output. Default is 502.
--
-- * 'm2tSegmentationStyle' - The segmentation style parameter controls how segmentation markers are inserted into the transport stream. With avails, it is possible that segments may be truncated, which can influence where future segmentation markers are inserted. When a segmentation style of "reset_cadence" is selected and a segment is truncated due to an avail, we will reset the segmentation cadence. This means the subsequent segment will have a duration of of $segmentation_time seconds. When a segmentation style of "maintain_cadence" is selected and a segment is truncated due to an avail, we will not reset the segmentation cadence. This means the subsequent segment will likely be truncated as well. However, all segments after that will have a duration of $segmentation_time seconds. Note that EBP lookahead is a slight exception to this rule.
--
-- * 'm2tDvbNitSettings' - Inserts DVB Network Information Table (NIT) at the specified table repetition interval.
--
-- * 'm2tNullPacketBitrate' - Value in bits per second of extra null packets to insert into the transport stream. This can be used if a downstream encryption system requires periodic null packets.
--
-- * 'm2tPcrControl' - When set to PCR_EVERY_PES_PACKET, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This is effective only when the PCR PID is the same as the video or audio elementary stream.
--
-- * 'm2tEbpAudioInterval' - When set to VIDEO_AND_FIXED_INTERVALS, audio EBP markers will be added to partitions 3 and 4. The interval between these additional markers will be fixed, and will be slightly shorter than the video EBP marker interval. When set to VIDEO_INTERVAL, these additional markers will not be inserted. Only applicable when EBP segmentation markers are is selected (segmentationMarkers is EBP or EBP_LEGACY).
--
-- * 'm2tEbpPlacement' - Selects which PIDs to place EBP markers on. They can either be placed only on the video PID, or on both the video PID and all audio PIDs. Only applicable when EBP segmentation markers are is selected (segmentationMarkers is EBP or EBP_LEGACY).
--
-- * 'm2tPmtInterval' - Specify the number of milliseconds between instances of the program map table (PMT) in the output transport stream.
--
-- * 'm2tAudioPids' - Specify the packet identifiers (PIDs) for any elementary audio streams you include in this output. Specify multiple PIDs as a JSON array. Default is the range 482-492.
--
-- * 'm2tPatInterval' - The number of milliseconds between instances of this table in the output transport stream.
--
-- * 'm2tMinEbpInterval' - When set, enforces that Encoder Boundary Points do not come within the specified time interval of each other by looking ahead at input video. If another EBP is going to come in within the specified time interval, the current EBP is not emitted, and the segment is "stretched" to the next marker. The lookahead value does not add latency to the system. The Live Event must be configured elsewhere to create sufficient latency to make the lookahead accurate.
--
-- * 'm2tMaxPcrInterval' - Specify the maximum time, in milliseconds, between Program Clock References (PCRs) inserted into the transport stream.
--
-- * 'm2tProgramNumber' - Use Program number (programNumber) to specify the program number used in the program map table (PMT) for this output. Default is 1. Program numbers and program map tables are parts of MPEG-2 transport stream containers, used for organizing data.
--
-- * 'm2tBufferModel' - Controls what buffer model to use for accurate interleaving. If set to MULTIPLEX, use multiplex  buffer model. If set to NONE, this can lead to lower latency, but low-memory devices may not be able to play back the stream without interruptions.
--
-- * 'm2tPcrPid' - Specify the packet identifier (PID) for the program clock reference (PCR) in this output. If you do not specify a value, the service will use the value for Video PID (VideoPid).
--
-- * 'm2tAudioFramesPerPes' - The number of audio frames to insert for each PES packet.
--
-- * 'm2tRateMode' - When set to CBR, inserts null packets into transport stream to fill specified bitrate. When set to VBR, the bitrate setting acts as the maximum bitrate, but the output will not be padded up to that bitrate.
--
-- * 'm2tDvbTdtSettings' - Inserts DVB Time and Date Table (TDT) at the specified table repetition interval.
--
-- * 'm2tDvbSdtSettings' - Inserts DVB Service Description Table (NIT) at the specified table repetition interval.
--
-- * 'm2tSegmentationTime' - Specify the length, in seconds, of each segment. Required unless markers is set to _none_.
--
-- * 'm2tAudioDuration' - Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration (MATCH_VIDEO_DURATION). In all other cases, keep the default value, Default codec duration (DEFAULT_CODEC_DURATION). When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec.
--
-- * 'm2tNielsenId3' - If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
--
-- * 'm2tDvbTeletextPid' - Specify the packet identifier (PID) for DVB teletext data you include in this output. Default is 499.
--
-- * 'm2tBitrate' - Specify the output bitrate of the transport stream in bits per second. Setting to 0 lets the muxer automatically determine the appropriate bitrate. Other common values are 3750000, 7500000, and 15000000.
--
-- * 'm2tFragmentTime' - The length, in seconds, of each fragment. Only used with EBP markers.
--
-- * 'm2tEsRateInPes' - Controls whether to include the ES Rate field in the PES header.
--
-- * 'm2tPrivateMetadataPid' - Specify the packet identifier (PID) of the private metadata stream. Default is 503.
--
-- * 'm2tScte35Esam' - Include this in your job settings to put SCTE-35 markers in your HLS and transport stream outputs at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML (sccXml).
--
-- * 'm2tScte35Source' - For SCTE-35 markers from your input-- Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want SCTE-35 markers in this output. For SCTE-35 markers from an ESAM XML document-- Choose None (NONE). Also provide the ESAM XML as a string in the setting Signal processing notification XML (sccXml). Also enable ESAM SCTE-35 (include the property scte35Esam).
--
-- * 'm2tForceTsVideoEbpOrder' - Keep the default value (DEFAULT) unless you know that your audio EBP markers are incorrectly appearing before your video EBP markers. To correct this problem, set this value to Force (FORCE).
--
-- * 'm2tTransportStreamId' - Specify the ID for the transport stream itself in the program map table for this output. Transport stream IDs and program map tables are parts of MPEG-2 transport stream containers, used for organizing data.
--
-- * 'm2tDvbSubPids' - Specify the packet identifiers (PIDs) for DVB subtitle data included in this output. Specify multiple PIDs as a JSON array. Default is the range 460-479.
--
-- * 'm2tScte35Pid' - Specify the packet identifier (PID) of the SCTE-35 stream in the transport stream.
m2tsSettings ::
  M2tsSettings
m2tsSettings =
  M2tsSettings'
    { _m2tSegmentationMarkers = Nothing,
      _m2tPmtPid = Nothing,
      _m2tVideoPid = Nothing,
      _m2tAudioBufferModel = Nothing,
      _m2tTimedMetadataPid = Nothing,
      _m2tSegmentationStyle = Nothing,
      _m2tDvbNitSettings = Nothing,
      _m2tNullPacketBitrate = Nothing,
      _m2tPcrControl = Nothing,
      _m2tEbpAudioInterval = Nothing,
      _m2tEbpPlacement = Nothing,
      _m2tPmtInterval = Nothing,
      _m2tAudioPids = Nothing,
      _m2tPatInterval = Nothing,
      _m2tMinEbpInterval = Nothing,
      _m2tMaxPcrInterval = Nothing,
      _m2tProgramNumber = Nothing,
      _m2tBufferModel = Nothing,
      _m2tPcrPid = Nothing,
      _m2tAudioFramesPerPes = Nothing,
      _m2tRateMode = Nothing,
      _m2tDvbTdtSettings = Nothing,
      _m2tDvbSdtSettings = Nothing,
      _m2tSegmentationTime = Nothing,
      _m2tAudioDuration = Nothing,
      _m2tNielsenId3 = Nothing,
      _m2tDvbTeletextPid = Nothing,
      _m2tBitrate = Nothing,
      _m2tFragmentTime = Nothing,
      _m2tEsRateInPes = Nothing,
      _m2tPrivateMetadataPid = Nothing,
      _m2tScte35Esam = Nothing,
      _m2tScte35Source = Nothing,
      _m2tForceTsVideoEbpOrder = Nothing,
      _m2tTransportStreamId = Nothing,
      _m2tDvbSubPids = Nothing,
      _m2tScte35Pid = Nothing
    }

-- | Inserts segmentation markers at each segmentation_time period. rai_segstart sets the Random Access Indicator bit in the adaptation field. rai_adapt sets the RAI bit and adds the current timecode in the private data bytes. psi_segstart inserts PAT and PMT tables at the start of segments. ebp adds Encoder Boundary Point information to the adaptation field as per OpenCable specification OC-SP-EBP-I01-130118. ebp_legacy adds Encoder Boundary Point information to the adaptation field using a legacy proprietary format.
m2tSegmentationMarkers :: Lens' M2tsSettings (Maybe M2tsSegmentationMarkers)
m2tSegmentationMarkers = lens _m2tSegmentationMarkers (\s a -> s {_m2tSegmentationMarkers = a})

-- | Specify the packet identifier (PID) for the program map table (PMT) itself. Default is 480.
m2tPmtPid :: Lens' M2tsSettings (Maybe Natural)
m2tPmtPid = lens _m2tPmtPid (\s a -> s {_m2tPmtPid = a}) . mapping _Nat

-- | Specify the packet identifier (PID) of the elementary video stream in the transport stream.
m2tVideoPid :: Lens' M2tsSettings (Maybe Natural)
m2tVideoPid = lens _m2tVideoPid (\s a -> s {_m2tVideoPid = a}) . mapping _Nat

-- | Selects between the DVB and ATSC buffer models for Dolby Digital audio.
m2tAudioBufferModel :: Lens' M2tsSettings (Maybe M2tsAudioBufferModel)
m2tAudioBufferModel = lens _m2tAudioBufferModel (\s a -> s {_m2tAudioBufferModel = a})

-- | Specify the packet identifier (PID) for timed metadata in this output. Default is 502.
m2tTimedMetadataPid :: Lens' M2tsSettings (Maybe Natural)
m2tTimedMetadataPid = lens _m2tTimedMetadataPid (\s a -> s {_m2tTimedMetadataPid = a}) . mapping _Nat

-- | The segmentation style parameter controls how segmentation markers are inserted into the transport stream. With avails, it is possible that segments may be truncated, which can influence where future segmentation markers are inserted. When a segmentation style of "reset_cadence" is selected and a segment is truncated due to an avail, we will reset the segmentation cadence. This means the subsequent segment will have a duration of of $segmentation_time seconds. When a segmentation style of "maintain_cadence" is selected and a segment is truncated due to an avail, we will not reset the segmentation cadence. This means the subsequent segment will likely be truncated as well. However, all segments after that will have a duration of $segmentation_time seconds. Note that EBP lookahead is a slight exception to this rule.
m2tSegmentationStyle :: Lens' M2tsSettings (Maybe M2tsSegmentationStyle)
m2tSegmentationStyle = lens _m2tSegmentationStyle (\s a -> s {_m2tSegmentationStyle = a})

-- | Inserts DVB Network Information Table (NIT) at the specified table repetition interval.
m2tDvbNitSettings :: Lens' M2tsSettings (Maybe DvbNitSettings)
m2tDvbNitSettings = lens _m2tDvbNitSettings (\s a -> s {_m2tDvbNitSettings = a})

-- | Value in bits per second of extra null packets to insert into the transport stream. This can be used if a downstream encryption system requires periodic null packets.
m2tNullPacketBitrate :: Lens' M2tsSettings (Maybe Double)
m2tNullPacketBitrate = lens _m2tNullPacketBitrate (\s a -> s {_m2tNullPacketBitrate = a})

-- | When set to PCR_EVERY_PES_PACKET, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This is effective only when the PCR PID is the same as the video or audio elementary stream.
m2tPcrControl :: Lens' M2tsSettings (Maybe M2tsPcrControl)
m2tPcrControl = lens _m2tPcrControl (\s a -> s {_m2tPcrControl = a})

-- | When set to VIDEO_AND_FIXED_INTERVALS, audio EBP markers will be added to partitions 3 and 4. The interval between these additional markers will be fixed, and will be slightly shorter than the video EBP marker interval. When set to VIDEO_INTERVAL, these additional markers will not be inserted. Only applicable when EBP segmentation markers are is selected (segmentationMarkers is EBP or EBP_LEGACY).
m2tEbpAudioInterval :: Lens' M2tsSettings (Maybe M2tsEbpAudioInterval)
m2tEbpAudioInterval = lens _m2tEbpAudioInterval (\s a -> s {_m2tEbpAudioInterval = a})

-- | Selects which PIDs to place EBP markers on. They can either be placed only on the video PID, or on both the video PID and all audio PIDs. Only applicable when EBP segmentation markers are is selected (segmentationMarkers is EBP or EBP_LEGACY).
m2tEbpPlacement :: Lens' M2tsSettings (Maybe M2tsEbpPlacement)
m2tEbpPlacement = lens _m2tEbpPlacement (\s a -> s {_m2tEbpPlacement = a})

-- | Specify the number of milliseconds between instances of the program map table (PMT) in the output transport stream.
m2tPmtInterval :: Lens' M2tsSettings (Maybe Natural)
m2tPmtInterval = lens _m2tPmtInterval (\s a -> s {_m2tPmtInterval = a}) . mapping _Nat

-- | Specify the packet identifiers (PIDs) for any elementary audio streams you include in this output. Specify multiple PIDs as a JSON array. Default is the range 482-492.
m2tAudioPids :: Lens' M2tsSettings [Natural]
m2tAudioPids = lens _m2tAudioPids (\s a -> s {_m2tAudioPids = a}) . _Default . _Coerce

-- | The number of milliseconds between instances of this table in the output transport stream.
m2tPatInterval :: Lens' M2tsSettings (Maybe Natural)
m2tPatInterval = lens _m2tPatInterval (\s a -> s {_m2tPatInterval = a}) . mapping _Nat

-- | When set, enforces that Encoder Boundary Points do not come within the specified time interval of each other by looking ahead at input video. If another EBP is going to come in within the specified time interval, the current EBP is not emitted, and the segment is "stretched" to the next marker. The lookahead value does not add latency to the system. The Live Event must be configured elsewhere to create sufficient latency to make the lookahead accurate.
m2tMinEbpInterval :: Lens' M2tsSettings (Maybe Natural)
m2tMinEbpInterval = lens _m2tMinEbpInterval (\s a -> s {_m2tMinEbpInterval = a}) . mapping _Nat

-- | Specify the maximum time, in milliseconds, between Program Clock References (PCRs) inserted into the transport stream.
m2tMaxPcrInterval :: Lens' M2tsSettings (Maybe Natural)
m2tMaxPcrInterval = lens _m2tMaxPcrInterval (\s a -> s {_m2tMaxPcrInterval = a}) . mapping _Nat

-- | Use Program number (programNumber) to specify the program number used in the program map table (PMT) for this output. Default is 1. Program numbers and program map tables are parts of MPEG-2 transport stream containers, used for organizing data.
m2tProgramNumber :: Lens' M2tsSettings (Maybe Natural)
m2tProgramNumber = lens _m2tProgramNumber (\s a -> s {_m2tProgramNumber = a}) . mapping _Nat

-- | Controls what buffer model to use for accurate interleaving. If set to MULTIPLEX, use multiplex  buffer model. If set to NONE, this can lead to lower latency, but low-memory devices may not be able to play back the stream without interruptions.
m2tBufferModel :: Lens' M2tsSettings (Maybe M2tsBufferModel)
m2tBufferModel = lens _m2tBufferModel (\s a -> s {_m2tBufferModel = a})

-- | Specify the packet identifier (PID) for the program clock reference (PCR) in this output. If you do not specify a value, the service will use the value for Video PID (VideoPid).
m2tPcrPid :: Lens' M2tsSettings (Maybe Natural)
m2tPcrPid = lens _m2tPcrPid (\s a -> s {_m2tPcrPid = a}) . mapping _Nat

-- | The number of audio frames to insert for each PES packet.
m2tAudioFramesPerPes :: Lens' M2tsSettings (Maybe Natural)
m2tAudioFramesPerPes = lens _m2tAudioFramesPerPes (\s a -> s {_m2tAudioFramesPerPes = a}) . mapping _Nat

-- | When set to CBR, inserts null packets into transport stream to fill specified bitrate. When set to VBR, the bitrate setting acts as the maximum bitrate, but the output will not be padded up to that bitrate.
m2tRateMode :: Lens' M2tsSettings (Maybe M2tsRateMode)
m2tRateMode = lens _m2tRateMode (\s a -> s {_m2tRateMode = a})

-- | Inserts DVB Time and Date Table (TDT) at the specified table repetition interval.
m2tDvbTdtSettings :: Lens' M2tsSettings (Maybe DvbTdtSettings)
m2tDvbTdtSettings = lens _m2tDvbTdtSettings (\s a -> s {_m2tDvbTdtSettings = a})

-- | Inserts DVB Service Description Table (NIT) at the specified table repetition interval.
m2tDvbSdtSettings :: Lens' M2tsSettings (Maybe DvbSdtSettings)
m2tDvbSdtSettings = lens _m2tDvbSdtSettings (\s a -> s {_m2tDvbSdtSettings = a})

-- | Specify the length, in seconds, of each segment. Required unless markers is set to _none_.
m2tSegmentationTime :: Lens' M2tsSettings (Maybe Double)
m2tSegmentationTime = lens _m2tSegmentationTime (\s a -> s {_m2tSegmentationTime = a})

-- | Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration (MATCH_VIDEO_DURATION). In all other cases, keep the default value, Default codec duration (DEFAULT_CODEC_DURATION). When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec.
m2tAudioDuration :: Lens' M2tsSettings (Maybe M2tsAudioDuration)
m2tAudioDuration = lens _m2tAudioDuration (\s a -> s {_m2tAudioDuration = a})

-- | If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
m2tNielsenId3 :: Lens' M2tsSettings (Maybe M2tsNielsenId3)
m2tNielsenId3 = lens _m2tNielsenId3 (\s a -> s {_m2tNielsenId3 = a})

-- | Specify the packet identifier (PID) for DVB teletext data you include in this output. Default is 499.
m2tDvbTeletextPid :: Lens' M2tsSettings (Maybe Natural)
m2tDvbTeletextPid = lens _m2tDvbTeletextPid (\s a -> s {_m2tDvbTeletextPid = a}) . mapping _Nat

-- | Specify the output bitrate of the transport stream in bits per second. Setting to 0 lets the muxer automatically determine the appropriate bitrate. Other common values are 3750000, 7500000, and 15000000.
m2tBitrate :: Lens' M2tsSettings (Maybe Natural)
m2tBitrate = lens _m2tBitrate (\s a -> s {_m2tBitrate = a}) . mapping _Nat

-- | The length, in seconds, of each fragment. Only used with EBP markers.
m2tFragmentTime :: Lens' M2tsSettings (Maybe Double)
m2tFragmentTime = lens _m2tFragmentTime (\s a -> s {_m2tFragmentTime = a})

-- | Controls whether to include the ES Rate field in the PES header.
m2tEsRateInPes :: Lens' M2tsSettings (Maybe M2tsEsRateInPes)
m2tEsRateInPes = lens _m2tEsRateInPes (\s a -> s {_m2tEsRateInPes = a})

-- | Specify the packet identifier (PID) of the private metadata stream. Default is 503.
m2tPrivateMetadataPid :: Lens' M2tsSettings (Maybe Natural)
m2tPrivateMetadataPid = lens _m2tPrivateMetadataPid (\s a -> s {_m2tPrivateMetadataPid = a}) . mapping _Nat

-- | Include this in your job settings to put SCTE-35 markers in your HLS and transport stream outputs at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML (sccXml).
m2tScte35Esam :: Lens' M2tsSettings (Maybe M2tsScte35Esam)
m2tScte35Esam = lens _m2tScte35Esam (\s a -> s {_m2tScte35Esam = a})

-- | For SCTE-35 markers from your input-- Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want SCTE-35 markers in this output. For SCTE-35 markers from an ESAM XML document-- Choose None (NONE). Also provide the ESAM XML as a string in the setting Signal processing notification XML (sccXml). Also enable ESAM SCTE-35 (include the property scte35Esam).
m2tScte35Source :: Lens' M2tsSettings (Maybe M2tsScte35Source)
m2tScte35Source = lens _m2tScte35Source (\s a -> s {_m2tScte35Source = a})

-- | Keep the default value (DEFAULT) unless you know that your audio EBP markers are incorrectly appearing before your video EBP markers. To correct this problem, set this value to Force (FORCE).
m2tForceTsVideoEbpOrder :: Lens' M2tsSettings (Maybe M2tsForceTsVideoEbpOrder)
m2tForceTsVideoEbpOrder = lens _m2tForceTsVideoEbpOrder (\s a -> s {_m2tForceTsVideoEbpOrder = a})

-- | Specify the ID for the transport stream itself in the program map table for this output. Transport stream IDs and program map tables are parts of MPEG-2 transport stream containers, used for organizing data.
m2tTransportStreamId :: Lens' M2tsSettings (Maybe Natural)
m2tTransportStreamId = lens _m2tTransportStreamId (\s a -> s {_m2tTransportStreamId = a}) . mapping _Nat

-- | Specify the packet identifiers (PIDs) for DVB subtitle data included in this output. Specify multiple PIDs as a JSON array. Default is the range 460-479.
m2tDvbSubPids :: Lens' M2tsSettings [Natural]
m2tDvbSubPids = lens _m2tDvbSubPids (\s a -> s {_m2tDvbSubPids = a}) . _Default . _Coerce

-- | Specify the packet identifier (PID) of the SCTE-35 stream in the transport stream.
m2tScte35Pid :: Lens' M2tsSettings (Maybe Natural)
m2tScte35Pid = lens _m2tScte35Pid (\s a -> s {_m2tScte35Pid = a}) . mapping _Nat

instance FromJSON M2tsSettings where
  parseJSON =
    withObject
      "M2tsSettings"
      ( \x ->
          M2tsSettings'
            <$> (x .:? "segmentationMarkers")
            <*> (x .:? "pmtPid")
            <*> (x .:? "videoPid")
            <*> (x .:? "audioBufferModel")
            <*> (x .:? "timedMetadataPid")
            <*> (x .:? "segmentationStyle")
            <*> (x .:? "dvbNitSettings")
            <*> (x .:? "nullPacketBitrate")
            <*> (x .:? "pcrControl")
            <*> (x .:? "ebpAudioInterval")
            <*> (x .:? "ebpPlacement")
            <*> (x .:? "pmtInterval")
            <*> (x .:? "audioPids" .!= mempty)
            <*> (x .:? "patInterval")
            <*> (x .:? "minEbpInterval")
            <*> (x .:? "maxPcrInterval")
            <*> (x .:? "programNumber")
            <*> (x .:? "bufferModel")
            <*> (x .:? "pcrPid")
            <*> (x .:? "audioFramesPerPes")
            <*> (x .:? "rateMode")
            <*> (x .:? "dvbTdtSettings")
            <*> (x .:? "dvbSdtSettings")
            <*> (x .:? "segmentationTime")
            <*> (x .:? "audioDuration")
            <*> (x .:? "nielsenId3")
            <*> (x .:? "dvbTeletextPid")
            <*> (x .:? "bitrate")
            <*> (x .:? "fragmentTime")
            <*> (x .:? "esRateInPes")
            <*> (x .:? "privateMetadataPid")
            <*> (x .:? "scte35Esam")
            <*> (x .:? "scte35Source")
            <*> (x .:? "forceTsVideoEbpOrder")
            <*> (x .:? "transportStreamId")
            <*> (x .:? "dvbSubPids" .!= mempty)
            <*> (x .:? "scte35Pid")
      )

instance Hashable M2tsSettings

instance NFData M2tsSettings

instance ToJSON M2tsSettings where
  toJSON M2tsSettings' {..} =
    object
      ( catMaybes
          [ ("segmentationMarkers" .=)
              <$> _m2tSegmentationMarkers,
            ("pmtPid" .=) <$> _m2tPmtPid,
            ("videoPid" .=) <$> _m2tVideoPid,
            ("audioBufferModel" .=) <$> _m2tAudioBufferModel,
            ("timedMetadataPid" .=) <$> _m2tTimedMetadataPid,
            ("segmentationStyle" .=) <$> _m2tSegmentationStyle,
            ("dvbNitSettings" .=) <$> _m2tDvbNitSettings,
            ("nullPacketBitrate" .=) <$> _m2tNullPacketBitrate,
            ("pcrControl" .=) <$> _m2tPcrControl,
            ("ebpAudioInterval" .=) <$> _m2tEbpAudioInterval,
            ("ebpPlacement" .=) <$> _m2tEbpPlacement,
            ("pmtInterval" .=) <$> _m2tPmtInterval,
            ("audioPids" .=) <$> _m2tAudioPids,
            ("patInterval" .=) <$> _m2tPatInterval,
            ("minEbpInterval" .=) <$> _m2tMinEbpInterval,
            ("maxPcrInterval" .=) <$> _m2tMaxPcrInterval,
            ("programNumber" .=) <$> _m2tProgramNumber,
            ("bufferModel" .=) <$> _m2tBufferModel,
            ("pcrPid" .=) <$> _m2tPcrPid,
            ("audioFramesPerPes" .=) <$> _m2tAudioFramesPerPes,
            ("rateMode" .=) <$> _m2tRateMode,
            ("dvbTdtSettings" .=) <$> _m2tDvbTdtSettings,
            ("dvbSdtSettings" .=) <$> _m2tDvbSdtSettings,
            ("segmentationTime" .=) <$> _m2tSegmentationTime,
            ("audioDuration" .=) <$> _m2tAudioDuration,
            ("nielsenId3" .=) <$> _m2tNielsenId3,
            ("dvbTeletextPid" .=) <$> _m2tDvbTeletextPid,
            ("bitrate" .=) <$> _m2tBitrate,
            ("fragmentTime" .=) <$> _m2tFragmentTime,
            ("esRateInPes" .=) <$> _m2tEsRateInPes,
            ("privateMetadataPid" .=) <$> _m2tPrivateMetadataPid,
            ("scte35Esam" .=) <$> _m2tScte35Esam,
            ("scte35Source" .=) <$> _m2tScte35Source,
            ("forceTsVideoEbpOrder" .=)
              <$> _m2tForceTsVideoEbpOrder,
            ("transportStreamId" .=) <$> _m2tTransportStreamId,
            ("dvbSubPids" .=) <$> _m2tDvbSubPids,
            ("scte35Pid" .=) <$> _m2tScte35Pid
          ]
      )
