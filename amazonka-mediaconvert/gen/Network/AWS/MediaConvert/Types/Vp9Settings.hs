{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Vp9Settings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vp9Settings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.Vp9FramerateControl
import Network.AWS.MediaConvert.Types.Vp9FramerateConversionAlgorithm
import Network.AWS.MediaConvert.Types.Vp9ParControl
import Network.AWS.MediaConvert.Types.Vp9QualityTuningLevel
import Network.AWS.MediaConvert.Types.Vp9RateControlMode
import Network.AWS.Prelude

-- | Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value VP9.
--
-- /See:/ 'vp9Settings' smart constructor.
data Vp9Settings = Vp9Settings'
  { _vssQualityTuningLevel ::
      !(Maybe Vp9QualityTuningLevel),
    _vssFramerateNumerator :: !(Maybe Nat),
    _vssRateControlMode ::
      !(Maybe Vp9RateControlMode),
    _vssGopSize :: !(Maybe Double),
    _vssFramerateDenominator :: !(Maybe Nat),
    _vssParNumerator :: !(Maybe Nat),
    _vssParControl :: !(Maybe Vp9ParControl),
    _vssParDenominator :: !(Maybe Nat),
    _vssMaxBitrate :: !(Maybe Nat),
    _vssHrdBufferSize :: !(Maybe Nat),
    _vssFramerateControl ::
      !(Maybe Vp9FramerateControl),
    _vssFramerateConversionAlgorithm ::
      !(Maybe Vp9FramerateConversionAlgorithm),
    _vssBitrate :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Vp9Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vssQualityTuningLevel' - Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, multi-pass encoding.
--
-- * 'vssFramerateNumerator' - When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
--
-- * 'vssRateControlMode' - With the VP9 codec, you can use only the variable bitrate (VBR) rate control mode.
--
-- * 'vssGopSize' - GOP Length (keyframe interval) in frames. Must be greater than zero.
--
-- * 'vssFramerateDenominator' - When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
--
-- * 'vssParNumerator' - Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40.
--
-- * 'vssParControl' - Optional. Specify how the service determines the pixel aspect ratio for this output. The default behavior is to use the same pixel aspect ratio as your input video.
--
-- * 'vssParDenominator' - Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33.
--
-- * 'vssMaxBitrate' - Ignore this setting unless you set qualityTuningLevel to MULTI_PASS. Optional. Specify the maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. The default behavior uses twice the target bitrate as the maximum bitrate.
--
-- * 'vssHrdBufferSize' - Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000.
--
-- * 'vssFramerateControl' - If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.
--
-- * 'vssFramerateConversionAlgorithm' - Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
--
-- * 'vssBitrate' - Target bitrate in bits/second. For example, enter five megabits per second as 5000000.
vp9Settings ::
  Vp9Settings
vp9Settings =
  Vp9Settings'
    { _vssQualityTuningLevel = Nothing,
      _vssFramerateNumerator = Nothing,
      _vssRateControlMode = Nothing,
      _vssGopSize = Nothing,
      _vssFramerateDenominator = Nothing,
      _vssParNumerator = Nothing,
      _vssParControl = Nothing,
      _vssParDenominator = Nothing,
      _vssMaxBitrate = Nothing,
      _vssHrdBufferSize = Nothing,
      _vssFramerateControl = Nothing,
      _vssFramerateConversionAlgorithm = Nothing,
      _vssBitrate = Nothing
    }

-- | Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, multi-pass encoding.
vssQualityTuningLevel :: Lens' Vp9Settings (Maybe Vp9QualityTuningLevel)
vssQualityTuningLevel = lens _vssQualityTuningLevel (\s a -> s {_vssQualityTuningLevel = a})

-- | When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
vssFramerateNumerator :: Lens' Vp9Settings (Maybe Natural)
vssFramerateNumerator = lens _vssFramerateNumerator (\s a -> s {_vssFramerateNumerator = a}) . mapping _Nat

-- | With the VP9 codec, you can use only the variable bitrate (VBR) rate control mode.
vssRateControlMode :: Lens' Vp9Settings (Maybe Vp9RateControlMode)
vssRateControlMode = lens _vssRateControlMode (\s a -> s {_vssRateControlMode = a})

-- | GOP Length (keyframe interval) in frames. Must be greater than zero.
vssGopSize :: Lens' Vp9Settings (Maybe Double)
vssGopSize = lens _vssGopSize (\s a -> s {_vssGopSize = a})

-- | When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
vssFramerateDenominator :: Lens' Vp9Settings (Maybe Natural)
vssFramerateDenominator = lens _vssFramerateDenominator (\s a -> s {_vssFramerateDenominator = a}) . mapping _Nat

-- | Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40.
vssParNumerator :: Lens' Vp9Settings (Maybe Natural)
vssParNumerator = lens _vssParNumerator (\s a -> s {_vssParNumerator = a}) . mapping _Nat

-- | Optional. Specify how the service determines the pixel aspect ratio for this output. The default behavior is to use the same pixel aspect ratio as your input video.
vssParControl :: Lens' Vp9Settings (Maybe Vp9ParControl)
vssParControl = lens _vssParControl (\s a -> s {_vssParControl = a})

-- | Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33.
vssParDenominator :: Lens' Vp9Settings (Maybe Natural)
vssParDenominator = lens _vssParDenominator (\s a -> s {_vssParDenominator = a}) . mapping _Nat

-- | Ignore this setting unless you set qualityTuningLevel to MULTI_PASS. Optional. Specify the maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. The default behavior uses twice the target bitrate as the maximum bitrate.
vssMaxBitrate :: Lens' Vp9Settings (Maybe Natural)
vssMaxBitrate = lens _vssMaxBitrate (\s a -> s {_vssMaxBitrate = a}) . mapping _Nat

-- | Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000.
vssHrdBufferSize :: Lens' Vp9Settings (Maybe Natural)
vssHrdBufferSize = lens _vssHrdBufferSize (\s a -> s {_vssHrdBufferSize = a}) . mapping _Nat

-- | If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.
vssFramerateControl :: Lens' Vp9Settings (Maybe Vp9FramerateControl)
vssFramerateControl = lens _vssFramerateControl (\s a -> s {_vssFramerateControl = a})

-- | Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
vssFramerateConversionAlgorithm :: Lens' Vp9Settings (Maybe Vp9FramerateConversionAlgorithm)
vssFramerateConversionAlgorithm = lens _vssFramerateConversionAlgorithm (\s a -> s {_vssFramerateConversionAlgorithm = a})

-- | Target bitrate in bits/second. For example, enter five megabits per second as 5000000.
vssBitrate :: Lens' Vp9Settings (Maybe Natural)
vssBitrate = lens _vssBitrate (\s a -> s {_vssBitrate = a}) . mapping _Nat

instance FromJSON Vp9Settings where
  parseJSON =
    withObject
      "Vp9Settings"
      ( \x ->
          Vp9Settings'
            <$> (x .:? "qualityTuningLevel")
            <*> (x .:? "framerateNumerator")
            <*> (x .:? "rateControlMode")
            <*> (x .:? "gopSize")
            <*> (x .:? "framerateDenominator")
            <*> (x .:? "parNumerator")
            <*> (x .:? "parControl")
            <*> (x .:? "parDenominator")
            <*> (x .:? "maxBitrate")
            <*> (x .:? "hrdBufferSize")
            <*> (x .:? "framerateControl")
            <*> (x .:? "framerateConversionAlgorithm")
            <*> (x .:? "bitrate")
      )

instance Hashable Vp9Settings

instance NFData Vp9Settings

instance ToJSON Vp9Settings where
  toJSON Vp9Settings' {..} =
    object
      ( catMaybes
          [ ("qualityTuningLevel" .=)
              <$> _vssQualityTuningLevel,
            ("framerateNumerator" .=) <$> _vssFramerateNumerator,
            ("rateControlMode" .=) <$> _vssRateControlMode,
            ("gopSize" .=) <$> _vssGopSize,
            ("framerateDenominator" .=)
              <$> _vssFramerateDenominator,
            ("parNumerator" .=) <$> _vssParNumerator,
            ("parControl" .=) <$> _vssParControl,
            ("parDenominator" .=) <$> _vssParDenominator,
            ("maxBitrate" .=) <$> _vssMaxBitrate,
            ("hrdBufferSize" .=) <$> _vssHrdBufferSize,
            ("framerateControl" .=) <$> _vssFramerateControl,
            ("framerateConversionAlgorithm" .=)
              <$> _vssFramerateConversionAlgorithm,
            ("bitrate" .=) <$> _vssBitrate
          ]
      )
