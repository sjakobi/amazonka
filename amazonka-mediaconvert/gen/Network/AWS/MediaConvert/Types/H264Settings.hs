{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264Settings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264Settings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.H264AdaptiveQuantization
import Network.AWS.MediaConvert.Types.H264CodecLevel
import Network.AWS.MediaConvert.Types.H264CodecProfile
import Network.AWS.MediaConvert.Types.H264DynamicSubGop
import Network.AWS.MediaConvert.Types.H264EntropyEncoding
import Network.AWS.MediaConvert.Types.H264FieldEncoding
import Network.AWS.MediaConvert.Types.H264FlickerAdaptiveQuantization
import Network.AWS.MediaConvert.Types.H264FramerateControl
import Network.AWS.MediaConvert.Types.H264FramerateConversionAlgorithm
import Network.AWS.MediaConvert.Types.H264GopBReference
import Network.AWS.MediaConvert.Types.H264GopSizeUnits
import Network.AWS.MediaConvert.Types.H264InterlaceMode
import Network.AWS.MediaConvert.Types.H264ParControl
import Network.AWS.MediaConvert.Types.H264QualityTuningLevel
import Network.AWS.MediaConvert.Types.H264QvbrSettings
import Network.AWS.MediaConvert.Types.H264RateControlMode
import Network.AWS.MediaConvert.Types.H264RepeatPps
import Network.AWS.MediaConvert.Types.H264ScanTypeConversionMode
import Network.AWS.MediaConvert.Types.H264SceneChangeDetect
import Network.AWS.MediaConvert.Types.H264SlowPal
import Network.AWS.MediaConvert.Types.H264SpatialAdaptiveQuantization
import Network.AWS.MediaConvert.Types.H264Syntax
import Network.AWS.MediaConvert.Types.H264Telecine
import Network.AWS.MediaConvert.Types.H264TemporalAdaptiveQuantization
import Network.AWS.MediaConvert.Types.H264UnregisteredSeiTimecode
import Network.AWS.Prelude

-- | Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value H_264.
--
-- /See:/ 'h264Settings' smart constructor.
data H264Settings = H264Settings'
  { _hsHrdBufferInitialFillPercentage ::
      !(Maybe Nat),
    _hsTemporalAdaptiveQuantization ::
      !(Maybe H264TemporalAdaptiveQuantization),
    _hsFlickerAdaptiveQuantization ::
      !(Maybe H264FlickerAdaptiveQuantization),
    _hsQualityTuningLevel ::
      !(Maybe H264QualityTuningLevel),
    _hsInterlaceMode ::
      !(Maybe H264InterlaceMode),
    _hsRepeatPps :: !(Maybe H264RepeatPps),
    _hsFieldEncoding ::
      !(Maybe H264FieldEncoding),
    _hsTelecine :: !(Maybe H264Telecine),
    _hsGopBReference ::
      !(Maybe H264GopBReference),
    _hsSpatialAdaptiveQuantization ::
      !(Maybe H264SpatialAdaptiveQuantization),
    _hsFramerateNumerator :: !(Maybe Nat),
    _hsRateControlMode ::
      !(Maybe H264RateControlMode),
    _hsNumberReferenceFrames :: !(Maybe Nat),
    _hsSlices :: !(Maybe Nat),
    _hsEntropyEncoding ::
      !(Maybe H264EntropyEncoding),
    _hsGopSizeUnits :: !(Maybe H264GopSizeUnits),
    _hsCodecProfile :: !(Maybe H264CodecProfile),
    _hsGopSize :: !(Maybe Double),
    _hsFramerateDenominator :: !(Maybe Nat),
    _hsSoftness :: !(Maybe Nat),
    _hsParNumerator :: !(Maybe Nat),
    _hsSceneChangeDetect ::
      !(Maybe H264SceneChangeDetect),
    _hsMinIInterval :: !(Maybe Nat),
    _hsUnregisteredSeiTimecode ::
      !(Maybe H264UnregisteredSeiTimecode),
    _hsScanTypeConversionMode ::
      !(Maybe H264ScanTypeConversionMode),
    _hsParControl :: !(Maybe H264ParControl),
    _hsGopClosedCadence :: !(Maybe Nat),
    _hsParDenominator :: !(Maybe Nat),
    _hsMaxBitrate :: !(Maybe Nat),
    _hsDynamicSubGop ::
      !(Maybe H264DynamicSubGop),
    _hsSyntax :: !(Maybe H264Syntax),
    _hsHrdBufferSize :: !(Maybe Nat),
    _hsAdaptiveQuantization ::
      !(Maybe H264AdaptiveQuantization),
    _hsFramerateControl ::
      !(Maybe H264FramerateControl),
    _hsNumberBFramesBetweenReferenceFrames ::
      !(Maybe Nat),
    _hsFramerateConversionAlgorithm ::
      !(Maybe H264FramerateConversionAlgorithm),
    _hsCodecLevel :: !(Maybe H264CodecLevel),
    _hsBitrate :: !(Maybe Nat),
    _hsQvbrSettings :: !(Maybe H264QvbrSettings),
    _hsSlowPal :: !(Maybe H264SlowPal)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'H264Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hsHrdBufferInitialFillPercentage' - Percentage of the buffer that should initially be filled (HRD buffer model).
--
-- * 'hsTemporalAdaptiveQuantization' - Only use this setting when you change the default value, AUTO, for the setting H264AdaptiveQuantization. When you keep all defaults, excluding H264AdaptiveQuantization and all other adaptive quantization from your JSON job specification, MediaConvert automatically applies the best types of quantization for your video content. When you set H264AdaptiveQuantization to a value other than AUTO, the default value for H264TemporalAdaptiveQuantization is Enabled (ENABLED). Keep this default value to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to set H264TemporalAdaptiveQuantization to Disabled (DISABLED). Related setting: When you enable temporal quantization, adjust the strength of the filter with the setting Adaptive quantization (adaptiveQuantization). To manually enable or disable H264TemporalAdaptiveQuantization, you must set Adaptive quantization (H264AdaptiveQuantization) to a value other than AUTO.
--
-- * 'hsFlickerAdaptiveQuantization' - Only use this setting when you change the default value, AUTO, for the setting H264AdaptiveQuantization. When you keep all defaults, excluding H264AdaptiveQuantization and all other adaptive quantization from your JSON job specification, MediaConvert automatically applies the best types of quantization for your video content. When you set H264AdaptiveQuantization to a value other than AUTO, the default value for H264FlickerAdaptiveQuantization is Disabled (DISABLED). Change this value to Enabled (ENABLED) to reduce I-frame pop. I-frame pop appears as a visual flicker that can arise when the encoder saves bits by copying some macroblocks many times from frame to frame, and then refreshes them at the I-frame. When you enable this setting, the encoder updates these macroblocks slightly more often to smooth out the flicker. To manually enable or disable H264FlickerAdaptiveQuantization, you must set Adaptive quantization (H264AdaptiveQuantization) to a value other than AUTO.
--
-- * 'hsQualityTuningLevel' - Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding.
--
-- * 'hsInterlaceMode' - Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
--
-- * 'hsRepeatPps' - Places a PPS header on each encoded picture, even if repeated.
--
-- * 'hsFieldEncoding' - Keep the default value, PAFF, to have MediaConvert use PAFF encoding for interlaced outputs. Choose Force field (FORCE_FIELD) to disable PAFF encoding and create separate interlaced fields.
--
-- * 'hsTelecine' - When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard or soft telecine to create a smoother picture. Hard telecine (HARD) produces a 29.97i output. Soft telecine (SOFT) produces an output with a 23.976 output that signals to the video player device to do the conversion during play back. When you keep the default value, None (NONE), MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
--
-- * 'hsGopBReference' - If enable, use reference B frames for GOP structures that have B frames > 1.
--
-- * 'hsSpatialAdaptiveQuantization' - Only use this setting when you change the default value, Auto (AUTO), for the setting H264AdaptiveQuantization. When you keep all defaults, excluding H264AdaptiveQuantization and all other adaptive quantization from your JSON job specification, MediaConvert automatically applies the best types of quantization for your video content. When you set H264AdaptiveQuantization to a value other than AUTO, the default value for H264SpatialAdaptiveQuantization is Enabled (ENABLED). Keep this default value to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to set H264SpatialAdaptiveQuantization to Disabled (DISABLED). Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization (H264AdaptiveQuantization) depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher. To manually enable or disable H264SpatialAdaptiveQuantization, you must set Adaptive quantization (H264AdaptiveQuantization) to a value other than AUTO.
--
-- * 'hsFramerateNumerator' - When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
--
-- * 'hsRateControlMode' - Use this setting to specify whether this output has a variable bitrate (VBR), constant bitrate (CBR) or quality-defined variable bitrate (QVBR).
--
-- * 'hsNumberReferenceFrames' - Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding.
--
-- * 'hsSlices' - Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
--
-- * 'hsEntropyEncoding' - Entropy encoding mode. Use CABAC (must be in Main or High profile) or CAVLC.
--
-- * 'hsGopSizeUnits' - Indicates if the GOP Size in H264 is specified in frames or seconds. If seconds the system will convert the GOP Size into a frame count at run time.
--
-- * 'hsCodecProfile' - H.264 Profile. High 4:2:2 and 10-bit profiles are only available with the AVC-I License.
--
-- * 'hsGopSize' - GOP Length (keyframe interval) in frames or seconds. Must be greater than zero.
--
-- * 'hsFramerateDenominator' - When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
--
-- * 'hsSoftness' - Ignore this setting unless you need to comply with a specification that requires a specific value. If you don't have a specification requirement, we recommend that you adjust the softness of your output by using a lower value for the setting Sharpness (sharpness) or by enabling a noise reducer filter (noiseReducerFilter). The Softness (softness) setting specifies the quantization matrices that the encoder uses. Keep the default value, 0, for flat quantization. Choose the value 1 or 16 to use the default JVT softening quantization matricies from the H.264 specification. Choose a value from 17 to 128 to use planar interpolation. Increasing values from 17 to 128 result in increasing reduction of high-frequency data. The value 128 results in the softest video.
--
-- * 'hsParNumerator' - Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40.
--
-- * 'hsSceneChangeDetect' - Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default. If this output uses QVBR, choose Transition detection (TRANSITION_DETECTION) for further video quality improvement. For more information about QVBR, see https://docs.aws.amazon.com/console/mediaconvert/cbr-vbr-qvbr.
--
-- * 'hsMinIInterval' - Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. This setting is only used when Scene Change Detect is enabled. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
--
-- * 'hsUnregisteredSeiTimecode' - Inserts timecode for each frame as 4 bytes of an unregistered SEI message.
--
-- * 'hsScanTypeConversionMode' - Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE).
--
-- * 'hsParControl' - Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
--
-- * 'hsGopClosedCadence' - Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
--
-- * 'hsParDenominator' - Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33.
--
-- * 'hsMaxBitrate' - Maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. Required when Rate control mode is QVBR.
--
-- * 'hsDynamicSubGop' - Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames).
--
-- * 'hsSyntax' - Produces a bitstream compliant with SMPTE RP-2027.
--
-- * 'hsHrdBufferSize' - Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000.
--
-- * 'hsAdaptiveQuantization' - Keep the default value, Auto (AUTO), for this setting to have MediaConvert automatically apply the best types of quantization for your video content. When you want to apply your quantization settings manually, you must set H264AdaptiveQuantization to a value other than Auto (AUTO). Use this setting to specify the strength of any adaptive quantization filters that you enable. If you don't want MediaConvert to do any adaptive quantization in this transcode, set Adaptive quantization (H264AdaptiveQuantization) to Off (OFF). Related settings: The value that you choose here applies to the following settings: H264FlickerAdaptiveQuantization, H264SpatialAdaptiveQuantization, and H264TemporalAdaptiveQuantization.
--
-- * 'hsFramerateControl' - If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.
--
-- * 'hsNumberBFramesBetweenReferenceFrames' - Number of B-frames between reference frames.
--
-- * 'hsFramerateConversionAlgorithm' - Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
--
-- * 'hsCodecLevel' - Specify an H.264 level that is consistent with your output video settings. If you aren't sure what level to specify, choose Auto (AUTO).
--
-- * 'hsBitrate' - Specify the average bitrate in bits per second. Required for VBR and CBR. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000.
--
-- * 'hsQvbrSettings' - Settings for quality-defined variable bitrate encoding with the H.264 codec. Required when you set Rate control mode to QVBR. Not valid when you set Rate control mode to a value other than QVBR, or when you don't define Rate control mode.
--
-- * 'hsSlowPal' - Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1.
h264Settings ::
  H264Settings
h264Settings =
  H264Settings'
    { _hsHrdBufferInitialFillPercentage =
        Nothing,
      _hsTemporalAdaptiveQuantization = Nothing,
      _hsFlickerAdaptiveQuantization = Nothing,
      _hsQualityTuningLevel = Nothing,
      _hsInterlaceMode = Nothing,
      _hsRepeatPps = Nothing,
      _hsFieldEncoding = Nothing,
      _hsTelecine = Nothing,
      _hsGopBReference = Nothing,
      _hsSpatialAdaptiveQuantization = Nothing,
      _hsFramerateNumerator = Nothing,
      _hsRateControlMode = Nothing,
      _hsNumberReferenceFrames = Nothing,
      _hsSlices = Nothing,
      _hsEntropyEncoding = Nothing,
      _hsGopSizeUnits = Nothing,
      _hsCodecProfile = Nothing,
      _hsGopSize = Nothing,
      _hsFramerateDenominator = Nothing,
      _hsSoftness = Nothing,
      _hsParNumerator = Nothing,
      _hsSceneChangeDetect = Nothing,
      _hsMinIInterval = Nothing,
      _hsUnregisteredSeiTimecode = Nothing,
      _hsScanTypeConversionMode = Nothing,
      _hsParControl = Nothing,
      _hsGopClosedCadence = Nothing,
      _hsParDenominator = Nothing,
      _hsMaxBitrate = Nothing,
      _hsDynamicSubGop = Nothing,
      _hsSyntax = Nothing,
      _hsHrdBufferSize = Nothing,
      _hsAdaptiveQuantization = Nothing,
      _hsFramerateControl = Nothing,
      _hsNumberBFramesBetweenReferenceFrames = Nothing,
      _hsFramerateConversionAlgorithm = Nothing,
      _hsCodecLevel = Nothing,
      _hsBitrate = Nothing,
      _hsQvbrSettings = Nothing,
      _hsSlowPal = Nothing
    }

-- | Percentage of the buffer that should initially be filled (HRD buffer model).
hsHrdBufferInitialFillPercentage :: Lens' H264Settings (Maybe Natural)
hsHrdBufferInitialFillPercentage = lens _hsHrdBufferInitialFillPercentage (\s a -> s {_hsHrdBufferInitialFillPercentage = a}) . mapping _Nat

-- | Only use this setting when you change the default value, AUTO, for the setting H264AdaptiveQuantization. When you keep all defaults, excluding H264AdaptiveQuantization and all other adaptive quantization from your JSON job specification, MediaConvert automatically applies the best types of quantization for your video content. When you set H264AdaptiveQuantization to a value other than AUTO, the default value for H264TemporalAdaptiveQuantization is Enabled (ENABLED). Keep this default value to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to set H264TemporalAdaptiveQuantization to Disabled (DISABLED). Related setting: When you enable temporal quantization, adjust the strength of the filter with the setting Adaptive quantization (adaptiveQuantization). To manually enable or disable H264TemporalAdaptiveQuantization, you must set Adaptive quantization (H264AdaptiveQuantization) to a value other than AUTO.
hsTemporalAdaptiveQuantization :: Lens' H264Settings (Maybe H264TemporalAdaptiveQuantization)
hsTemporalAdaptiveQuantization = lens _hsTemporalAdaptiveQuantization (\s a -> s {_hsTemporalAdaptiveQuantization = a})

-- | Only use this setting when you change the default value, AUTO, for the setting H264AdaptiveQuantization. When you keep all defaults, excluding H264AdaptiveQuantization and all other adaptive quantization from your JSON job specification, MediaConvert automatically applies the best types of quantization for your video content. When you set H264AdaptiveQuantization to a value other than AUTO, the default value for H264FlickerAdaptiveQuantization is Disabled (DISABLED). Change this value to Enabled (ENABLED) to reduce I-frame pop. I-frame pop appears as a visual flicker that can arise when the encoder saves bits by copying some macroblocks many times from frame to frame, and then refreshes them at the I-frame. When you enable this setting, the encoder updates these macroblocks slightly more often to smooth out the flicker. To manually enable or disable H264FlickerAdaptiveQuantization, you must set Adaptive quantization (H264AdaptiveQuantization) to a value other than AUTO.
hsFlickerAdaptiveQuantization :: Lens' H264Settings (Maybe H264FlickerAdaptiveQuantization)
hsFlickerAdaptiveQuantization = lens _hsFlickerAdaptiveQuantization (\s a -> s {_hsFlickerAdaptiveQuantization = a})

-- | Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding.
hsQualityTuningLevel :: Lens' H264Settings (Maybe H264QualityTuningLevel)
hsQualityTuningLevel = lens _hsQualityTuningLevel (\s a -> s {_hsQualityTuningLevel = a})

-- | Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
hsInterlaceMode :: Lens' H264Settings (Maybe H264InterlaceMode)
hsInterlaceMode = lens _hsInterlaceMode (\s a -> s {_hsInterlaceMode = a})

-- | Places a PPS header on each encoded picture, even if repeated.
hsRepeatPps :: Lens' H264Settings (Maybe H264RepeatPps)
hsRepeatPps = lens _hsRepeatPps (\s a -> s {_hsRepeatPps = a})

-- | Keep the default value, PAFF, to have MediaConvert use PAFF encoding for interlaced outputs. Choose Force field (FORCE_FIELD) to disable PAFF encoding and create separate interlaced fields.
hsFieldEncoding :: Lens' H264Settings (Maybe H264FieldEncoding)
hsFieldEncoding = lens _hsFieldEncoding (\s a -> s {_hsFieldEncoding = a})

-- | When you do frame rate conversion from 23.976 frames per second (fps) to 29.97 fps, and your output scan type is interlaced, you can optionally enable hard or soft telecine to create a smoother picture. Hard telecine (HARD) produces a 29.97i output. Soft telecine (SOFT) produces an output with a 23.976 output that signals to the video player device to do the conversion during play back. When you keep the default value, None (NONE), MediaConvert does a standard frame rate conversion to 29.97 without doing anything with the field polarity to create a smoother picture.
hsTelecine :: Lens' H264Settings (Maybe H264Telecine)
hsTelecine = lens _hsTelecine (\s a -> s {_hsTelecine = a})

-- | If enable, use reference B frames for GOP structures that have B frames > 1.
hsGopBReference :: Lens' H264Settings (Maybe H264GopBReference)
hsGopBReference = lens _hsGopBReference (\s a -> s {_hsGopBReference = a})

-- | Only use this setting when you change the default value, Auto (AUTO), for the setting H264AdaptiveQuantization. When you keep all defaults, excluding H264AdaptiveQuantization and all other adaptive quantization from your JSON job specification, MediaConvert automatically applies the best types of quantization for your video content. When you set H264AdaptiveQuantization to a value other than AUTO, the default value for H264SpatialAdaptiveQuantization is Enabled (ENABLED). Keep this default value to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to set H264SpatialAdaptiveQuantization to Disabled (DISABLED). Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization (H264AdaptiveQuantization) depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher. To manually enable or disable H264SpatialAdaptiveQuantization, you must set Adaptive quantization (H264AdaptiveQuantization) to a value other than AUTO.
hsSpatialAdaptiveQuantization :: Lens' H264Settings (Maybe H264SpatialAdaptiveQuantization)
hsSpatialAdaptiveQuantization = lens _hsSpatialAdaptiveQuantization (\s a -> s {_hsSpatialAdaptiveQuantization = a})

-- | When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
hsFramerateNumerator :: Lens' H264Settings (Maybe Natural)
hsFramerateNumerator = lens _hsFramerateNumerator (\s a -> s {_hsFramerateNumerator = a}) . mapping _Nat

-- | Use this setting to specify whether this output has a variable bitrate (VBR), constant bitrate (CBR) or quality-defined variable bitrate (QVBR).
hsRateControlMode :: Lens' H264Settings (Maybe H264RateControlMode)
hsRateControlMode = lens _hsRateControlMode (\s a -> s {_hsRateControlMode = a})

-- | Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding.
hsNumberReferenceFrames :: Lens' H264Settings (Maybe Natural)
hsNumberReferenceFrames = lens _hsNumberReferenceFrames (\s a -> s {_hsNumberReferenceFrames = a}) . mapping _Nat

-- | Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
hsSlices :: Lens' H264Settings (Maybe Natural)
hsSlices = lens _hsSlices (\s a -> s {_hsSlices = a}) . mapping _Nat

-- | Entropy encoding mode. Use CABAC (must be in Main or High profile) or CAVLC.
hsEntropyEncoding :: Lens' H264Settings (Maybe H264EntropyEncoding)
hsEntropyEncoding = lens _hsEntropyEncoding (\s a -> s {_hsEntropyEncoding = a})

-- | Indicates if the GOP Size in H264 is specified in frames or seconds. If seconds the system will convert the GOP Size into a frame count at run time.
hsGopSizeUnits :: Lens' H264Settings (Maybe H264GopSizeUnits)
hsGopSizeUnits = lens _hsGopSizeUnits (\s a -> s {_hsGopSizeUnits = a})

-- | H.264 Profile. High 4:2:2 and 10-bit profiles are only available with the AVC-I License.
hsCodecProfile :: Lens' H264Settings (Maybe H264CodecProfile)
hsCodecProfile = lens _hsCodecProfile (\s a -> s {_hsCodecProfile = a})

-- | GOP Length (keyframe interval) in frames or seconds. Must be greater than zero.
hsGopSize :: Lens' H264Settings (Maybe Double)
hsGopSize = lens _hsGopSize (\s a -> s {_hsGopSize = a})

-- | When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
hsFramerateDenominator :: Lens' H264Settings (Maybe Natural)
hsFramerateDenominator = lens _hsFramerateDenominator (\s a -> s {_hsFramerateDenominator = a}) . mapping _Nat

-- | Ignore this setting unless you need to comply with a specification that requires a specific value. If you don't have a specification requirement, we recommend that you adjust the softness of your output by using a lower value for the setting Sharpness (sharpness) or by enabling a noise reducer filter (noiseReducerFilter). The Softness (softness) setting specifies the quantization matrices that the encoder uses. Keep the default value, 0, for flat quantization. Choose the value 1 or 16 to use the default JVT softening quantization matricies from the H.264 specification. Choose a value from 17 to 128 to use planar interpolation. Increasing values from 17 to 128 result in increasing reduction of high-frequency data. The value 128 results in the softest video.
hsSoftness :: Lens' H264Settings (Maybe Natural)
hsSoftness = lens _hsSoftness (\s a -> s {_hsSoftness = a}) . mapping _Nat

-- | Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40.
hsParNumerator :: Lens' H264Settings (Maybe Natural)
hsParNumerator = lens _hsParNumerator (\s a -> s {_hsParNumerator = a}) . mapping _Nat

-- | Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default. If this output uses QVBR, choose Transition detection (TRANSITION_DETECTION) for further video quality improvement. For more information about QVBR, see https://docs.aws.amazon.com/console/mediaconvert/cbr-vbr-qvbr.
hsSceneChangeDetect :: Lens' H264Settings (Maybe H264SceneChangeDetect)
hsSceneChangeDetect = lens _hsSceneChangeDetect (\s a -> s {_hsSceneChangeDetect = a})

-- | Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. This setting is only used when Scene Change Detect is enabled. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
hsMinIInterval :: Lens' H264Settings (Maybe Natural)
hsMinIInterval = lens _hsMinIInterval (\s a -> s {_hsMinIInterval = a}) . mapping _Nat

-- | Inserts timecode for each frame as 4 bytes of an unregistered SEI message.
hsUnregisteredSeiTimecode :: Lens' H264Settings (Maybe H264UnregisteredSeiTimecode)
hsUnregisteredSeiTimecode = lens _hsUnregisteredSeiTimecode (\s a -> s {_hsUnregisteredSeiTimecode = a})

-- | Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE).
hsScanTypeConversionMode :: Lens' H264Settings (Maybe H264ScanTypeConversionMode)
hsScanTypeConversionMode = lens _hsScanTypeConversionMode (\s a -> s {_hsScanTypeConversionMode = a})

-- | Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
hsParControl :: Lens' H264Settings (Maybe H264ParControl)
hsParControl = lens _hsParControl (\s a -> s {_hsParControl = a})

-- | Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
hsGopClosedCadence :: Lens' H264Settings (Maybe Natural)
hsGopClosedCadence = lens _hsGopClosedCadence (\s a -> s {_hsGopClosedCadence = a}) . mapping _Nat

-- | Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33.
hsParDenominator :: Lens' H264Settings (Maybe Natural)
hsParDenominator = lens _hsParDenominator (\s a -> s {_hsParDenominator = a}) . mapping _Nat

-- | Maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. Required when Rate control mode is QVBR.
hsMaxBitrate :: Lens' H264Settings (Maybe Natural)
hsMaxBitrate = lens _hsMaxBitrate (\s a -> s {_hsMaxBitrate = a}) . mapping _Nat

-- | Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames).
hsDynamicSubGop :: Lens' H264Settings (Maybe H264DynamicSubGop)
hsDynamicSubGop = lens _hsDynamicSubGop (\s a -> s {_hsDynamicSubGop = a})

-- | Produces a bitstream compliant with SMPTE RP-2027.
hsSyntax :: Lens' H264Settings (Maybe H264Syntax)
hsSyntax = lens _hsSyntax (\s a -> s {_hsSyntax = a})

-- | Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000.
hsHrdBufferSize :: Lens' H264Settings (Maybe Natural)
hsHrdBufferSize = lens _hsHrdBufferSize (\s a -> s {_hsHrdBufferSize = a}) . mapping _Nat

-- | Keep the default value, Auto (AUTO), for this setting to have MediaConvert automatically apply the best types of quantization for your video content. When you want to apply your quantization settings manually, you must set H264AdaptiveQuantization to a value other than Auto (AUTO). Use this setting to specify the strength of any adaptive quantization filters that you enable. If you don't want MediaConvert to do any adaptive quantization in this transcode, set Adaptive quantization (H264AdaptiveQuantization) to Off (OFF). Related settings: The value that you choose here applies to the following settings: H264FlickerAdaptiveQuantization, H264SpatialAdaptiveQuantization, and H264TemporalAdaptiveQuantization.
hsAdaptiveQuantization :: Lens' H264Settings (Maybe H264AdaptiveQuantization)
hsAdaptiveQuantization = lens _hsAdaptiveQuantization (\s a -> s {_hsAdaptiveQuantization = a})

-- | If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.
hsFramerateControl :: Lens' H264Settings (Maybe H264FramerateControl)
hsFramerateControl = lens _hsFramerateControl (\s a -> s {_hsFramerateControl = a})

-- | Number of B-frames between reference frames.
hsNumberBFramesBetweenReferenceFrames :: Lens' H264Settings (Maybe Natural)
hsNumberBFramesBetweenReferenceFrames = lens _hsNumberBFramesBetweenReferenceFrames (\s a -> s {_hsNumberBFramesBetweenReferenceFrames = a}) . mapping _Nat

-- | Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
hsFramerateConversionAlgorithm :: Lens' H264Settings (Maybe H264FramerateConversionAlgorithm)
hsFramerateConversionAlgorithm = lens _hsFramerateConversionAlgorithm (\s a -> s {_hsFramerateConversionAlgorithm = a})

-- | Specify an H.264 level that is consistent with your output video settings. If you aren't sure what level to specify, choose Auto (AUTO).
hsCodecLevel :: Lens' H264Settings (Maybe H264CodecLevel)
hsCodecLevel = lens _hsCodecLevel (\s a -> s {_hsCodecLevel = a})

-- | Specify the average bitrate in bits per second. Required for VBR and CBR. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000.
hsBitrate :: Lens' H264Settings (Maybe Natural)
hsBitrate = lens _hsBitrate (\s a -> s {_hsBitrate = a}) . mapping _Nat

-- | Settings for quality-defined variable bitrate encoding with the H.264 codec. Required when you set Rate control mode to QVBR. Not valid when you set Rate control mode to a value other than QVBR, or when you don't define Rate control mode.
hsQvbrSettings :: Lens' H264Settings (Maybe H264QvbrSettings)
hsQvbrSettings = lens _hsQvbrSettings (\s a -> s {_hsQvbrSettings = a})

-- | Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1.
hsSlowPal :: Lens' H264Settings (Maybe H264SlowPal)
hsSlowPal = lens _hsSlowPal (\s a -> s {_hsSlowPal = a})

instance FromJSON H264Settings where
  parseJSON =
    withObject
      "H264Settings"
      ( \x ->
          H264Settings'
            <$> (x .:? "hrdBufferInitialFillPercentage")
            <*> (x .:? "temporalAdaptiveQuantization")
            <*> (x .:? "flickerAdaptiveQuantization")
            <*> (x .:? "qualityTuningLevel")
            <*> (x .:? "interlaceMode")
            <*> (x .:? "repeatPps")
            <*> (x .:? "fieldEncoding")
            <*> (x .:? "telecine")
            <*> (x .:? "gopBReference")
            <*> (x .:? "spatialAdaptiveQuantization")
            <*> (x .:? "framerateNumerator")
            <*> (x .:? "rateControlMode")
            <*> (x .:? "numberReferenceFrames")
            <*> (x .:? "slices")
            <*> (x .:? "entropyEncoding")
            <*> (x .:? "gopSizeUnits")
            <*> (x .:? "codecProfile")
            <*> (x .:? "gopSize")
            <*> (x .:? "framerateDenominator")
            <*> (x .:? "softness")
            <*> (x .:? "parNumerator")
            <*> (x .:? "sceneChangeDetect")
            <*> (x .:? "minIInterval")
            <*> (x .:? "unregisteredSeiTimecode")
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
            <*> (x .:? "qvbrSettings")
            <*> (x .:? "slowPal")
      )

instance Hashable H264Settings

instance NFData H264Settings

instance ToJSON H264Settings where
  toJSON H264Settings' {..} =
    object
      ( catMaybes
          [ ("hrdBufferInitialFillPercentage" .=)
              <$> _hsHrdBufferInitialFillPercentage,
            ("temporalAdaptiveQuantization" .=)
              <$> _hsTemporalAdaptiveQuantization,
            ("flickerAdaptiveQuantization" .=)
              <$> _hsFlickerAdaptiveQuantization,
            ("qualityTuningLevel" .=) <$> _hsQualityTuningLevel,
            ("interlaceMode" .=) <$> _hsInterlaceMode,
            ("repeatPps" .=) <$> _hsRepeatPps,
            ("fieldEncoding" .=) <$> _hsFieldEncoding,
            ("telecine" .=) <$> _hsTelecine,
            ("gopBReference" .=) <$> _hsGopBReference,
            ("spatialAdaptiveQuantization" .=)
              <$> _hsSpatialAdaptiveQuantization,
            ("framerateNumerator" .=) <$> _hsFramerateNumerator,
            ("rateControlMode" .=) <$> _hsRateControlMode,
            ("numberReferenceFrames" .=)
              <$> _hsNumberReferenceFrames,
            ("slices" .=) <$> _hsSlices,
            ("entropyEncoding" .=) <$> _hsEntropyEncoding,
            ("gopSizeUnits" .=) <$> _hsGopSizeUnits,
            ("codecProfile" .=) <$> _hsCodecProfile,
            ("gopSize" .=) <$> _hsGopSize,
            ("framerateDenominator" .=)
              <$> _hsFramerateDenominator,
            ("softness" .=) <$> _hsSoftness,
            ("parNumerator" .=) <$> _hsParNumerator,
            ("sceneChangeDetect" .=) <$> _hsSceneChangeDetect,
            ("minIInterval" .=) <$> _hsMinIInterval,
            ("unregisteredSeiTimecode" .=)
              <$> _hsUnregisteredSeiTimecode,
            ("scanTypeConversionMode" .=)
              <$> _hsScanTypeConversionMode,
            ("parControl" .=) <$> _hsParControl,
            ("gopClosedCadence" .=) <$> _hsGopClosedCadence,
            ("parDenominator" .=) <$> _hsParDenominator,
            ("maxBitrate" .=) <$> _hsMaxBitrate,
            ("dynamicSubGop" .=) <$> _hsDynamicSubGop,
            ("syntax" .=) <$> _hsSyntax,
            ("hrdBufferSize" .=) <$> _hsHrdBufferSize,
            ("adaptiveQuantization" .=)
              <$> _hsAdaptiveQuantization,
            ("framerateControl" .=) <$> _hsFramerateControl,
            ("numberBFramesBetweenReferenceFrames" .=)
              <$> _hsNumberBFramesBetweenReferenceFrames,
            ("framerateConversionAlgorithm" .=)
              <$> _hsFramerateConversionAlgorithm,
            ("codecLevel" .=) <$> _hsCodecLevel,
            ("bitrate" .=) <$> _hsBitrate,
            ("qvbrSettings" .=) <$> _hsQvbrSettings,
            ("slowPal" .=) <$> _hsSlowPal
          ]
      )
