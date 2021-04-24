{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2Settings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2Settings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.Mpeg2AdaptiveQuantization
import Network.AWS.MediaConvert.Types.Mpeg2CodecLevel
import Network.AWS.MediaConvert.Types.Mpeg2CodecProfile
import Network.AWS.MediaConvert.Types.Mpeg2DynamicSubGop
import Network.AWS.MediaConvert.Types.Mpeg2FramerateControl
import Network.AWS.MediaConvert.Types.Mpeg2FramerateConversionAlgorithm
import Network.AWS.MediaConvert.Types.Mpeg2GopSizeUnits
import Network.AWS.MediaConvert.Types.Mpeg2InterlaceMode
import Network.AWS.MediaConvert.Types.Mpeg2IntraDcPrecision
import Network.AWS.MediaConvert.Types.Mpeg2ParControl
import Network.AWS.MediaConvert.Types.Mpeg2QualityTuningLevel
import Network.AWS.MediaConvert.Types.Mpeg2RateControlMode
import Network.AWS.MediaConvert.Types.Mpeg2ScanTypeConversionMode
import Network.AWS.MediaConvert.Types.Mpeg2SceneChangeDetect
import Network.AWS.MediaConvert.Types.Mpeg2SlowPal
import Network.AWS.MediaConvert.Types.Mpeg2SpatialAdaptiveQuantization
import Network.AWS.MediaConvert.Types.Mpeg2Syntax
import Network.AWS.MediaConvert.Types.Mpeg2Telecine
import Network.AWS.MediaConvert.Types.Mpeg2TemporalAdaptiveQuantization
import Network.AWS.Prelude

-- | Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value MPEG2.
--
-- /See:/ 'mpeg2Settings' smart constructor.
data Mpeg2Settings = Mpeg2Settings'
  { _mssHrdBufferInitialFillPercentage ::
      !(Maybe Nat),
    _mssTemporalAdaptiveQuantization ::
      !(Maybe Mpeg2TemporalAdaptiveQuantization),
    _mssQualityTuningLevel ::
      !(Maybe Mpeg2QualityTuningLevel),
    _mssInterlaceMode ::
      !(Maybe Mpeg2InterlaceMode),
    _mssIntraDcPrecision ::
      !(Maybe Mpeg2IntraDcPrecision),
    _mssTelecine :: !(Maybe Mpeg2Telecine),
    _mssSpatialAdaptiveQuantization ::
      !(Maybe Mpeg2SpatialAdaptiveQuantization),
    _mssFramerateNumerator :: !(Maybe Nat),
    _mssRateControlMode ::
      !(Maybe Mpeg2RateControlMode),
    _mssGopSizeUnits ::
      !(Maybe Mpeg2GopSizeUnits),
    _mssCodecProfile ::
      !(Maybe Mpeg2CodecProfile),
    _mssGopSize :: !(Maybe Double),
    _mssFramerateDenominator :: !(Maybe Nat),
    _mssSoftness :: !(Maybe Nat),
    _mssParNumerator :: !(Maybe Nat),
    _mssSceneChangeDetect ::
      !(Maybe Mpeg2SceneChangeDetect),
    _mssMinIInterval :: !(Maybe Nat),
    _mssScanTypeConversionMode ::
      !(Maybe Mpeg2ScanTypeConversionMode),
    _mssParControl :: !(Maybe Mpeg2ParControl),
    _mssGopClosedCadence :: !(Maybe Nat),
    _mssParDenominator :: !(Maybe Nat),
    _mssMaxBitrate :: !(Maybe Nat),
    _mssDynamicSubGop ::
      !(Maybe Mpeg2DynamicSubGop),
    _mssSyntax :: !(Maybe Mpeg2Syntax),
    _mssHrdBufferSize :: !(Maybe Nat),
    _mssAdaptiveQuantization ::
      !(Maybe Mpeg2AdaptiveQuantization),
    _mssFramerateControl ::
      !(Maybe Mpeg2FramerateControl),
    _mssNumberBFramesBetweenReferenceFrames ::
      !(Maybe Nat),
    _mssFramerateConversionAlgorithm ::
      !(Maybe Mpeg2FramerateConversionAlgorithm),
    _mssCodecLevel :: !(Maybe Mpeg2CodecLevel),
    _mssBitrate :: !(Maybe Nat),
    _mssSlowPal :: !(Maybe Mpeg2SlowPal)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Mpeg2Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mssHrdBufferInitialFillPercentage' - Percentage of the buffer that should initially be filled (HRD buffer model).
--
-- * 'mssTemporalAdaptiveQuantization' - Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to disable this feature. Related setting: When you enable temporal quantization, adjust the strength of the filter with the setting Adaptive quantization (adaptiveQuantization).
--
-- * 'mssQualityTuningLevel' - Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding.
--
-- * 'mssInterlaceMode' - Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
--
-- * 'mssIntraDcPrecision' - Use Intra DC precision (Mpeg2IntraDcPrecision) to set quantization precision for intra-block DC coefficients. If you choose the value auto, the service will automatically select the precision based on the per-frame compression ratio.
--
-- * 'mssTelecine' - When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard or soft telecine to create a smoother picture. Hard telecine (HARD) produces a 29.97i output. Soft telecine (SOFT) produces an output with a 23.976 output that signals to the video player device to do the conversion during play back. When you keep the default value, None (NONE), MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
--
-- * 'mssSpatialAdaptiveQuantization' - Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization (adaptiveQuantization) depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher.
--
-- * 'mssFramerateNumerator' - When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
--
-- * 'mssRateControlMode' - Use Rate control mode (Mpeg2RateControlMode) to specify whether the bitrate is variable (vbr) or constant (cbr).
--
-- * 'mssGopSizeUnits' - Indicates if the GOP Size in MPEG2 is specified in frames or seconds. If seconds the system will convert the GOP Size into a frame count at run time.
--
-- * 'mssCodecProfile' - Use Profile (Mpeg2CodecProfile) to set the MPEG-2 profile for the video output.
--
-- * 'mssGopSize' - GOP Length (keyframe interval) in frames or seconds. Must be greater than zero.
--
-- * 'mssFramerateDenominator' - When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
--
-- * 'mssSoftness' - Ignore this setting unless you need to comply with a specification that requires a specific value. If you don't have a specification requirement, we recommend that you adjust the softness of your output by using a lower value for the setting Sharpness (sharpness) or by enabling a noise reducer filter (noiseReducerFilter). The Softness (softness) setting specifies the quantization matrices that the encoder uses. Keep the default value, 0, to use the AWS Elemental default matrices. Choose a value from 17 to 128 to use planar interpolation. Increasing values from 17 to 128 result in increasing reduction of high-frequency data. The value 128 results in the softest video.
--
-- * 'mssParNumerator' - Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40.
--
-- * 'mssSceneChangeDetect' - Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default.
--
-- * 'mssMinIInterval' - Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. This setting is only used when Scene Change Detect is enabled. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
--
-- * 'mssScanTypeConversionMode' - Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE).
--
-- * 'mssParControl' - Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
--
-- * 'mssGopClosedCadence' - Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
--
-- * 'mssParDenominator' - Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33.
--
-- * 'mssMaxBitrate' - Maximum bitrate in bits/second. For example, enter five megabits per second as 5000000.
--
-- * 'mssDynamicSubGop' - Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames).
--
-- * 'mssSyntax' - Specify whether this output's video uses the D10 syntax. Keep the default value to  not use the syntax. Related settings: When you choose D10 (D_10) for your MXF  profile (profile), you must also set this value to to D10 (D_10).
--
-- * 'mssHrdBufferSize' - Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000.
--
-- * 'mssAdaptiveQuantization' - Specify the strength of any adaptive quantization filters that you enable. The value that you choose here applies to the following settings: Spatial adaptive quantization (spatialAdaptiveQuantization), and Temporal adaptive quantization (temporalAdaptiveQuantization).
--
-- * 'mssFramerateControl' - If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.
--
-- * 'mssNumberBFramesBetweenReferenceFrames' - Number of B-frames between reference frames.
--
-- * 'mssFramerateConversionAlgorithm' - Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
--
-- * 'mssCodecLevel' - Use Level (Mpeg2CodecLevel) to set the MPEG-2 level for the video output.
--
-- * 'mssBitrate' - Specify the average bitrate in bits per second. Required for VBR and CBR. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000.
--
-- * 'mssSlowPal' - Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1.
mpeg2Settings ::
  Mpeg2Settings
mpeg2Settings =
  Mpeg2Settings'
    { _mssHrdBufferInitialFillPercentage =
        Nothing,
      _mssTemporalAdaptiveQuantization = Nothing,
      _mssQualityTuningLevel = Nothing,
      _mssInterlaceMode = Nothing,
      _mssIntraDcPrecision = Nothing,
      _mssTelecine = Nothing,
      _mssSpatialAdaptiveQuantization = Nothing,
      _mssFramerateNumerator = Nothing,
      _mssRateControlMode = Nothing,
      _mssGopSizeUnits = Nothing,
      _mssCodecProfile = Nothing,
      _mssGopSize = Nothing,
      _mssFramerateDenominator = Nothing,
      _mssSoftness = Nothing,
      _mssParNumerator = Nothing,
      _mssSceneChangeDetect = Nothing,
      _mssMinIInterval = Nothing,
      _mssScanTypeConversionMode = Nothing,
      _mssParControl = Nothing,
      _mssGopClosedCadence = Nothing,
      _mssParDenominator = Nothing,
      _mssMaxBitrate = Nothing,
      _mssDynamicSubGop = Nothing,
      _mssSyntax = Nothing,
      _mssHrdBufferSize = Nothing,
      _mssAdaptiveQuantization = Nothing,
      _mssFramerateControl = Nothing,
      _mssNumberBFramesBetweenReferenceFrames = Nothing,
      _mssFramerateConversionAlgorithm = Nothing,
      _mssCodecLevel = Nothing,
      _mssBitrate = Nothing,
      _mssSlowPal = Nothing
    }

-- | Percentage of the buffer that should initially be filled (HRD buffer model).
mssHrdBufferInitialFillPercentage :: Lens' Mpeg2Settings (Maybe Natural)
mssHrdBufferInitialFillPercentage = lens _mssHrdBufferInitialFillPercentage (\s a -> s {_mssHrdBufferInitialFillPercentage = a}) . mapping _Nat

-- | Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to disable this feature. Related setting: When you enable temporal quantization, adjust the strength of the filter with the setting Adaptive quantization (adaptiveQuantization).
mssTemporalAdaptiveQuantization :: Lens' Mpeg2Settings (Maybe Mpeg2TemporalAdaptiveQuantization)
mssTemporalAdaptiveQuantization = lens _mssTemporalAdaptiveQuantization (\s a -> s {_mssTemporalAdaptiveQuantization = a})

-- | Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding.
mssQualityTuningLevel :: Lens' Mpeg2Settings (Maybe Mpeg2QualityTuningLevel)
mssQualityTuningLevel = lens _mssQualityTuningLevel (\s a -> s {_mssQualityTuningLevel = a})

-- | Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
mssInterlaceMode :: Lens' Mpeg2Settings (Maybe Mpeg2InterlaceMode)
mssInterlaceMode = lens _mssInterlaceMode (\s a -> s {_mssInterlaceMode = a})

-- | Use Intra DC precision (Mpeg2IntraDcPrecision) to set quantization precision for intra-block DC coefficients. If you choose the value auto, the service will automatically select the precision based on the per-frame compression ratio.
mssIntraDcPrecision :: Lens' Mpeg2Settings (Maybe Mpeg2IntraDcPrecision)
mssIntraDcPrecision = lens _mssIntraDcPrecision (\s a -> s {_mssIntraDcPrecision = a})

-- | When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard or soft telecine to create a smoother picture. Hard telecine (HARD) produces a 29.97i output. Soft telecine (SOFT) produces an output with a 23.976 output that signals to the video player device to do the conversion during play back. When you keep the default value, None (NONE), MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
mssTelecine :: Lens' Mpeg2Settings (Maybe Mpeg2Telecine)
mssTelecine = lens _mssTelecine (\s a -> s {_mssTelecine = a})

-- | Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization (adaptiveQuantization) depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher.
mssSpatialAdaptiveQuantization :: Lens' Mpeg2Settings (Maybe Mpeg2SpatialAdaptiveQuantization)
mssSpatialAdaptiveQuantization = lens _mssSpatialAdaptiveQuantization (\s a -> s {_mssSpatialAdaptiveQuantization = a})

-- | When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
mssFramerateNumerator :: Lens' Mpeg2Settings (Maybe Natural)
mssFramerateNumerator = lens _mssFramerateNumerator (\s a -> s {_mssFramerateNumerator = a}) . mapping _Nat

-- | Use Rate control mode (Mpeg2RateControlMode) to specify whether the bitrate is variable (vbr) or constant (cbr).
mssRateControlMode :: Lens' Mpeg2Settings (Maybe Mpeg2RateControlMode)
mssRateControlMode = lens _mssRateControlMode (\s a -> s {_mssRateControlMode = a})

-- | Indicates if the GOP Size in MPEG2 is specified in frames or seconds. If seconds the system will convert the GOP Size into a frame count at run time.
mssGopSizeUnits :: Lens' Mpeg2Settings (Maybe Mpeg2GopSizeUnits)
mssGopSizeUnits = lens _mssGopSizeUnits (\s a -> s {_mssGopSizeUnits = a})

-- | Use Profile (Mpeg2CodecProfile) to set the MPEG-2 profile for the video output.
mssCodecProfile :: Lens' Mpeg2Settings (Maybe Mpeg2CodecProfile)
mssCodecProfile = lens _mssCodecProfile (\s a -> s {_mssCodecProfile = a})

-- | GOP Length (keyframe interval) in frames or seconds. Must be greater than zero.
mssGopSize :: Lens' Mpeg2Settings (Maybe Double)
mssGopSize = lens _mssGopSize (\s a -> s {_mssGopSize = a})

-- | When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
mssFramerateDenominator :: Lens' Mpeg2Settings (Maybe Natural)
mssFramerateDenominator = lens _mssFramerateDenominator (\s a -> s {_mssFramerateDenominator = a}) . mapping _Nat

-- | Ignore this setting unless you need to comply with a specification that requires a specific value. If you don't have a specification requirement, we recommend that you adjust the softness of your output by using a lower value for the setting Sharpness (sharpness) or by enabling a noise reducer filter (noiseReducerFilter). The Softness (softness) setting specifies the quantization matrices that the encoder uses. Keep the default value, 0, to use the AWS Elemental default matrices. Choose a value from 17 to 128 to use planar interpolation. Increasing values from 17 to 128 result in increasing reduction of high-frequency data. The value 128 results in the softest video.
mssSoftness :: Lens' Mpeg2Settings (Maybe Natural)
mssSoftness = lens _mssSoftness (\s a -> s {_mssSoftness = a}) . mapping _Nat

-- | Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40.
mssParNumerator :: Lens' Mpeg2Settings (Maybe Natural)
mssParNumerator = lens _mssParNumerator (\s a -> s {_mssParNumerator = a}) . mapping _Nat

-- | Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default.
mssSceneChangeDetect :: Lens' Mpeg2Settings (Maybe Mpeg2SceneChangeDetect)
mssSceneChangeDetect = lens _mssSceneChangeDetect (\s a -> s {_mssSceneChangeDetect = a})

-- | Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. This setting is only used when Scene Change Detect is enabled. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
mssMinIInterval :: Lens' Mpeg2Settings (Maybe Natural)
mssMinIInterval = lens _mssMinIInterval (\s a -> s {_mssMinIInterval = a}) . mapping _Nat

-- | Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE).
mssScanTypeConversionMode :: Lens' Mpeg2Settings (Maybe Mpeg2ScanTypeConversionMode)
mssScanTypeConversionMode = lens _mssScanTypeConversionMode (\s a -> s {_mssScanTypeConversionMode = a})

-- | Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
mssParControl :: Lens' Mpeg2Settings (Maybe Mpeg2ParControl)
mssParControl = lens _mssParControl (\s a -> s {_mssParControl = a})

-- | Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
mssGopClosedCadence :: Lens' Mpeg2Settings (Maybe Natural)
mssGopClosedCadence = lens _mssGopClosedCadence (\s a -> s {_mssGopClosedCadence = a}) . mapping _Nat

-- | Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33.
mssParDenominator :: Lens' Mpeg2Settings (Maybe Natural)
mssParDenominator = lens _mssParDenominator (\s a -> s {_mssParDenominator = a}) . mapping _Nat

-- | Maximum bitrate in bits/second. For example, enter five megabits per second as 5000000.
mssMaxBitrate :: Lens' Mpeg2Settings (Maybe Natural)
mssMaxBitrate = lens _mssMaxBitrate (\s a -> s {_mssMaxBitrate = a}) . mapping _Nat

-- | Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames).
mssDynamicSubGop :: Lens' Mpeg2Settings (Maybe Mpeg2DynamicSubGop)
mssDynamicSubGop = lens _mssDynamicSubGop (\s a -> s {_mssDynamicSubGop = a})

-- | Specify whether this output's video uses the D10 syntax. Keep the default value to  not use the syntax. Related settings: When you choose D10 (D_10) for your MXF  profile (profile), you must also set this value to to D10 (D_10).
mssSyntax :: Lens' Mpeg2Settings (Maybe Mpeg2Syntax)
mssSyntax = lens _mssSyntax (\s a -> s {_mssSyntax = a})

-- | Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000.
mssHrdBufferSize :: Lens' Mpeg2Settings (Maybe Natural)
mssHrdBufferSize = lens _mssHrdBufferSize (\s a -> s {_mssHrdBufferSize = a}) . mapping _Nat

-- | Specify the strength of any adaptive quantization filters that you enable. The value that you choose here applies to the following settings: Spatial adaptive quantization (spatialAdaptiveQuantization), and Temporal adaptive quantization (temporalAdaptiveQuantization).
mssAdaptiveQuantization :: Lens' Mpeg2Settings (Maybe Mpeg2AdaptiveQuantization)
mssAdaptiveQuantization = lens _mssAdaptiveQuantization (\s a -> s {_mssAdaptiveQuantization = a})

-- | If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.
mssFramerateControl :: Lens' Mpeg2Settings (Maybe Mpeg2FramerateControl)
mssFramerateControl = lens _mssFramerateControl (\s a -> s {_mssFramerateControl = a})

-- | Number of B-frames between reference frames.
mssNumberBFramesBetweenReferenceFrames :: Lens' Mpeg2Settings (Maybe Natural)
mssNumberBFramesBetweenReferenceFrames = lens _mssNumberBFramesBetweenReferenceFrames (\s a -> s {_mssNumberBFramesBetweenReferenceFrames = a}) . mapping _Nat

-- | Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
mssFramerateConversionAlgorithm :: Lens' Mpeg2Settings (Maybe Mpeg2FramerateConversionAlgorithm)
mssFramerateConversionAlgorithm = lens _mssFramerateConversionAlgorithm (\s a -> s {_mssFramerateConversionAlgorithm = a})

-- | Use Level (Mpeg2CodecLevel) to set the MPEG-2 level for the video output.
mssCodecLevel :: Lens' Mpeg2Settings (Maybe Mpeg2CodecLevel)
mssCodecLevel = lens _mssCodecLevel (\s a -> s {_mssCodecLevel = a})

-- | Specify the average bitrate in bits per second. Required for VBR and CBR. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000.
mssBitrate :: Lens' Mpeg2Settings (Maybe Natural)
mssBitrate = lens _mssBitrate (\s a -> s {_mssBitrate = a}) . mapping _Nat

-- | Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1.
mssSlowPal :: Lens' Mpeg2Settings (Maybe Mpeg2SlowPal)
mssSlowPal = lens _mssSlowPal (\s a -> s {_mssSlowPal = a})

instance FromJSON Mpeg2Settings where
  parseJSON =
    withObject
      "Mpeg2Settings"
      ( \x ->
          Mpeg2Settings'
            <$> (x .:? "hrdBufferInitialFillPercentage")
            <*> (x .:? "temporalAdaptiveQuantization")
            <*> (x .:? "qualityTuningLevel")
            <*> (x .:? "interlaceMode")
            <*> (x .:? "intraDcPrecision")
            <*> (x .:? "telecine")
            <*> (x .:? "spatialAdaptiveQuantization")
            <*> (x .:? "framerateNumerator")
            <*> (x .:? "rateControlMode")
            <*> (x .:? "gopSizeUnits")
            <*> (x .:? "codecProfile")
            <*> (x .:? "gopSize")
            <*> (x .:? "framerateDenominator")
            <*> (x .:? "softness")
            <*> (x .:? "parNumerator")
            <*> (x .:? "sceneChangeDetect")
            <*> (x .:? "minIInterval")
            <*> (x .:? "scanTypeConversionMode")
            <*> (x .:? "parControl")
            <*> (x .:? "gopClosedCadence")
            <*> (x .:? "parDenominator")
            <*> (x .:? "maxBitrate")
            <*> (x .:? "dynamicSubGop")
            <*> (x .:? "syntax")
            <*> (x .:? "hrdBufferSize")
            <*> (x .:? "adaptiveQuantization")
            <*> (x .:? "framerateControl")
            <*> (x .:? "numberBFramesBetweenReferenceFrames")
            <*> (x .:? "framerateConversionAlgorithm")
            <*> (x .:? "codecLevel")
            <*> (x .:? "bitrate")
            <*> (x .:? "slowPal")
      )

instance Hashable Mpeg2Settings

instance NFData Mpeg2Settings

instance ToJSON Mpeg2Settings where
  toJSON Mpeg2Settings' {..} =
    object
      ( catMaybes
          [ ("hrdBufferInitialFillPercentage" .=)
              <$> _mssHrdBufferInitialFillPercentage,
            ("temporalAdaptiveQuantization" .=)
              <$> _mssTemporalAdaptiveQuantization,
            ("qualityTuningLevel" .=) <$> _mssQualityTuningLevel,
            ("interlaceMode" .=) <$> _mssInterlaceMode,
            ("intraDcPrecision" .=) <$> _mssIntraDcPrecision,
            ("telecine" .=) <$> _mssTelecine,
            ("spatialAdaptiveQuantization" .=)
              <$> _mssSpatialAdaptiveQuantization,
            ("framerateNumerator" .=) <$> _mssFramerateNumerator,
            ("rateControlMode" .=) <$> _mssRateControlMode,
            ("gopSizeUnits" .=) <$> _mssGopSizeUnits,
            ("codecProfile" .=) <$> _mssCodecProfile,
            ("gopSize" .=) <$> _mssGopSize,
            ("framerateDenominator" .=)
              <$> _mssFramerateDenominator,
            ("softness" .=) <$> _mssSoftness,
            ("parNumerator" .=) <$> _mssParNumerator,
            ("sceneChangeDetect" .=) <$> _mssSceneChangeDetect,
            ("minIInterval" .=) <$> _mssMinIInterval,
            ("scanTypeConversionMode" .=)
              <$> _mssScanTypeConversionMode,
            ("parControl" .=) <$> _mssParControl,
            ("gopClosedCadence" .=) <$> _mssGopClosedCadence,
            ("parDenominator" .=) <$> _mssParDenominator,
            ("maxBitrate" .=) <$> _mssMaxBitrate,
            ("dynamicSubGop" .=) <$> _mssDynamicSubGop,
            ("syntax" .=) <$> _mssSyntax,
            ("hrdBufferSize" .=) <$> _mssHrdBufferSize,
            ("adaptiveQuantization" .=)
              <$> _mssAdaptiveQuantization,
            ("framerateControl" .=) <$> _mssFramerateControl,
            ("numberBFramesBetweenReferenceFrames" .=)
              <$> _mssNumberBFramesBetweenReferenceFrames,
            ("framerateConversionAlgorithm" .=)
              <$> _mssFramerateConversionAlgorithm,
            ("codecLevel" .=) <$> _mssCodecLevel,
            ("bitrate" .=) <$> _mssBitrate,
            ("slowPal" .=) <$> _mssSlowPal
          ]
      )
