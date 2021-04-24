{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Vc3Settings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vc3Settings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.Vc3Class
import Network.AWS.MediaConvert.Types.Vc3FramerateControl
import Network.AWS.MediaConvert.Types.Vc3FramerateConversionAlgorithm
import Network.AWS.MediaConvert.Types.Vc3InterlaceMode
import Network.AWS.MediaConvert.Types.Vc3ScanTypeConversionMode
import Network.AWS.MediaConvert.Types.Vc3SlowPal
import Network.AWS.MediaConvert.Types.Vc3Telecine
import Network.AWS.Prelude

-- | Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value VC3
--
-- /See:/ 'vc3Settings' smart constructor.
data Vc3Settings = Vc3Settings'
  { _vsInterlaceMode ::
      !(Maybe Vc3InterlaceMode),
    _vsTelecine :: !(Maybe Vc3Telecine),
    _vsFramerateNumerator :: !(Maybe Nat),
    _vsFramerateDenominator :: !(Maybe Nat),
    _vsScanTypeConversionMode ::
      !(Maybe Vc3ScanTypeConversionMode),
    _vsFramerateControl ::
      !(Maybe Vc3FramerateControl),
    _vsFramerateConversionAlgorithm ::
      !(Maybe Vc3FramerateConversionAlgorithm),
    _vsVc3Class :: !(Maybe Vc3Class),
    _vsSlowPal :: !(Maybe Vc3SlowPal)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Vc3Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsInterlaceMode' - Optional. Choose the scan line type for this output. If you don't specify a value, MediaConvert will create a progressive output.
--
-- * 'vsTelecine' - When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard telecine (HARD) to create a smoother picture. When you keep the default value, None (NONE), MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
--
-- * 'vsFramerateNumerator' - When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
--
-- * 'vsFramerateDenominator' - When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
--
-- * 'vsScanTypeConversionMode' - Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE).
--
-- * 'vsFramerateControl' - If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.
--
-- * 'vsFramerateConversionAlgorithm' - Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
--
-- * 'vsVc3Class' - Specify the VC3 class to choose the quality characteristics for this output. VC3 class, together with the settings Framerate (framerateNumerator and framerateDenominator) and Resolution (height and width), determine your output bitrate. For example, say that your video resolution is 1920x1080 and your framerate is 29.97. Then Class 145 (CLASS_145) gives you an output with a bitrate of approximately 145 Mbps and Class 220 (CLASS_220) gives you and output with a bitrate of approximately 220 Mbps. VC3 class also specifies the color bit depth of your output.
--
-- * 'vsSlowPal' - Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output by relabeling the video frames and resampling your audio. Note that enabling this setting will slightly reduce the duration of your video. Related settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1.
vc3Settings ::
  Vc3Settings
vc3Settings =
  Vc3Settings'
    { _vsInterlaceMode = Nothing,
      _vsTelecine = Nothing,
      _vsFramerateNumerator = Nothing,
      _vsFramerateDenominator = Nothing,
      _vsScanTypeConversionMode = Nothing,
      _vsFramerateControl = Nothing,
      _vsFramerateConversionAlgorithm = Nothing,
      _vsVc3Class = Nothing,
      _vsSlowPal = Nothing
    }

-- | Optional. Choose the scan line type for this output. If you don't specify a value, MediaConvert will create a progressive output.
vsInterlaceMode :: Lens' Vc3Settings (Maybe Vc3InterlaceMode)
vsInterlaceMode = lens _vsInterlaceMode (\s a -> s {_vsInterlaceMode = a})

-- | When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard telecine (HARD) to create a smoother picture. When you keep the default value, None (NONE), MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
vsTelecine :: Lens' Vc3Settings (Maybe Vc3Telecine)
vsTelecine = lens _vsTelecine (\s a -> s {_vsTelecine = a})

-- | When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
vsFramerateNumerator :: Lens' Vc3Settings (Maybe Natural)
vsFramerateNumerator = lens _vsFramerateNumerator (\s a -> s {_vsFramerateNumerator = a}) . mapping _Nat

-- | When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
vsFramerateDenominator :: Lens' Vc3Settings (Maybe Natural)
vsFramerateDenominator = lens _vsFramerateDenominator (\s a -> s {_vsFramerateDenominator = a}) . mapping _Nat

-- | Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE).
vsScanTypeConversionMode :: Lens' Vc3Settings (Maybe Vc3ScanTypeConversionMode)
vsScanTypeConversionMode = lens _vsScanTypeConversionMode (\s a -> s {_vsScanTypeConversionMode = a})

-- | If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.
vsFramerateControl :: Lens' Vc3Settings (Maybe Vc3FramerateControl)
vsFramerateControl = lens _vsFramerateControl (\s a -> s {_vsFramerateControl = a})

-- | Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
vsFramerateConversionAlgorithm :: Lens' Vc3Settings (Maybe Vc3FramerateConversionAlgorithm)
vsFramerateConversionAlgorithm = lens _vsFramerateConversionAlgorithm (\s a -> s {_vsFramerateConversionAlgorithm = a})

-- | Specify the VC3 class to choose the quality characteristics for this output. VC3 class, together with the settings Framerate (framerateNumerator and framerateDenominator) and Resolution (height and width), determine your output bitrate. For example, say that your video resolution is 1920x1080 and your framerate is 29.97. Then Class 145 (CLASS_145) gives you an output with a bitrate of approximately 145 Mbps and Class 220 (CLASS_220) gives you and output with a bitrate of approximately 220 Mbps. VC3 class also specifies the color bit depth of your output.
vsVc3Class :: Lens' Vc3Settings (Maybe Vc3Class)
vsVc3Class = lens _vsVc3Class (\s a -> s {_vsVc3Class = a})

-- | Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output by relabeling the video frames and resampling your audio. Note that enabling this setting will slightly reduce the duration of your video. Related settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1.
vsSlowPal :: Lens' Vc3Settings (Maybe Vc3SlowPal)
vsSlowPal = lens _vsSlowPal (\s a -> s {_vsSlowPal = a})

instance FromJSON Vc3Settings where
  parseJSON =
    withObject
      "Vc3Settings"
      ( \x ->
          Vc3Settings'
            <$> (x .:? "interlaceMode")
            <*> (x .:? "telecine")
            <*> (x .:? "framerateNumerator")
            <*> (x .:? "framerateDenominator")
            <*> (x .:? "scanTypeConversionMode")
            <*> (x .:? "framerateControl")
            <*> (x .:? "framerateConversionAlgorithm")
            <*> (x .:? "vc3Class")
            <*> (x .:? "slowPal")
      )

instance Hashable Vc3Settings

instance NFData Vc3Settings

instance ToJSON Vc3Settings where
  toJSON Vc3Settings' {..} =
    object
      ( catMaybes
          [ ("interlaceMode" .=) <$> _vsInterlaceMode,
            ("telecine" .=) <$> _vsTelecine,
            ("framerateNumerator" .=) <$> _vsFramerateNumerator,
            ("framerateDenominator" .=)
              <$> _vsFramerateDenominator,
            ("scanTypeConversionMode" .=)
              <$> _vsScanTypeConversionMode,
            ("framerateControl" .=) <$> _vsFramerateControl,
            ("framerateConversionAlgorithm" .=)
              <$> _vsFramerateConversionAlgorithm,
            ("vc3Class" .=) <$> _vsVc3Class,
            ("slowPal" .=) <$> _vsSlowPal
          ]
      )
