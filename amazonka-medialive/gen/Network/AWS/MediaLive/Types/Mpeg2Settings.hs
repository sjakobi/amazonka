{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Mpeg2Settings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Mpeg2Settings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.AfdSignaling
import Network.AWS.MediaLive.Types.FixedAfd
import Network.AWS.MediaLive.Types.Mpeg2AdaptiveQuantization
import Network.AWS.MediaLive.Types.Mpeg2ColorMetadata
import Network.AWS.MediaLive.Types.Mpeg2ColorSpace
import Network.AWS.MediaLive.Types.Mpeg2DisplayRatio
import Network.AWS.MediaLive.Types.Mpeg2FilterSettings
import Network.AWS.MediaLive.Types.Mpeg2GopSizeUnits
import Network.AWS.MediaLive.Types.Mpeg2ScanType
import Network.AWS.MediaLive.Types.Mpeg2SubGopLength
import Network.AWS.MediaLive.Types.Mpeg2TimecodeInsertionBehavior
import Network.AWS.Prelude

-- | Mpeg2 Settings
--
-- /See:/ 'mpeg2Settings' smart constructor.
data Mpeg2Settings = Mpeg2Settings'
  { _msScanType ::
      !(Maybe Mpeg2ScanType),
    _msDisplayAspectRatio ::
      !(Maybe Mpeg2DisplayRatio),
    _msColorMetadata ::
      !(Maybe Mpeg2ColorMetadata),
    _msSubgopLength ::
      !(Maybe Mpeg2SubGopLength),
    _msGopSizeUnits ::
      !(Maybe Mpeg2GopSizeUnits),
    _msGopSize :: !(Maybe Double),
    _msFixedAfd :: !(Maybe FixedAfd),
    _msFilterSettings ::
      !(Maybe Mpeg2FilterSettings),
    _msGopNumBFrames :: !(Maybe Nat),
    _msTimecodeInsertion ::
      !(Maybe Mpeg2TimecodeInsertionBehavior),
    _msGopClosedCadence :: !(Maybe Nat),
    _msColorSpace :: !(Maybe Mpeg2ColorSpace),
    _msAdaptiveQuantization ::
      !(Maybe Mpeg2AdaptiveQuantization),
    _msAfdSignaling :: !(Maybe AfdSignaling),
    _msFramerateNumerator :: !Nat,
    _msFramerateDenominator :: !Nat
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Mpeg2Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msScanType' - Set the scan type of the output to PROGRESSIVE or INTERLACED (top field first).
--
-- * 'msDisplayAspectRatio' - Sets the pixel aspect ratio for the encode.
--
-- * 'msColorMetadata' - Specifies whether to include the color space metadata. The metadata describes the color space that applies to the video (the colorSpace field). We recommend that you insert the metadata.
--
-- * 'msSubgopLength' - Relates to the GOP structure. If you do not know what GOP is, use the default. FIXED: Set the number of B-frames in each sub-GOP to the value in gopNumBFrames. DYNAMIC: Let MediaLive optimize the number of B-frames in each sub-GOP, to improve visual quality.
--
-- * 'msGopSizeUnits' - Relates to the GOP structure. Specifies whether the gopSize is specified in frames or seconds. If you do not plan to change the default gopSize, leave the default. If you specify SECONDS, MediaLive will internally convert the gop size to a frame count.
--
-- * 'msGopSize' - Relates to the GOP structure. The GOP size (keyframe interval) in the units specified in gopSizeUnits. If you do not know what GOP is, use the default. If gopSizeUnits is frames, then the gopSize must be an integer and must be greater than or equal to 1. If gopSizeUnits is seconds, the gopSize must be greater than 0, but does not need to be an integer.
--
-- * 'msFixedAfd' - Complete this field only when afdSignaling is set to FIXED. Enter the AFD value (4 bits) to write on all frames of the video encode.
--
-- * 'msFilterSettings' - Optionally specify a noise reduction filter, which can improve quality of compressed content. If you do not choose a filter, no filter will be applied. TEMPORAL: This filter is useful for both source content that is noisy (when it has excessive digital artifacts) and source content that is clean. When the content is noisy, the filter cleans up the source content before the encoding phase, with these two effects: First, it improves the output video quality because the content has been cleaned up. Secondly, it decreases the bandwidth because MediaLive does not waste bits on encoding noise. When the content is reasonably clean, the filter tends to decrease the bitrate.
--
-- * 'msGopNumBFrames' - Relates to the GOP structure. The number of B-frames between reference frames. If you do not know what a B-frame is, use the default.
--
-- * 'msTimecodeInsertion' - Determines how MediaLive inserts timecodes in the output video. For detailed information about setting up the input and the output for a timecode, see the section on \"MediaLive Features - Timecode configuration\" in the MediaLive User Guide. DISABLED: do not include timecodes. GOP_TIMECODE: Include timecode metadata in the GOP header.
--
-- * 'msGopClosedCadence' - MPEG2: default is open GOP.
--
-- * 'msColorSpace' - Choose the type of color space conversion to apply to the output. For detailed information on setting up both the input and the output to obtain the desired color space in the output, see the section on \"MediaLive Features - Video - color space\" in the MediaLive User Guide. PASSTHROUGH: Keep the color space of the input content - do not convert it. AUTO:Convert all content that is SD to rec 601, and convert all content that is HD to rec 709.
--
-- * 'msAdaptiveQuantization' - Choose Off to disable adaptive quantization. Or choose another value to enable the quantizer and set its strength. The strengths are: Auto, Off, Low, Medium, High. When you enable this field, MediaLive allows intra-frame quantizers to vary, which might improve visual quality.
--
-- * 'msAfdSignaling' - Indicates the AFD values that MediaLive will write into the video encode. If you do not know what AFD signaling is, or if your downstream system has not given you guidance, choose AUTO. AUTO: MediaLive will try to preserve the input AFD value (in cases where multiple AFD values are valid). FIXED: MediaLive will use the value you specify in fixedAFD.
--
-- * 'msFramerateNumerator' - The framerate numerator. For example, 24000. The framerate is the numerator divided by the denominator. For example, 24000 / 1001 = 23.976 FPS.
--
-- * 'msFramerateDenominator' - description": "The framerate denominator. For example, 1001. The framerate is the numerator divided by the denominator. For example, 24000 / 1001 = 23.976 FPS.
mpeg2Settings ::
  -- | 'msFramerateNumerator'
  Natural ->
  -- | 'msFramerateDenominator'
  Natural ->
  Mpeg2Settings
mpeg2Settings
  pFramerateNumerator_
  pFramerateDenominator_ =
    Mpeg2Settings'
      { _msScanType = Nothing,
        _msDisplayAspectRatio = Nothing,
        _msColorMetadata = Nothing,
        _msSubgopLength = Nothing,
        _msGopSizeUnits = Nothing,
        _msGopSize = Nothing,
        _msFixedAfd = Nothing,
        _msFilterSettings = Nothing,
        _msGopNumBFrames = Nothing,
        _msTimecodeInsertion = Nothing,
        _msGopClosedCadence = Nothing,
        _msColorSpace = Nothing,
        _msAdaptiveQuantization = Nothing,
        _msAfdSignaling = Nothing,
        _msFramerateNumerator = _Nat # pFramerateNumerator_,
        _msFramerateDenominator =
          _Nat # pFramerateDenominator_
      }

-- | Set the scan type of the output to PROGRESSIVE or INTERLACED (top field first).
msScanType :: Lens' Mpeg2Settings (Maybe Mpeg2ScanType)
msScanType = lens _msScanType (\s a -> s {_msScanType = a})

-- | Sets the pixel aspect ratio for the encode.
msDisplayAspectRatio :: Lens' Mpeg2Settings (Maybe Mpeg2DisplayRatio)
msDisplayAspectRatio = lens _msDisplayAspectRatio (\s a -> s {_msDisplayAspectRatio = a})

-- | Specifies whether to include the color space metadata. The metadata describes the color space that applies to the video (the colorSpace field). We recommend that you insert the metadata.
msColorMetadata :: Lens' Mpeg2Settings (Maybe Mpeg2ColorMetadata)
msColorMetadata = lens _msColorMetadata (\s a -> s {_msColorMetadata = a})

-- | Relates to the GOP structure. If you do not know what GOP is, use the default. FIXED: Set the number of B-frames in each sub-GOP to the value in gopNumBFrames. DYNAMIC: Let MediaLive optimize the number of B-frames in each sub-GOP, to improve visual quality.
msSubgopLength :: Lens' Mpeg2Settings (Maybe Mpeg2SubGopLength)
msSubgopLength = lens _msSubgopLength (\s a -> s {_msSubgopLength = a})

-- | Relates to the GOP structure. Specifies whether the gopSize is specified in frames or seconds. If you do not plan to change the default gopSize, leave the default. If you specify SECONDS, MediaLive will internally convert the gop size to a frame count.
msGopSizeUnits :: Lens' Mpeg2Settings (Maybe Mpeg2GopSizeUnits)
msGopSizeUnits = lens _msGopSizeUnits (\s a -> s {_msGopSizeUnits = a})

-- | Relates to the GOP structure. The GOP size (keyframe interval) in the units specified in gopSizeUnits. If you do not know what GOP is, use the default. If gopSizeUnits is frames, then the gopSize must be an integer and must be greater than or equal to 1. If gopSizeUnits is seconds, the gopSize must be greater than 0, but does not need to be an integer.
msGopSize :: Lens' Mpeg2Settings (Maybe Double)
msGopSize = lens _msGopSize (\s a -> s {_msGopSize = a})

-- | Complete this field only when afdSignaling is set to FIXED. Enter the AFD value (4 bits) to write on all frames of the video encode.
msFixedAfd :: Lens' Mpeg2Settings (Maybe FixedAfd)
msFixedAfd = lens _msFixedAfd (\s a -> s {_msFixedAfd = a})

-- | Optionally specify a noise reduction filter, which can improve quality of compressed content. If you do not choose a filter, no filter will be applied. TEMPORAL: This filter is useful for both source content that is noisy (when it has excessive digital artifacts) and source content that is clean. When the content is noisy, the filter cleans up the source content before the encoding phase, with these two effects: First, it improves the output video quality because the content has been cleaned up. Secondly, it decreases the bandwidth because MediaLive does not waste bits on encoding noise. When the content is reasonably clean, the filter tends to decrease the bitrate.
msFilterSettings :: Lens' Mpeg2Settings (Maybe Mpeg2FilterSettings)
msFilterSettings = lens _msFilterSettings (\s a -> s {_msFilterSettings = a})

-- | Relates to the GOP structure. The number of B-frames between reference frames. If you do not know what a B-frame is, use the default.
msGopNumBFrames :: Lens' Mpeg2Settings (Maybe Natural)
msGopNumBFrames = lens _msGopNumBFrames (\s a -> s {_msGopNumBFrames = a}) . mapping _Nat

-- | Determines how MediaLive inserts timecodes in the output video. For detailed information about setting up the input and the output for a timecode, see the section on \"MediaLive Features - Timecode configuration\" in the MediaLive User Guide. DISABLED: do not include timecodes. GOP_TIMECODE: Include timecode metadata in the GOP header.
msTimecodeInsertion :: Lens' Mpeg2Settings (Maybe Mpeg2TimecodeInsertionBehavior)
msTimecodeInsertion = lens _msTimecodeInsertion (\s a -> s {_msTimecodeInsertion = a})

-- | MPEG2: default is open GOP.
msGopClosedCadence :: Lens' Mpeg2Settings (Maybe Natural)
msGopClosedCadence = lens _msGopClosedCadence (\s a -> s {_msGopClosedCadence = a}) . mapping _Nat

-- | Choose the type of color space conversion to apply to the output. For detailed information on setting up both the input and the output to obtain the desired color space in the output, see the section on \"MediaLive Features - Video - color space\" in the MediaLive User Guide. PASSTHROUGH: Keep the color space of the input content - do not convert it. AUTO:Convert all content that is SD to rec 601, and convert all content that is HD to rec 709.
msColorSpace :: Lens' Mpeg2Settings (Maybe Mpeg2ColorSpace)
msColorSpace = lens _msColorSpace (\s a -> s {_msColorSpace = a})

-- | Choose Off to disable adaptive quantization. Or choose another value to enable the quantizer and set its strength. The strengths are: Auto, Off, Low, Medium, High. When you enable this field, MediaLive allows intra-frame quantizers to vary, which might improve visual quality.
msAdaptiveQuantization :: Lens' Mpeg2Settings (Maybe Mpeg2AdaptiveQuantization)
msAdaptiveQuantization = lens _msAdaptiveQuantization (\s a -> s {_msAdaptiveQuantization = a})

-- | Indicates the AFD values that MediaLive will write into the video encode. If you do not know what AFD signaling is, or if your downstream system has not given you guidance, choose AUTO. AUTO: MediaLive will try to preserve the input AFD value (in cases where multiple AFD values are valid). FIXED: MediaLive will use the value you specify in fixedAFD.
msAfdSignaling :: Lens' Mpeg2Settings (Maybe AfdSignaling)
msAfdSignaling = lens _msAfdSignaling (\s a -> s {_msAfdSignaling = a})

-- | The framerate numerator. For example, 24000. The framerate is the numerator divided by the denominator. For example, 24000 / 1001 = 23.976 FPS.
msFramerateNumerator :: Lens' Mpeg2Settings Natural
msFramerateNumerator = lens _msFramerateNumerator (\s a -> s {_msFramerateNumerator = a}) . _Nat

-- | description": "The framerate denominator. For example, 1001. The framerate is the numerator divided by the denominator. For example, 24000 / 1001 = 23.976 FPS.
msFramerateDenominator :: Lens' Mpeg2Settings Natural
msFramerateDenominator = lens _msFramerateDenominator (\s a -> s {_msFramerateDenominator = a}) . _Nat

instance FromJSON Mpeg2Settings where
  parseJSON =
    withObject
      "Mpeg2Settings"
      ( \x ->
          Mpeg2Settings'
            <$> (x .:? "scanType")
            <*> (x .:? "displayAspectRatio")
            <*> (x .:? "colorMetadata")
            <*> (x .:? "subgopLength")
            <*> (x .:? "gopSizeUnits")
            <*> (x .:? "gopSize")
            <*> (x .:? "fixedAfd")
            <*> (x .:? "filterSettings")
            <*> (x .:? "gopNumBFrames")
            <*> (x .:? "timecodeInsertion")
            <*> (x .:? "gopClosedCadence")
            <*> (x .:? "colorSpace")
            <*> (x .:? "adaptiveQuantization")
            <*> (x .:? "afdSignaling")
            <*> (x .: "framerateNumerator")
            <*> (x .: "framerateDenominator")
      )

instance Hashable Mpeg2Settings

instance NFData Mpeg2Settings

instance ToJSON Mpeg2Settings where
  toJSON Mpeg2Settings' {..} =
    object
      ( catMaybes
          [ ("scanType" .=) <$> _msScanType,
            ("displayAspectRatio" .=) <$> _msDisplayAspectRatio,
            ("colorMetadata" .=) <$> _msColorMetadata,
            ("subgopLength" .=) <$> _msSubgopLength,
            ("gopSizeUnits" .=) <$> _msGopSizeUnits,
            ("gopSize" .=) <$> _msGopSize,
            ("fixedAfd" .=) <$> _msFixedAfd,
            ("filterSettings" .=) <$> _msFilterSettings,
            ("gopNumBFrames" .=) <$> _msGopNumBFrames,
            ("timecodeInsertion" .=) <$> _msTimecodeInsertion,
            ("gopClosedCadence" .=) <$> _msGopClosedCadence,
            ("colorSpace" .=) <$> _msColorSpace,
            ("adaptiveQuantization" .=)
              <$> _msAdaptiveQuantization,
            ("afdSignaling" .=) <$> _msAfdSignaling,
            Just ("framerateNumerator" .= _msFramerateNumerator),
            Just
              ("framerateDenominator" .= _msFramerateDenominator)
          ]
      )
