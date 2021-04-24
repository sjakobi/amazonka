{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.SegmentDetection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.SegmentDetection where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types.SegmentType
import Network.AWS.Rekognition.Types.ShotSegment
import Network.AWS.Rekognition.Types.TechnicalCueSegment

-- | A technical cue or shot detection segment detected in a video. An array of @SegmentDetection@ objects containing all segments detected in a stored video is returned by 'GetSegmentDetection' .
--
--
--
-- /See:/ 'segmentDetection' smart constructor.
data SegmentDetection = SegmentDetection'
  { _sdShotSegment ::
      !(Maybe ShotSegment),
    _sdEndTimestampMillis ::
      !(Maybe Integer),
    _sdStartTimecodeSMPTE ::
      !(Maybe Text),
    _sdDurationSMPTE :: !(Maybe Text),
    _sdTechnicalCueSegment ::
      !(Maybe TechnicalCueSegment),
    _sdType :: !(Maybe SegmentType),
    _sdDurationMillis :: !(Maybe Nat),
    _sdEndTimecodeSMPTE :: !(Maybe Text),
    _sdStartTimestampMillis ::
      !(Maybe Integer)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SegmentDetection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdShotSegment' - If the segment is a shot detection, contains information about the shot detection.
--
-- * 'sdEndTimestampMillis' - The end time of the detected segment, in milliseconds, from the start of the video. This value is rounded down.
--
-- * 'sdStartTimecodeSMPTE' - The frame-accurate SMPTE timecode, from the start of a video, for the start of a detected segment. @StartTimecode@ is in /HH:MM:SS:fr/ format (and /;fr/ for drop frame-rates).
--
-- * 'sdDurationSMPTE' - The duration of the timecode for the detected segment in SMPTE format.
--
-- * 'sdTechnicalCueSegment' - If the segment is a technical cue, contains information about the technical cue.
--
-- * 'sdType' - The type of the segment. Valid values are @TECHNICAL_CUE@ and @SHOT@ .
--
-- * 'sdDurationMillis' - The duration of the detected segment in milliseconds.
--
-- * 'sdEndTimecodeSMPTE' - The frame-accurate SMPTE timecode, from the start of a video, for the end of a detected segment. @EndTimecode@ is in /HH:MM:SS:fr/ format (and /;fr/ for drop frame-rates).
--
-- * 'sdStartTimestampMillis' - The start time of the detected segment in milliseconds from the start of the video. This value is rounded down. For example, if the actual timestamp is 100.6667 milliseconds, Amazon Rekognition Video returns a value of 100 millis.
segmentDetection ::
  SegmentDetection
segmentDetection =
  SegmentDetection'
    { _sdShotSegment = Nothing,
      _sdEndTimestampMillis = Nothing,
      _sdStartTimecodeSMPTE = Nothing,
      _sdDurationSMPTE = Nothing,
      _sdTechnicalCueSegment = Nothing,
      _sdType = Nothing,
      _sdDurationMillis = Nothing,
      _sdEndTimecodeSMPTE = Nothing,
      _sdStartTimestampMillis = Nothing
    }

-- | If the segment is a shot detection, contains information about the shot detection.
sdShotSegment :: Lens' SegmentDetection (Maybe ShotSegment)
sdShotSegment = lens _sdShotSegment (\s a -> s {_sdShotSegment = a})

-- | The end time of the detected segment, in milliseconds, from the start of the video. This value is rounded down.
sdEndTimestampMillis :: Lens' SegmentDetection (Maybe Integer)
sdEndTimestampMillis = lens _sdEndTimestampMillis (\s a -> s {_sdEndTimestampMillis = a})

-- | The frame-accurate SMPTE timecode, from the start of a video, for the start of a detected segment. @StartTimecode@ is in /HH:MM:SS:fr/ format (and /;fr/ for drop frame-rates).
sdStartTimecodeSMPTE :: Lens' SegmentDetection (Maybe Text)
sdStartTimecodeSMPTE = lens _sdStartTimecodeSMPTE (\s a -> s {_sdStartTimecodeSMPTE = a})

-- | The duration of the timecode for the detected segment in SMPTE format.
sdDurationSMPTE :: Lens' SegmentDetection (Maybe Text)
sdDurationSMPTE = lens _sdDurationSMPTE (\s a -> s {_sdDurationSMPTE = a})

-- | If the segment is a technical cue, contains information about the technical cue.
sdTechnicalCueSegment :: Lens' SegmentDetection (Maybe TechnicalCueSegment)
sdTechnicalCueSegment = lens _sdTechnicalCueSegment (\s a -> s {_sdTechnicalCueSegment = a})

-- | The type of the segment. Valid values are @TECHNICAL_CUE@ and @SHOT@ .
sdType :: Lens' SegmentDetection (Maybe SegmentType)
sdType = lens _sdType (\s a -> s {_sdType = a})

-- | The duration of the detected segment in milliseconds.
sdDurationMillis :: Lens' SegmentDetection (Maybe Natural)
sdDurationMillis = lens _sdDurationMillis (\s a -> s {_sdDurationMillis = a}) . mapping _Nat

-- | The frame-accurate SMPTE timecode, from the start of a video, for the end of a detected segment. @EndTimecode@ is in /HH:MM:SS:fr/ format (and /;fr/ for drop frame-rates).
sdEndTimecodeSMPTE :: Lens' SegmentDetection (Maybe Text)
sdEndTimecodeSMPTE = lens _sdEndTimecodeSMPTE (\s a -> s {_sdEndTimecodeSMPTE = a})

-- | The start time of the detected segment in milliseconds from the start of the video. This value is rounded down. For example, if the actual timestamp is 100.6667 milliseconds, Amazon Rekognition Video returns a value of 100 millis.
sdStartTimestampMillis :: Lens' SegmentDetection (Maybe Integer)
sdStartTimestampMillis = lens _sdStartTimestampMillis (\s a -> s {_sdStartTimestampMillis = a})

instance FromJSON SegmentDetection where
  parseJSON =
    withObject
      "SegmentDetection"
      ( \x ->
          SegmentDetection'
            <$> (x .:? "ShotSegment")
            <*> (x .:? "EndTimestampMillis")
            <*> (x .:? "StartTimecodeSMPTE")
            <*> (x .:? "DurationSMPTE")
            <*> (x .:? "TechnicalCueSegment")
            <*> (x .:? "Type")
            <*> (x .:? "DurationMillis")
            <*> (x .:? "EndTimecodeSMPTE")
            <*> (x .:? "StartTimestampMillis")
      )

instance Hashable SegmentDetection

instance NFData SegmentDetection
