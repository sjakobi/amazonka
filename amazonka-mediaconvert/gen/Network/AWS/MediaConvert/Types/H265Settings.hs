{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265Settings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265Settings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.H265AdaptiveQuantization
import Network.AWS.MediaConvert.Types.H265AlternateTransferFunctionSei
import Network.AWS.MediaConvert.Types.H265CodecLevel
import Network.AWS.MediaConvert.Types.H265CodecProfile
import Network.AWS.MediaConvert.Types.H265DynamicSubGop
import Network.AWS.MediaConvert.Types.H265FlickerAdaptiveQuantization
import Network.AWS.MediaConvert.Types.H265FramerateControl
import Network.AWS.MediaConvert.Types.H265FramerateConversionAlgorithm
import Network.AWS.MediaConvert.Types.H265GopBReference
import Network.AWS.MediaConvert.Types.H265GopSizeUnits
import Network.AWS.MediaConvert.Types.H265InterlaceMode
import Network.AWS.MediaConvert.Types.H265ParControl
import Network.AWS.MediaConvert.Types.H265QualityTuningLevel
import Network.AWS.MediaConvert.Types.H265QvbrSettings
import Network.AWS.MediaConvert.Types.H265RateControlMode
import Network.AWS.MediaConvert.Types.H265SampleAdaptiveOffsetFilterMode
import Network.AWS.MediaConvert.Types.H265ScanTypeConversionMode
import Network.AWS.MediaConvert.Types.H265SceneChangeDetect
import Network.AWS.MediaConvert.Types.H265SlowPal
import Network.AWS.MediaConvert.Types.H265SpatialAdaptiveQuantization
import Network.AWS.MediaConvert.Types.H265Telecine
import Network.AWS.MediaConvert.Types.H265TemporalAdaptiveQuantization
import Network.AWS.MediaConvert.Types.H265TemporalIds
import Network.AWS.MediaConvert.Types.H265Tiles
import Network.AWS.MediaConvert.Types.H265UnregisteredSeiTimecode
import Network.AWS.MediaConvert.Types.H265WriteMp4PackagingType
import Network.AWS.Prelude

-- | Settings for H265 codec
--
-- /See:/ 'h265Settings' smart constructor.
data H265Settings = H265Settings'
  { _hssHrdBufferInitialFillPercentage ::
      !(Maybe Nat),
    _hssTemporalAdaptiveQuantization ::
      !(Maybe H265TemporalAdaptiveQuantization),
    _hssFlickerAdaptiveQuantization ::
      !(Maybe H265FlickerAdaptiveQuantization),
    _hssQualityTuningLevel ::
      !(Maybe H265QualityTuningLevel),
    _hssInterlaceMode ::
      !(Maybe H265InterlaceMode),
    _hssTelecine :: !(Maybe H265Telecine),
    _hssGopBReference ::
      !(Maybe H265GopBReference),
    _hssSpatialAdaptiveQuantization ::
      !(Maybe H265SpatialAdaptiveQuantization),
    _hssFramerateNumerator :: !(Maybe Nat),
    _hssRateControlMode ::
      !(Maybe H265RateControlMode),
    _hssNumberReferenceFrames :: !(Maybe Nat),
    _hssSlices :: !(Maybe Nat),
    _hssWriteMp4PackagingType ::
      !(Maybe H265WriteMp4PackagingType),
    _hssGopSizeUnits :: !(Maybe H265GopSizeUnits),
    _hssCodecProfile :: !(Maybe H265CodecProfile),
    _hssGopSize :: !(Maybe Double),
    _hssFramerateDenominator :: !(Maybe Nat),
    _hssParNumerator :: !(Maybe Nat),
    _hssTiles :: !(Maybe H265Tiles),
    _hssSceneChangeDetect ::
      !(Maybe H265SceneChangeDetect),
    _hssMinIInterval :: !(Maybe Nat),
    _hssUnregisteredSeiTimecode ::
      !(Maybe H265UnregisteredSeiTimecode),
    _hssScanTypeConversionMode ::
      !(Maybe H265ScanTypeConversionMode),
    _hssParControl :: !(Maybe H265ParControl),
    _hssGopClosedCadence :: !(Maybe Nat),
    _hssParDenominator :: !(Maybe Nat),
    _hssMaxBitrate :: !(Maybe Nat),
    _hssDynamicSubGop ::
      !(Maybe H265DynamicSubGop),
    _hssAlternateTransferFunctionSei ::
      !(Maybe H265AlternateTransferFunctionSei),
    _hssHrdBufferSize :: !(Maybe Nat),
    _hssAdaptiveQuantization ::
      !(Maybe H265AdaptiveQuantization),
    _hssFramerateControl ::
      !(Maybe H265FramerateControl),
    _hssNumberBFramesBetweenReferenceFrames ::
      !(Maybe Nat),
    _hssFramerateConversionAlgorithm ::
      !(Maybe H265FramerateConversionAlgorithm),
    _hssCodecLevel :: !(Maybe H265CodecLevel),
    _hssBitrate :: !(Maybe Nat),
    _hssTemporalIds :: !(Maybe H265TemporalIds),
    _hssQvbrSettings :: !(Maybe H265QvbrSettings),
    _hssSampleAdaptiveOffsetFilterMode ::
      !(Maybe H265SampleAdaptiveOffsetFilterMode),
    _hssSlowPal :: !(Maybe H265SlowPal)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'H265Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hssHrdBufferInitialFillPercentage' - Percentage of the buffer that should initially be filled (HRD buffer model).
--
-- * 'hssTemporalAdaptiveQuantization' - Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to disable this feature. Related setting: When you enable temporal quantization, adjust the strength of the filter with the setting Adaptive quantization (adaptiveQuantization).
--
-- * 'hssFlickerAdaptiveQuantization' - Enable this setting to have the encoder reduce I-frame pop. I-frame pop appears as a visual flicker that can arise when the encoder saves bits by copying some macroblocks many times from frame to frame, and then refreshes them at the I-frame. When you enable this setting, the encoder updates these macroblocks slightly more often to smooth out the flicker. This setting is disabled by default. Related setting: In addition to enabling this setting, you must also set adaptiveQuantization to a value other than Off (OFF).
--
-- * 'hssQualityTuningLevel' - Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding.
--
-- * 'hssInterlaceMode' - Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
--
-- * 'hssTelecine' - This field applies only if the Streams > Advanced > Framerate (framerate) field  is set to 29.970. This field works with the Streams > Advanced > Preprocessors > Deinterlacer  field (deinterlace_mode) and the Streams > Advanced > Interlaced Mode field (interlace_mode)  to identify the scan type for the output: Progressive, Interlaced, Hard Telecine or Soft Telecine. - Hard: produces 29.97i output from 23.976 input. - Soft: produces 23.976; the player converts this output to 29.97i.
--
-- * 'hssGopBReference' - If enable, use reference B frames for GOP structures that have B frames > 1.
--
-- * 'hssSpatialAdaptiveQuantization' - Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization (adaptiveQuantization) depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher.
--
-- * 'hssFramerateNumerator' - When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
--
-- * 'hssRateControlMode' - Use this setting to specify whether this output has a variable bitrate (VBR), constant bitrate (CBR) or quality-defined variable bitrate (QVBR).
--
-- * 'hssNumberReferenceFrames' - Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding.
--
-- * 'hssSlices' - Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
--
-- * 'hssWriteMp4PackagingType' - If the location of parameter set NAL units doesn't matter in your workflow, ignore this setting. Use this setting only with CMAF or DASH outputs, or with standalone file outputs in an MPEG-4 container (MP4 outputs). Choose HVC1 to mark your output as HVC1. This makes your output compliant with the following specification: ISO IECJTC1 SC29 N13798 Text ISO/IEC FDIS 14496-15 3rd Edition. For these outputs, the service stores parameter set NAL units in the sample headers but not in the samples directly. For MP4 outputs, when you choose HVC1, your output video might not work properly with some downstream systems and video players. The service defaults to marking your output as HEV1. For these outputs, the service writes parameter set NAL units directly into the samples.
--
-- * 'hssGopSizeUnits' - Indicates if the GOP Size in H265 is specified in frames or seconds. If seconds the system will convert the GOP Size into a frame count at run time.
--
-- * 'hssCodecProfile' - Represents the Profile and Tier, per the HEVC (H.265) specification. Selections are grouped as [Profile] / [Tier], so "Main/High" represents Main Profile with High Tier. 4:2:2 profiles are only available with the HEVC 4:2:2 License.
--
-- * 'hssGopSize' - GOP Length (keyframe interval) in frames or seconds. Must be greater than zero.
--
-- * 'hssFramerateDenominator' - When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
--
-- * 'hssParNumerator' - Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40.
--
-- * 'hssTiles' - Enable use of tiles, allowing horizontal as well as vertical subdivision of the encoded pictures.
--
-- * 'hssSceneChangeDetect' - Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default. If this output uses QVBR, choose Transition detection (TRANSITION_DETECTION) for further video quality improvement. For more information about QVBR, see https://docs.aws.amazon.com/console/mediaconvert/cbr-vbr-qvbr.
--
-- * 'hssMinIInterval' - Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. This setting is only used when Scene Change Detect is enabled. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
--
-- * 'hssUnregisteredSeiTimecode' - Inserts timecode for each frame as 4 bytes of an unregistered SEI message.
--
-- * 'hssScanTypeConversionMode' - Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE).
--
-- * 'hssParControl' - Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
--
-- * 'hssGopClosedCadence' - Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
--
-- * 'hssParDenominator' - Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33.
--
-- * 'hssMaxBitrate' - Maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. Required when Rate control mode is QVBR.
--
-- * 'hssDynamicSubGop' - Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames).
--
-- * 'hssAlternateTransferFunctionSei' - Enables Alternate Transfer Function SEI message for outputs using Hybrid Log Gamma (HLG) Electro-Optical Transfer Function (EOTF).
--
-- * 'hssHrdBufferSize' - Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000.
--
-- * 'hssAdaptiveQuantization' - Specify the strength of any adaptive quantization filters that you enable. The value that you choose here applies to the following settings: Flicker adaptive quantization (flickerAdaptiveQuantization), Spatial adaptive quantization (spatialAdaptiveQuantization), and Temporal adaptive quantization (temporalAdaptiveQuantization).
--
-- * 'hssFramerateControl' - If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.
--
-- * 'hssNumberBFramesBetweenReferenceFrames' - Number of B-frames between reference frames.
--
-- * 'hssFramerateConversionAlgorithm' - Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
--
-- * 'hssCodecLevel' - H.265 Level.
--
-- * 'hssBitrate' - Specify the average bitrate in bits per second. Required for VBR and CBR. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000.
--
-- * 'hssTemporalIds' - Enables temporal layer identifiers in the encoded bitstream. Up to 3 layers are supported depending on GOP structure: I- and P-frames form one layer, reference B-frames can form a second layer and non-reference b-frames can form a third layer. Decoders can optionally decode only the lower temporal layers to generate a lower frame rate output. For example, given a bitstream with temporal IDs and with b-frames = 1 (i.e. IbPbPb display order), a decoder could decode all the frames for full frame rate output or only the I and P frames (lowest temporal layer) for a half frame rate output.
--
-- * 'hssQvbrSettings' - Settings for quality-defined variable bitrate encoding with the H.265 codec. Required when you set Rate control mode to QVBR. Not valid when you set Rate control mode to a value other than QVBR, or when you don't define Rate control mode.
--
-- * 'hssSampleAdaptiveOffsetFilterMode' - Specify Sample Adaptive Offset (SAO) filter strength.  Adaptive mode dynamically selects best strength based on content
--
-- * 'hssSlowPal' - Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1.
h265Settings ::
  H265Settings
h265Settings =
  H265Settings'
    { _hssHrdBufferInitialFillPercentage =
        Nothing,
      _hssTemporalAdaptiveQuantization = Nothing,
      _hssFlickerAdaptiveQuantization = Nothing,
      _hssQualityTuningLevel = Nothing,
      _hssInterlaceMode = Nothing,
      _hssTelecine = Nothing,
      _hssGopBReference = Nothing,
      _hssSpatialAdaptiveQuantization = Nothing,
      _hssFramerateNumerator = Nothing,
      _hssRateControlMode = Nothing,
      _hssNumberReferenceFrames = Nothing,
      _hssSlices = Nothing,
      _hssWriteMp4PackagingType = Nothing,
      _hssGopSizeUnits = Nothing,
      _hssCodecProfile = Nothing,
      _hssGopSize = Nothing,
      _hssFramerateDenominator = Nothing,
      _hssParNumerator = Nothing,
      _hssTiles = Nothing,
      _hssSceneChangeDetect = Nothing,
      _hssMinIInterval = Nothing,
      _hssUnregisteredSeiTimecode = Nothing,
      _hssScanTypeConversionMode = Nothing,
      _hssParControl = Nothing,
      _hssGopClosedCadence = Nothing,
      _hssParDenominator = Nothing,
      _hssMaxBitrate = Nothing,
      _hssDynamicSubGop = Nothing,
      _hssAlternateTransferFunctionSei = Nothing,
      _hssHrdBufferSize = Nothing,
      _hssAdaptiveQuantization = Nothing,
      _hssFramerateControl = Nothing,
      _hssNumberBFramesBetweenReferenceFrames = Nothing,
      _hssFramerateConversionAlgorithm = Nothing,
      _hssCodecLevel = Nothing,
      _hssBitrate = Nothing,
      _hssTemporalIds = Nothing,
      _hssQvbrSettings = Nothing,
      _hssSampleAdaptiveOffsetFilterMode = Nothing,
      _hssSlowPal = Nothing
    }

-- | Percentage of the buffer that should initially be filled (HRD buffer model).
hssHrdBufferInitialFillPercentage :: Lens' H265Settings (Maybe Natural)
hssHrdBufferInitialFillPercentage = lens _hssHrdBufferInitialFillPercentage (\s a -> s {_hssHrdBufferInitialFillPercentage = a}) . mapping _Nat

-- | Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to disable this feature. Related setting: When you enable temporal quantization, adjust the strength of the filter with the setting Adaptive quantization (adaptiveQuantization).
hssTemporalAdaptiveQuantization :: Lens' H265Settings (Maybe H265TemporalAdaptiveQuantization)
hssTemporalAdaptiveQuantization = lens _hssTemporalAdaptiveQuantization (\s a -> s {_hssTemporalAdaptiveQuantization = a})

-- | Enable this setting to have the encoder reduce I-frame pop. I-frame pop appears as a visual flicker that can arise when the encoder saves bits by copying some macroblocks many times from frame to frame, and then refreshes them at the I-frame. When you enable this setting, the encoder updates these macroblocks slightly more often to smooth out the flicker. This setting is disabled by default. Related setting: In addition to enabling this setting, you must also set adaptiveQuantization to a value other than Off (OFF).
hssFlickerAdaptiveQuantization :: Lens' H265Settings (Maybe H265FlickerAdaptiveQuantization)
hssFlickerAdaptiveQuantization = lens _hssFlickerAdaptiveQuantization (\s a -> s {_hssFlickerAdaptiveQuantization = a})

-- | Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding.
hssQualityTuningLevel :: Lens' H265Settings (Maybe H265QualityTuningLevel)
hssQualityTuningLevel = lens _hssQualityTuningLevel (\s a -> s {_hssQualityTuningLevel = a})

-- | Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
hssInterlaceMode :: Lens' H265Settings (Maybe H265InterlaceMode)
hssInterlaceMode = lens _hssInterlaceMode (\s a -> s {_hssInterlaceMode = a})

-- | This field applies only if the Streams > Advanced > Framerate (framerate) field  is set to 29.970. This field works with the Streams > Advanced > Preprocessors > Deinterlacer  field (deinterlace_mode) and the Streams > Advanced > Interlaced Mode field (interlace_mode)  to identify the scan type for the output: Progressive, Interlaced, Hard Telecine or Soft Telecine. - Hard: produces 29.97i output from 23.976 input. - Soft: produces 23.976; the player converts this output to 29.97i.
hssTelecine :: Lens' H265Settings (Maybe H265Telecine)
hssTelecine = lens _hssTelecine (\s a -> s {_hssTelecine = a})

-- | If enable, use reference B frames for GOP structures that have B frames > 1.
hssGopBReference :: Lens' H265Settings (Maybe H265GopBReference)
hssGopBReference = lens _hssGopBReference (\s a -> s {_hssGopBReference = a})

-- | Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization (adaptiveQuantization) depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher.
hssSpatialAdaptiveQuantization :: Lens' H265Settings (Maybe H265SpatialAdaptiveQuantization)
hssSpatialAdaptiveQuantization = lens _hssSpatialAdaptiveQuantization (\s a -> s {_hssSpatialAdaptiveQuantization = a})

-- | When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
hssFramerateNumerator :: Lens' H265Settings (Maybe Natural)
hssFramerateNumerator = lens _hssFramerateNumerator (\s a -> s {_hssFramerateNumerator = a}) . mapping _Nat

-- | Use this setting to specify whether this output has a variable bitrate (VBR), constant bitrate (CBR) or quality-defined variable bitrate (QVBR).
hssRateControlMode :: Lens' H265Settings (Maybe H265RateControlMode)
hssRateControlMode = lens _hssRateControlMode (\s a -> s {_hssRateControlMode = a})

-- | Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding.
hssNumberReferenceFrames :: Lens' H265Settings (Maybe Natural)
hssNumberReferenceFrames = lens _hssNumberReferenceFrames (\s a -> s {_hssNumberReferenceFrames = a}) . mapping _Nat

-- | Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
hssSlices :: Lens' H265Settings (Maybe Natural)
hssSlices = lens _hssSlices (\s a -> s {_hssSlices = a}) . mapping _Nat

-- | If the location of parameter set NAL units doesn't matter in your workflow, ignore this setting. Use this setting only with CMAF or DASH outputs, or with standalone file outputs in an MPEG-4 container (MP4 outputs). Choose HVC1 to mark your output as HVC1. This makes your output compliant with the following specification: ISO IECJTC1 SC29 N13798 Text ISO/IEC FDIS 14496-15 3rd Edition. For these outputs, the service stores parameter set NAL units in the sample headers but not in the samples directly. For MP4 outputs, when you choose HVC1, your output video might not work properly with some downstream systems and video players. The service defaults to marking your output as HEV1. For these outputs, the service writes parameter set NAL units directly into the samples.
hssWriteMp4PackagingType :: Lens' H265Settings (Maybe H265WriteMp4PackagingType)
hssWriteMp4PackagingType = lens _hssWriteMp4PackagingType (\s a -> s {_hssWriteMp4PackagingType = a})

-- | Indicates if the GOP Size in H265 is specified in frames or seconds. If seconds the system will convert the GOP Size into a frame count at run time.
hssGopSizeUnits :: Lens' H265Settings (Maybe H265GopSizeUnits)
hssGopSizeUnits = lens _hssGopSizeUnits (\s a -> s {_hssGopSizeUnits = a})

-- | Represents the Profile and Tier, per the HEVC (H.265) specification. Selections are grouped as [Profile] / [Tier], so "Main/High" represents Main Profile with High Tier. 4:2:2 profiles are only available with the HEVC 4:2:2 License.
hssCodecProfile :: Lens' H265Settings (Maybe H265CodecProfile)
hssCodecProfile = lens _hssCodecProfile (\s a -> s {_hssCodecProfile = a})

-- | GOP Length (keyframe interval) in frames or seconds. Must be greater than zero.
hssGopSize :: Lens' H265Settings (Maybe Double)
hssGopSize = lens _hssGopSize (\s a -> s {_hssGopSize = a})

-- | When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
hssFramerateDenominator :: Lens' H265Settings (Maybe Natural)
hssFramerateDenominator = lens _hssFramerateDenominator (\s a -> s {_hssFramerateDenominator = a}) . mapping _Nat

-- | Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40.
hssParNumerator :: Lens' H265Settings (Maybe Natural)
hssParNumerator = lens _hssParNumerator (\s a -> s {_hssParNumerator = a}) . mapping _Nat

-- | Enable use of tiles, allowing horizontal as well as vertical subdivision of the encoded pictures.
hssTiles :: Lens' H265Settings (Maybe H265Tiles)
hssTiles = lens _hssTiles (\s a -> s {_hssTiles = a})

-- | Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default. If this output uses QVBR, choose Transition detection (TRANSITION_DETECTION) for further video quality improvement. For more information about QVBR, see https://docs.aws.amazon.com/console/mediaconvert/cbr-vbr-qvbr.
hssSceneChangeDetect :: Lens' H265Settings (Maybe H265SceneChangeDetect)
hssSceneChangeDetect = lens _hssSceneChangeDetect (\s a -> s {_hssSceneChangeDetect = a})

-- | Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. This setting is only used when Scene Change Detect is enabled. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
hssMinIInterval :: Lens' H265Settings (Maybe Natural)
hssMinIInterval = lens _hssMinIInterval (\s a -> s {_hssMinIInterval = a}) . mapping _Nat

-- | Inserts timecode for each frame as 4 bytes of an unregistered SEI message.
hssUnregisteredSeiTimecode :: Lens' H265Settings (Maybe H265UnregisteredSeiTimecode)
hssUnregisteredSeiTimecode = lens _hssUnregisteredSeiTimecode (\s a -> s {_hssUnregisteredSeiTimecode = a})

-- | Use this setting for interlaced outputs, when your output frame rate is half of your input frame rate. In this situation, choose Optimized interlacing (INTERLACED_OPTIMIZE) to create a better quality interlaced output. In this case, each progressive frame from the input corresponds to an interlaced field in the output. Keep the default value, Basic interlacing (INTERLACED), for all other output frame rates. With basic interlacing, MediaConvert performs any frame rate conversion first and then interlaces the frames. When you choose Optimized interlacing and you set your output frame rate to a value that isn't suitable for optimized interlacing, MediaConvert automatically falls back to basic interlacing. Required settings: To use optimized interlacing, you must set Telecine (telecine) to None (NONE) or Soft (SOFT). You can't use optimized interlacing for hard telecine outputs. You must also set Interlace mode (interlaceMode) to a value other than Progressive (PROGRESSIVE).
hssScanTypeConversionMode :: Lens' H265Settings (Maybe H265ScanTypeConversionMode)
hssScanTypeConversionMode = lens _hssScanTypeConversionMode (\s a -> s {_hssScanTypeConversionMode = a})

-- | Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.
hssParControl :: Lens' H265Settings (Maybe H265ParControl)
hssParControl = lens _hssParControl (\s a -> s {_hssParControl = a})

-- | Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
hssGopClosedCadence :: Lens' H265Settings (Maybe Natural)
hssGopClosedCadence = lens _hssGopClosedCadence (\s a -> s {_hssGopClosedCadence = a}) . mapping _Nat

-- | Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33.
hssParDenominator :: Lens' H265Settings (Maybe Natural)
hssParDenominator = lens _hssParDenominator (\s a -> s {_hssParDenominator = a}) . mapping _Nat

-- | Maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. Required when Rate control mode is QVBR.
hssMaxBitrate :: Lens' H265Settings (Maybe Natural)
hssMaxBitrate = lens _hssMaxBitrate (\s a -> s {_hssMaxBitrate = a}) . mapping _Nat

-- | Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames).
hssDynamicSubGop :: Lens' H265Settings (Maybe H265DynamicSubGop)
hssDynamicSubGop = lens _hssDynamicSubGop (\s a -> s {_hssDynamicSubGop = a})

-- | Enables Alternate Transfer Function SEI message for outputs using Hybrid Log Gamma (HLG) Electro-Optical Transfer Function (EOTF).
hssAlternateTransferFunctionSei :: Lens' H265Settings (Maybe H265AlternateTransferFunctionSei)
hssAlternateTransferFunctionSei = lens _hssAlternateTransferFunctionSei (\s a -> s {_hssAlternateTransferFunctionSei = a})

-- | Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000.
hssHrdBufferSize :: Lens' H265Settings (Maybe Natural)
hssHrdBufferSize = lens _hssHrdBufferSize (\s a -> s {_hssHrdBufferSize = a}) . mapping _Nat

-- | Specify the strength of any adaptive quantization filters that you enable. The value that you choose here applies to the following settings: Flicker adaptive quantization (flickerAdaptiveQuantization), Spatial adaptive quantization (spatialAdaptiveQuantization), and Temporal adaptive quantization (temporalAdaptiveQuantization).
hssAdaptiveQuantization :: Lens' H265Settings (Maybe H265AdaptiveQuantization)
hssAdaptiveQuantization = lens _hssAdaptiveQuantization (\s a -> s {_hssAdaptiveQuantization = a})

-- | If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.
hssFramerateControl :: Lens' H265Settings (Maybe H265FramerateControl)
hssFramerateControl = lens _hssFramerateControl (\s a -> s {_hssFramerateControl = a})

-- | Number of B-frames between reference frames.
hssNumberBFramesBetweenReferenceFrames :: Lens' H265Settings (Maybe Natural)
hssNumberBFramesBetweenReferenceFrames = lens _hssNumberBFramesBetweenReferenceFrames (\s a -> s {_hssNumberBFramesBetweenReferenceFrames = a}) . mapping _Nat

-- | Choose the method that you want MediaConvert to use when increasing or decreasing the frame rate. We recommend using drop duplicate (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to 30 fps. For numerically complex conversions, you can use interpolate (INTERPOLATE) to avoid stutter. This results in a smooth picture, but might introduce undesirable video artifacts. For complex frame rate conversions, especially if your source video has already been converted from its original cadence, use FrameFormer (FRAMEFORMER) to do motion-compensated interpolation. FrameFormer chooses the best conversion method frame by frame. Note that using FrameFormer increases the transcoding time and incurs a significant add-on cost.
hssFramerateConversionAlgorithm :: Lens' H265Settings (Maybe H265FramerateConversionAlgorithm)
hssFramerateConversionAlgorithm = lens _hssFramerateConversionAlgorithm (\s a -> s {_hssFramerateConversionAlgorithm = a})

-- | H.265 Level.
hssCodecLevel :: Lens' H265Settings (Maybe H265CodecLevel)
hssCodecLevel = lens _hssCodecLevel (\s a -> s {_hssCodecLevel = a})

-- | Specify the average bitrate in bits per second. Required for VBR and CBR. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000.
hssBitrate :: Lens' H265Settings (Maybe Natural)
hssBitrate = lens _hssBitrate (\s a -> s {_hssBitrate = a}) . mapping _Nat

-- | Enables temporal layer identifiers in the encoded bitstream. Up to 3 layers are supported depending on GOP structure: I- and P-frames form one layer, reference B-frames can form a second layer and non-reference b-frames can form a third layer. Decoders can optionally decode only the lower temporal layers to generate a lower frame rate output. For example, given a bitstream with temporal IDs and with b-frames = 1 (i.e. IbPbPb display order), a decoder could decode all the frames for full frame rate output or only the I and P frames (lowest temporal layer) for a half frame rate output.
hssTemporalIds :: Lens' H265Settings (Maybe H265TemporalIds)
hssTemporalIds = lens _hssTemporalIds (\s a -> s {_hssTemporalIds = a})

-- | Settings for quality-defined variable bitrate encoding with the H.265 codec. Required when you set Rate control mode to QVBR. Not valid when you set Rate control mode to a value other than QVBR, or when you don't define Rate control mode.
hssQvbrSettings :: Lens' H265Settings (Maybe H265QvbrSettings)
hssQvbrSettings = lens _hssQvbrSettings (\s a -> s {_hssQvbrSettings = a})

-- | Specify Sample Adaptive Offset (SAO) filter strength.  Adaptive mode dynamically selects best strength based on content
hssSampleAdaptiveOffsetFilterMode :: Lens' H265Settings (Maybe H265SampleAdaptiveOffsetFilterMode)
hssSampleAdaptiveOffsetFilterMode = lens _hssSampleAdaptiveOffsetFilterMode (\s a -> s {_hssSampleAdaptiveOffsetFilterMode = a})

-- | Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1.
hssSlowPal :: Lens' H265Settings (Maybe H265SlowPal)
hssSlowPal = lens _hssSlowPal (\s a -> s {_hssSlowPal = a})

instance FromJSON H265Settings where
  parseJSON =
    withObject
      "H265Settings"
      ( \x ->
          H265Settings'
            <$> (x .:? "hrdBufferInitialFillPercentage")
            <*> (x .:? "temporalAdaptiveQuantization")
            <*> (x .:? "flickerAdaptiveQuantization")
            <*> (x .:? "qualityTuningLevel")
            <*> (x .:? "interlaceMode")
            <*> (x .:? "telecine")
            <*> (x .:? "gopBReference")
            <*> (x .:? "spatialAdaptiveQuantization")
            <*> (x .:? "framerateNumerator")
            <*> (x .:? "rateControlMode")
            <*> (x .:? "numberReferenceFrames")
            <*> (x .:? "slices")
            <*> (x .:? "writeMp4PackagingType")
            <*> (x .:? "gopSizeUnits")
            <*> (x .:? "codecProfile")
            <*> (x .:? "gopSize")
            <*> (x .:? "framerateDenominator")
            <*> (x .:? "parNumerator")
            <*> (x .:? "tiles")
            <*> (x .:? "sceneChangeDetect")
            <*> (x .:? "minIInterval")
            <*> (x .:? "unregisteredSeiTimecode")
            <*> (x .:? "scanTypeConversionMode")
            <*> (x .:? "parControl")
            <*> (x .:? "gopClosedCadence")
            <*> (x .:? "parDenominator")
            <*> (x .:? "maxBitrate")
            <*> (x .:? "dynamicSubGop")
            <*> (x .:? "alternateTransferFunctionSei")
            <*> (x .:? "hrdBufferSize")
            <*> (x .:? "adaptiveQuantization")
            <*> (x .:? "framerateControl")
            <*> (x .:? "numberBFramesBetweenReferenceFrames")
            <*> (x .:? "framerateConversionAlgorithm")
            <*> (x .:? "codecLevel")
            <*> (x .:? "bitrate")
            <*> (x .:? "temporalIds")
            <*> (x .:? "qvbrSettings")
            <*> (x .:? "sampleAdaptiveOffsetFilterMode")
            <*> (x .:? "slowPal")
      )

instance Hashable H265Settings

instance NFData H265Settings

instance ToJSON H265Settings where
  toJSON H265Settings' {..} =
    object
      ( catMaybes
          [ ("hrdBufferInitialFillPercentage" .=)
              <$> _hssHrdBufferInitialFillPercentage,
            ("temporalAdaptiveQuantization" .=)
              <$> _hssTemporalAdaptiveQuantization,
            ("flickerAdaptiveQuantization" .=)
              <$> _hssFlickerAdaptiveQuantization,
            ("qualityTuningLevel" .=) <$> _hssQualityTuningLevel,
            ("interlaceMode" .=) <$> _hssInterlaceMode,
            ("telecine" .=) <$> _hssTelecine,
            ("gopBReference" .=) <$> _hssGopBReference,
            ("spatialAdaptiveQuantization" .=)
              <$> _hssSpatialAdaptiveQuantization,
            ("framerateNumerator" .=) <$> _hssFramerateNumerator,
            ("rateControlMode" .=) <$> _hssRateControlMode,
            ("numberReferenceFrames" .=)
              <$> _hssNumberReferenceFrames,
            ("slices" .=) <$> _hssSlices,
            ("writeMp4PackagingType" .=)
              <$> _hssWriteMp4PackagingType,
            ("gopSizeUnits" .=) <$> _hssGopSizeUnits,
            ("codecProfile" .=) <$> _hssCodecProfile,
            ("gopSize" .=) <$> _hssGopSize,
            ("framerateDenominator" .=)
              <$> _hssFramerateDenominator,
            ("parNumerator" .=) <$> _hssParNumerator,
            ("tiles" .=) <$> _hssTiles,
            ("sceneChangeDetect" .=) <$> _hssSceneChangeDetect,
            ("minIInterval" .=) <$> _hssMinIInterval,
            ("unregisteredSeiTimecode" .=)
              <$> _hssUnregisteredSeiTimecode,
            ("scanTypeConversionMode" .=)
              <$> _hssScanTypeConversionMode,
            ("parControl" .=) <$> _hssParControl,
            ("gopClosedCadence" .=) <$> _hssGopClosedCadence,
            ("parDenominator" .=) <$> _hssParDenominator,
            ("maxBitrate" .=) <$> _hssMaxBitrate,
            ("dynamicSubGop" .=) <$> _hssDynamicSubGop,
            ("alternateTransferFunctionSei" .=)
              <$> _hssAlternateTransferFunctionSei,
            ("hrdBufferSize" .=) <$> _hssHrdBufferSize,
            ("adaptiveQuantization" .=)
              <$> _hssAdaptiveQuantization,
            ("framerateControl" .=) <$> _hssFramerateControl,
            ("numberBFramesBetweenReferenceFrames" .=)
              <$> _hssNumberBFramesBetweenReferenceFrames,
            ("framerateConversionAlgorithm" .=)
              <$> _hssFramerateConversionAlgorithm,
            ("codecLevel" .=) <$> _hssCodecLevel,
            ("bitrate" .=) <$> _hssBitrate,
            ("temporalIds" .=) <$> _hssTemporalIds,
            ("qvbrSettings" .=) <$> _hssQvbrSettings,
            ("sampleAdaptiveOffsetFilterMode" .=)
              <$> _hssSampleAdaptiveOffsetFilterMode,
            ("slowPal" .=) <$> _hssSlowPal
          ]
      )
