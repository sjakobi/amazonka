{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H264Settings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264Settings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.AfdSignaling
import Network.AWS.MediaLive.Types.FixedAfd
import Network.AWS.MediaLive.Types.H264AdaptiveQuantization
import Network.AWS.MediaLive.Types.H264ColorMetadata
import Network.AWS.MediaLive.Types.H264ColorSpaceSettings
import Network.AWS.MediaLive.Types.H264EntropyEncoding
import Network.AWS.MediaLive.Types.H264FilterSettings
import Network.AWS.MediaLive.Types.H264FlickerAq
import Network.AWS.MediaLive.Types.H264ForceFieldPictures
import Network.AWS.MediaLive.Types.H264FramerateControl
import Network.AWS.MediaLive.Types.H264GopBReference
import Network.AWS.MediaLive.Types.H264GopSizeUnits
import Network.AWS.MediaLive.Types.H264Level
import Network.AWS.MediaLive.Types.H264LookAheadRateControl
import Network.AWS.MediaLive.Types.H264ParControl
import Network.AWS.MediaLive.Types.H264Profile
import Network.AWS.MediaLive.Types.H264QualityLevel
import Network.AWS.MediaLive.Types.H264RateControlMode
import Network.AWS.MediaLive.Types.H264ScanType
import Network.AWS.MediaLive.Types.H264SceneChangeDetect
import Network.AWS.MediaLive.Types.H264SpatialAq
import Network.AWS.MediaLive.Types.H264SubGopLength
import Network.AWS.MediaLive.Types.H264Syntax
import Network.AWS.MediaLive.Types.H264TemporalAq
import Network.AWS.MediaLive.Types.H264TimecodeInsertionBehavior
import Network.AWS.Prelude

-- | H264 Settings
--
-- /See:/ 'h264Settings' smart constructor.
data H264Settings = H264Settings'
  { _hsScanType ::
      !(Maybe H264ScanType),
    _hsTemporalAq :: !(Maybe H264TemporalAq),
    _hsBufSize :: !(Maybe Nat),
    _hsFlickerAq :: !(Maybe H264FlickerAq),
    _hsGopBReference ::
      !(Maybe H264GopBReference),
    _hsFramerateNumerator :: !(Maybe Nat),
    _hsRateControlMode ::
      !(Maybe H264RateControlMode),
    _hsSlices :: !(Maybe Nat),
    _hsQualityLevel :: !(Maybe H264QualityLevel),
    _hsColorMetadata ::
      !(Maybe H264ColorMetadata),
    _hsSubgopLength :: !(Maybe H264SubGopLength),
    _hsEntropyEncoding ::
      !(Maybe H264EntropyEncoding),
    _hsGopSizeUnits :: !(Maybe H264GopSizeUnits),
    _hsGopSize :: !(Maybe Double),
    _hsFramerateDenominator :: !(Maybe Nat),
    _hsFixedAfd :: !(Maybe FixedAfd),
    _hsSoftness :: !(Maybe Nat),
    _hsFilterSettings ::
      !(Maybe H264FilterSettings),
    _hsParNumerator :: !(Maybe Nat),
    _hsSpatialAq :: !(Maybe H264SpatialAq),
    _hsGopNumBFrames :: !(Maybe Nat),
    _hsSceneChangeDetect ::
      !(Maybe H264SceneChangeDetect),
    _hsTimecodeInsertion ::
      !(Maybe H264TimecodeInsertionBehavior),
    _hsColorSpaceSettings ::
      !(Maybe H264ColorSpaceSettings),
    _hsMinIInterval :: !(Maybe Nat),
    _hsQvbrQualityLevel :: !(Maybe Nat),
    _hsParControl :: !(Maybe H264ParControl),
    _hsBufFillPct :: !(Maybe Nat),
    _hsGopClosedCadence :: !(Maybe Nat),
    _hsParDenominator :: !(Maybe Nat),
    _hsMaxBitrate :: !(Maybe Nat),
    _hsSyntax :: !(Maybe H264Syntax),
    _hsNumRefFrames :: !(Maybe Nat),
    _hsLevel :: !(Maybe H264Level),
    _hsProfile :: !(Maybe H264Profile),
    _hsAdaptiveQuantization ::
      !(Maybe H264AdaptiveQuantization),
    _hsLookAheadRateControl ::
      !(Maybe H264LookAheadRateControl),
    _hsFramerateControl ::
      !(Maybe H264FramerateControl),
    _hsForceFieldPictures ::
      !(Maybe H264ForceFieldPictures),
    _hsBitrate :: !(Maybe Nat),
    _hsAfdSignaling :: !(Maybe AfdSignaling)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'H264Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hsScanType' - Sets the scan type of the output to progressive or top-field-first interlaced.
--
-- * 'hsTemporalAq' - If set to enabled, adjust quantization within each frame based on temporal variation of content complexity.
--
-- * 'hsBufSize' - Size of buffer (HRD buffer model) in bits.
--
-- * 'hsFlickerAq' - If set to enabled, adjust quantization within each frame to reduce flicker or 'pop' on I-frames.
--
-- * 'hsGopBReference' - Documentation update needed
--
-- * 'hsFramerateNumerator' - Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 = 23.976 fps.
--
-- * 'hsRateControlMode' - Rate control mode. QVBR: Quality will match the specified quality level except when it is constrained by the maximum bitrate.  Recommended if you or your viewers pay for bandwidth. VBR: Quality and bitrate vary, depending on the video complexity. Recommended instead of QVBR if you want to maintain a specific average bitrate over the duration of the channel. CBR: Quality varies, depending on the video complexity. Recommended only if you distribute your assets to devices that cannot handle variable bitrates. Multiplex: This rate control mode is only supported (and is required) when the video is being delivered to a MediaLive Multiplex in which case the rate control configuration is controlled by the properties within the Multiplex Program.
--
-- * 'hsSlices' - Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures. This field is optional; when no value is specified the encoder will choose the number of slices based on encode resolution.
--
-- * 'hsQualityLevel' - Leave as STANDARD_QUALITY or choose a different value (which might result in additional costs to run the channel). - ENHANCED_QUALITY: Produces a slightly better video quality without an increase in the bitrate. Has an effect only when the Rate control mode is QVBR or CBR. If this channel is in a MediaLive multiplex, the value must be ENHANCED_QUALITY. - STANDARD_QUALITY: Valid for any Rate control mode.
--
-- * 'hsColorMetadata' - Includes colorspace metadata in the output.
--
-- * 'hsSubgopLength' - If set to fixed, use gopNumBFrames B-frames per sub-GOP. If set to dynamic, optimize the number of B-frames used for each sub-GOP to improve visual quality.
--
-- * 'hsEntropyEncoding' - Entropy encoding mode.  Use cabac (must be in Main or High profile) or cavlc.
--
-- * 'hsGopSizeUnits' - Indicates if the gopSize is specified in frames or seconds. If seconds the system will convert the gopSize into a frame count at run time.
--
-- * 'hsGopSize' - GOP size (keyframe interval) in units of either frames or seconds per gopSizeUnits. If gopSizeUnits is frames, gopSize must be an integer and must be greater than or equal to 1. If gopSizeUnits is seconds, gopSize must be greater than 0, but need not be an integer.
--
-- * 'hsFramerateDenominator' - Framerate denominator.
--
-- * 'hsFixedAfd' - Four bit AFD value to write on all frames of video in the output stream. Only valid when afdSignaling is set to 'Fixed'.
--
-- * 'hsSoftness' - Softness. Selects quantizer matrix, larger values reduce high-frequency content in the encoded image.
--
-- * 'hsFilterSettings' - Optional filters that you can apply to an encode.
--
-- * 'hsParNumerator' - Pixel Aspect Ratio numerator.
--
-- * 'hsSpatialAq' - If set to enabled, adjust quantization within each frame based on spatial variation of content complexity.
--
-- * 'hsGopNumBFrames' - Number of B-frames between reference frames.
--
-- * 'hsSceneChangeDetect' - Scene change detection. - On: inserts I-frames when scene change is detected. - Off: does not force an I-frame when scene change is detected.
--
-- * 'hsTimecodeInsertion' - Determines how timecodes should be inserted into the video elementary stream. - 'disabled': Do not include timecodes - 'picTimingSei': Pass through picture timing SEI messages from the source specified in Timecode Config
--
-- * 'hsColorSpaceSettings' - Color Space settings
--
-- * 'hsMinIInterval' - Only meaningful if sceneChangeDetect is set to enabled.  Defaults to 5 if multiplex rate control is used.  Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
--
-- * 'hsQvbrQualityLevel' - Controls the target quality for the video encode. Applies only when the rate control mode is QVBR. Set values for the QVBR quality level field and Max bitrate field that suit your most important viewing devices. Recommended values are: - Primary screen: Quality level: 8 to 10. Max bitrate: 4M - PC or tablet: Quality level: 7. Max bitrate: 1.5M to 3M - Smartphone: Quality level: 6. Max bitrate: 1M to 1.5M
--
-- * 'hsParControl' - This field indicates how the output pixel aspect ratio is specified.  If "specified" is selected then the output video pixel aspect ratio is determined by parNumerator and parDenominator, else if "initializeFromSource" is selected then the output pixsel aspect ratio will be set equal to the input video pixel aspect ratio of the first input.
--
-- * 'hsBufFillPct' - Percentage of the buffer that should initially be filled (HRD buffer model).
--
-- * 'hsGopClosedCadence' - Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
--
-- * 'hsParDenominator' - Pixel Aspect Ratio denominator.
--
-- * 'hsMaxBitrate' - For QVBR: See the tooltip for Quality level For VBR: Set the maximum bitrate in order to accommodate expected spikes in the complexity of the video.
--
-- * 'hsSyntax' - Produces a bitstream compliant with SMPTE RP-2027.
--
-- * 'hsNumRefFrames' - Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding.
--
-- * 'hsLevel' - H.264 Level.
--
-- * 'hsProfile' - H.264 Profile.
--
-- * 'hsAdaptiveQuantization' - Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality.
--
-- * 'hsLookAheadRateControl' - Amount of lookahead. A value of low can decrease latency and memory usage, while high can produce better quality for certain content.
--
-- * 'hsFramerateControl' - This field indicates how the output video frame rate is specified.  If "specified" is selected then the output video frame rate is determined by framerateNumerator and framerateDenominator, else if "initializeFromSource" is selected then the output video frame rate will be set equal to the input video frame rate of the first input.
--
-- * 'hsForceFieldPictures' - This setting applies only when scan type is "interlaced." It controls whether coding is performed on a field basis or on a frame basis. (When the video is progressive, the coding is always performed on a frame basis.) enabled: Force MediaLive to code on a field basis, so that odd and even sets of fields are coded separately. disabled: Code the two sets of fields separately (on a field basis) or together (on a frame basis using PAFF), depending on what is most appropriate for the content.
--
-- * 'hsBitrate' - Average bitrate in bits/second. Required when the rate control mode is VBR or CBR. Not used for QVBR. In an MS Smooth output group, each output must have a unique value when its bitrate is rounded down to the nearest multiple of 1000.
--
-- * 'hsAfdSignaling' - Indicates that AFD values will be written into the output stream.  If afdSignaling is "auto", the system will try to preserve the input AFD value (in cases where multiple AFD values are valid). If set to "fixed", the AFD value will be the value configured in the fixedAfd parameter.
h264Settings ::
  H264Settings
h264Settings =
  H264Settings'
    { _hsScanType = Nothing,
      _hsTemporalAq = Nothing,
      _hsBufSize = Nothing,
      _hsFlickerAq = Nothing,
      _hsGopBReference = Nothing,
      _hsFramerateNumerator = Nothing,
      _hsRateControlMode = Nothing,
      _hsSlices = Nothing,
      _hsQualityLevel = Nothing,
      _hsColorMetadata = Nothing,
      _hsSubgopLength = Nothing,
      _hsEntropyEncoding = Nothing,
      _hsGopSizeUnits = Nothing,
      _hsGopSize = Nothing,
      _hsFramerateDenominator = Nothing,
      _hsFixedAfd = Nothing,
      _hsSoftness = Nothing,
      _hsFilterSettings = Nothing,
      _hsParNumerator = Nothing,
      _hsSpatialAq = Nothing,
      _hsGopNumBFrames = Nothing,
      _hsSceneChangeDetect = Nothing,
      _hsTimecodeInsertion = Nothing,
      _hsColorSpaceSettings = Nothing,
      _hsMinIInterval = Nothing,
      _hsQvbrQualityLevel = Nothing,
      _hsParControl = Nothing,
      _hsBufFillPct = Nothing,
      _hsGopClosedCadence = Nothing,
      _hsParDenominator = Nothing,
      _hsMaxBitrate = Nothing,
      _hsSyntax = Nothing,
      _hsNumRefFrames = Nothing,
      _hsLevel = Nothing,
      _hsProfile = Nothing,
      _hsAdaptiveQuantization = Nothing,
      _hsLookAheadRateControl = Nothing,
      _hsFramerateControl = Nothing,
      _hsForceFieldPictures = Nothing,
      _hsBitrate = Nothing,
      _hsAfdSignaling = Nothing
    }

-- | Sets the scan type of the output to progressive or top-field-first interlaced.
hsScanType :: Lens' H264Settings (Maybe H264ScanType)
hsScanType = lens _hsScanType (\s a -> s {_hsScanType = a})

-- | If set to enabled, adjust quantization within each frame based on temporal variation of content complexity.
hsTemporalAq :: Lens' H264Settings (Maybe H264TemporalAq)
hsTemporalAq = lens _hsTemporalAq (\s a -> s {_hsTemporalAq = a})

-- | Size of buffer (HRD buffer model) in bits.
hsBufSize :: Lens' H264Settings (Maybe Natural)
hsBufSize = lens _hsBufSize (\s a -> s {_hsBufSize = a}) . mapping _Nat

-- | If set to enabled, adjust quantization within each frame to reduce flicker or 'pop' on I-frames.
hsFlickerAq :: Lens' H264Settings (Maybe H264FlickerAq)
hsFlickerAq = lens _hsFlickerAq (\s a -> s {_hsFlickerAq = a})

-- | Documentation update needed
hsGopBReference :: Lens' H264Settings (Maybe H264GopBReference)
hsGopBReference = lens _hsGopBReference (\s a -> s {_hsGopBReference = a})

-- | Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 = 23.976 fps.
hsFramerateNumerator :: Lens' H264Settings (Maybe Natural)
hsFramerateNumerator = lens _hsFramerateNumerator (\s a -> s {_hsFramerateNumerator = a}) . mapping _Nat

-- | Rate control mode. QVBR: Quality will match the specified quality level except when it is constrained by the maximum bitrate.  Recommended if you or your viewers pay for bandwidth. VBR: Quality and bitrate vary, depending on the video complexity. Recommended instead of QVBR if you want to maintain a specific average bitrate over the duration of the channel. CBR: Quality varies, depending on the video complexity. Recommended only if you distribute your assets to devices that cannot handle variable bitrates. Multiplex: This rate control mode is only supported (and is required) when the video is being delivered to a MediaLive Multiplex in which case the rate control configuration is controlled by the properties within the Multiplex Program.
hsRateControlMode :: Lens' H264Settings (Maybe H264RateControlMode)
hsRateControlMode = lens _hsRateControlMode (\s a -> s {_hsRateControlMode = a})

-- | Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures. This field is optional; when no value is specified the encoder will choose the number of slices based on encode resolution.
hsSlices :: Lens' H264Settings (Maybe Natural)
hsSlices = lens _hsSlices (\s a -> s {_hsSlices = a}) . mapping _Nat

-- | Leave as STANDARD_QUALITY or choose a different value (which might result in additional costs to run the channel). - ENHANCED_QUALITY: Produces a slightly better video quality without an increase in the bitrate. Has an effect only when the Rate control mode is QVBR or CBR. If this channel is in a MediaLive multiplex, the value must be ENHANCED_QUALITY. - STANDARD_QUALITY: Valid for any Rate control mode.
hsQualityLevel :: Lens' H264Settings (Maybe H264QualityLevel)
hsQualityLevel = lens _hsQualityLevel (\s a -> s {_hsQualityLevel = a})

-- | Includes colorspace metadata in the output.
hsColorMetadata :: Lens' H264Settings (Maybe H264ColorMetadata)
hsColorMetadata = lens _hsColorMetadata (\s a -> s {_hsColorMetadata = a})

-- | If set to fixed, use gopNumBFrames B-frames per sub-GOP. If set to dynamic, optimize the number of B-frames used for each sub-GOP to improve visual quality.
hsSubgopLength :: Lens' H264Settings (Maybe H264SubGopLength)
hsSubgopLength = lens _hsSubgopLength (\s a -> s {_hsSubgopLength = a})

-- | Entropy encoding mode.  Use cabac (must be in Main or High profile) or cavlc.
hsEntropyEncoding :: Lens' H264Settings (Maybe H264EntropyEncoding)
hsEntropyEncoding = lens _hsEntropyEncoding (\s a -> s {_hsEntropyEncoding = a})

-- | Indicates if the gopSize is specified in frames or seconds. If seconds the system will convert the gopSize into a frame count at run time.
hsGopSizeUnits :: Lens' H264Settings (Maybe H264GopSizeUnits)
hsGopSizeUnits = lens _hsGopSizeUnits (\s a -> s {_hsGopSizeUnits = a})

-- | GOP size (keyframe interval) in units of either frames or seconds per gopSizeUnits. If gopSizeUnits is frames, gopSize must be an integer and must be greater than or equal to 1. If gopSizeUnits is seconds, gopSize must be greater than 0, but need not be an integer.
hsGopSize :: Lens' H264Settings (Maybe Double)
hsGopSize = lens _hsGopSize (\s a -> s {_hsGopSize = a})

-- | Framerate denominator.
hsFramerateDenominator :: Lens' H264Settings (Maybe Natural)
hsFramerateDenominator = lens _hsFramerateDenominator (\s a -> s {_hsFramerateDenominator = a}) . mapping _Nat

-- | Four bit AFD value to write on all frames of video in the output stream. Only valid when afdSignaling is set to 'Fixed'.
hsFixedAfd :: Lens' H264Settings (Maybe FixedAfd)
hsFixedAfd = lens _hsFixedAfd (\s a -> s {_hsFixedAfd = a})

-- | Softness. Selects quantizer matrix, larger values reduce high-frequency content in the encoded image.
hsSoftness :: Lens' H264Settings (Maybe Natural)
hsSoftness = lens _hsSoftness (\s a -> s {_hsSoftness = a}) . mapping _Nat

-- | Optional filters that you can apply to an encode.
hsFilterSettings :: Lens' H264Settings (Maybe H264FilterSettings)
hsFilterSettings = lens _hsFilterSettings (\s a -> s {_hsFilterSettings = a})

-- | Pixel Aspect Ratio numerator.
hsParNumerator :: Lens' H264Settings (Maybe Natural)
hsParNumerator = lens _hsParNumerator (\s a -> s {_hsParNumerator = a}) . mapping _Nat

-- | If set to enabled, adjust quantization within each frame based on spatial variation of content complexity.
hsSpatialAq :: Lens' H264Settings (Maybe H264SpatialAq)
hsSpatialAq = lens _hsSpatialAq (\s a -> s {_hsSpatialAq = a})

-- | Number of B-frames between reference frames.
hsGopNumBFrames :: Lens' H264Settings (Maybe Natural)
hsGopNumBFrames = lens _hsGopNumBFrames (\s a -> s {_hsGopNumBFrames = a}) . mapping _Nat

-- | Scene change detection. - On: inserts I-frames when scene change is detected. - Off: does not force an I-frame when scene change is detected.
hsSceneChangeDetect :: Lens' H264Settings (Maybe H264SceneChangeDetect)
hsSceneChangeDetect = lens _hsSceneChangeDetect (\s a -> s {_hsSceneChangeDetect = a})

-- | Determines how timecodes should be inserted into the video elementary stream. - 'disabled': Do not include timecodes - 'picTimingSei': Pass through picture timing SEI messages from the source specified in Timecode Config
hsTimecodeInsertion :: Lens' H264Settings (Maybe H264TimecodeInsertionBehavior)
hsTimecodeInsertion = lens _hsTimecodeInsertion (\s a -> s {_hsTimecodeInsertion = a})

-- | Color Space settings
hsColorSpaceSettings :: Lens' H264Settings (Maybe H264ColorSpaceSettings)
hsColorSpaceSettings = lens _hsColorSpaceSettings (\s a -> s {_hsColorSpaceSettings = a})

-- | Only meaningful if sceneChangeDetect is set to enabled.  Defaults to 5 if multiplex rate control is used.  Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
hsMinIInterval :: Lens' H264Settings (Maybe Natural)
hsMinIInterval = lens _hsMinIInterval (\s a -> s {_hsMinIInterval = a}) . mapping _Nat

-- | Controls the target quality for the video encode. Applies only when the rate control mode is QVBR. Set values for the QVBR quality level field and Max bitrate field that suit your most important viewing devices. Recommended values are: - Primary screen: Quality level: 8 to 10. Max bitrate: 4M - PC or tablet: Quality level: 7. Max bitrate: 1.5M to 3M - Smartphone: Quality level: 6. Max bitrate: 1M to 1.5M
hsQvbrQualityLevel :: Lens' H264Settings (Maybe Natural)
hsQvbrQualityLevel = lens _hsQvbrQualityLevel (\s a -> s {_hsQvbrQualityLevel = a}) . mapping _Nat

-- | This field indicates how the output pixel aspect ratio is specified.  If "specified" is selected then the output video pixel aspect ratio is determined by parNumerator and parDenominator, else if "initializeFromSource" is selected then the output pixsel aspect ratio will be set equal to the input video pixel aspect ratio of the first input.
hsParControl :: Lens' H264Settings (Maybe H264ParControl)
hsParControl = lens _hsParControl (\s a -> s {_hsParControl = a})

-- | Percentage of the buffer that should initially be filled (HRD buffer model).
hsBufFillPct :: Lens' H264Settings (Maybe Natural)
hsBufFillPct = lens _hsBufFillPct (\s a -> s {_hsBufFillPct = a}) . mapping _Nat

-- | Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
hsGopClosedCadence :: Lens' H264Settings (Maybe Natural)
hsGopClosedCadence = lens _hsGopClosedCadence (\s a -> s {_hsGopClosedCadence = a}) . mapping _Nat

-- | Pixel Aspect Ratio denominator.
hsParDenominator :: Lens' H264Settings (Maybe Natural)
hsParDenominator = lens _hsParDenominator (\s a -> s {_hsParDenominator = a}) . mapping _Nat

-- | For QVBR: See the tooltip for Quality level For VBR: Set the maximum bitrate in order to accommodate expected spikes in the complexity of the video.
hsMaxBitrate :: Lens' H264Settings (Maybe Natural)
hsMaxBitrate = lens _hsMaxBitrate (\s a -> s {_hsMaxBitrate = a}) . mapping _Nat

-- | Produces a bitstream compliant with SMPTE RP-2027.
hsSyntax :: Lens' H264Settings (Maybe H264Syntax)
hsSyntax = lens _hsSyntax (\s a -> s {_hsSyntax = a})

-- | Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding.
hsNumRefFrames :: Lens' H264Settings (Maybe Natural)
hsNumRefFrames = lens _hsNumRefFrames (\s a -> s {_hsNumRefFrames = a}) . mapping _Nat

-- | H.264 Level.
hsLevel :: Lens' H264Settings (Maybe H264Level)
hsLevel = lens _hsLevel (\s a -> s {_hsLevel = a})

-- | H.264 Profile.
hsProfile :: Lens' H264Settings (Maybe H264Profile)
hsProfile = lens _hsProfile (\s a -> s {_hsProfile = a})

-- | Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality.
hsAdaptiveQuantization :: Lens' H264Settings (Maybe H264AdaptiveQuantization)
hsAdaptiveQuantization = lens _hsAdaptiveQuantization (\s a -> s {_hsAdaptiveQuantization = a})

-- | Amount of lookahead. A value of low can decrease latency and memory usage, while high can produce better quality for certain content.
hsLookAheadRateControl :: Lens' H264Settings (Maybe H264LookAheadRateControl)
hsLookAheadRateControl = lens _hsLookAheadRateControl (\s a -> s {_hsLookAheadRateControl = a})

-- | This field indicates how the output video frame rate is specified.  If "specified" is selected then the output video frame rate is determined by framerateNumerator and framerateDenominator, else if "initializeFromSource" is selected then the output video frame rate will be set equal to the input video frame rate of the first input.
hsFramerateControl :: Lens' H264Settings (Maybe H264FramerateControl)
hsFramerateControl = lens _hsFramerateControl (\s a -> s {_hsFramerateControl = a})

-- | This setting applies only when scan type is "interlaced." It controls whether coding is performed on a field basis or on a frame basis. (When the video is progressive, the coding is always performed on a frame basis.) enabled: Force MediaLive to code on a field basis, so that odd and even sets of fields are coded separately. disabled: Code the two sets of fields separately (on a field basis) or together (on a frame basis using PAFF), depending on what is most appropriate for the content.
hsForceFieldPictures :: Lens' H264Settings (Maybe H264ForceFieldPictures)
hsForceFieldPictures = lens _hsForceFieldPictures (\s a -> s {_hsForceFieldPictures = a})

-- | Average bitrate in bits/second. Required when the rate control mode is VBR or CBR. Not used for QVBR. In an MS Smooth output group, each output must have a unique value when its bitrate is rounded down to the nearest multiple of 1000.
hsBitrate :: Lens' H264Settings (Maybe Natural)
hsBitrate = lens _hsBitrate (\s a -> s {_hsBitrate = a}) . mapping _Nat

-- | Indicates that AFD values will be written into the output stream.  If afdSignaling is "auto", the system will try to preserve the input AFD value (in cases where multiple AFD values are valid). If set to "fixed", the AFD value will be the value configured in the fixedAfd parameter.
hsAfdSignaling :: Lens' H264Settings (Maybe AfdSignaling)
hsAfdSignaling = lens _hsAfdSignaling (\s a -> s {_hsAfdSignaling = a})

instance FromJSON H264Settings where
  parseJSON =
    withObject
      "H264Settings"
      ( \x ->
          H264Settings'
            <$> (x .:? "scanType")
            <*> (x .:? "temporalAq")
            <*> (x .:? "bufSize")
            <*> (x .:? "flickerAq")
            <*> (x .:? "gopBReference")
            <*> (x .:? "framerateNumerator")
            <*> (x .:? "rateControlMode")
            <*> (x .:? "slices")
            <*> (x .:? "qualityLevel")
            <*> (x .:? "colorMetadata")
            <*> (x .:? "subgopLength")
            <*> (x .:? "entropyEncoding")
            <*> (x .:? "gopSizeUnits")
            <*> (x .:? "gopSize")
            <*> (x .:? "framerateDenominator")
            <*> (x .:? "fixedAfd")
            <*> (x .:? "softness")
            <*> (x .:? "filterSettings")
            <*> (x .:? "parNumerator")
            <*> (x .:? "spatialAq")
            <*> (x .:? "gopNumBFrames")
            <*> (x .:? "sceneChangeDetect")
            <*> (x .:? "timecodeInsertion")
            <*> (x .:? "colorSpaceSettings")
            <*> (x .:? "minIInterval")
            <*> (x .:? "qvbrQualityLevel")
            <*> (x .:? "parControl")
            <*> (x .:? "bufFillPct")
            <*> (x .:? "gopClosedCadence")
            <*> (x .:? "parDenominator")
            <*> (x .:? "maxBitrate")
            <*> (x .:? "syntax")
            <*> (x .:? "numRefFrames")
            <*> (x .:? "level")
            <*> (x .:? "profile")
            <*> (x .:? "adaptiveQuantization")
            <*> (x .:? "lookAheadRateControl")
            <*> (x .:? "framerateControl")
            <*> (x .:? "forceFieldPictures")
            <*> (x .:? "bitrate")
            <*> (x .:? "afdSignaling")
      )

instance Hashable H264Settings

instance NFData H264Settings

instance ToJSON H264Settings where
  toJSON H264Settings' {..} =
    object
      ( catMaybes
          [ ("scanType" .=) <$> _hsScanType,
            ("temporalAq" .=) <$> _hsTemporalAq,
            ("bufSize" .=) <$> _hsBufSize,
            ("flickerAq" .=) <$> _hsFlickerAq,
            ("gopBReference" .=) <$> _hsGopBReference,
            ("framerateNumerator" .=) <$> _hsFramerateNumerator,
            ("rateControlMode" .=) <$> _hsRateControlMode,
            ("slices" .=) <$> _hsSlices,
            ("qualityLevel" .=) <$> _hsQualityLevel,
            ("colorMetadata" .=) <$> _hsColorMetadata,
            ("subgopLength" .=) <$> _hsSubgopLength,
            ("entropyEncoding" .=) <$> _hsEntropyEncoding,
            ("gopSizeUnits" .=) <$> _hsGopSizeUnits,
            ("gopSize" .=) <$> _hsGopSize,
            ("framerateDenominator" .=)
              <$> _hsFramerateDenominator,
            ("fixedAfd" .=) <$> _hsFixedAfd,
            ("softness" .=) <$> _hsSoftness,
            ("filterSettings" .=) <$> _hsFilterSettings,
            ("parNumerator" .=) <$> _hsParNumerator,
            ("spatialAq" .=) <$> _hsSpatialAq,
            ("gopNumBFrames" .=) <$> _hsGopNumBFrames,
            ("sceneChangeDetect" .=) <$> _hsSceneChangeDetect,
            ("timecodeInsertion" .=) <$> _hsTimecodeInsertion,
            ("colorSpaceSettings" .=) <$> _hsColorSpaceSettings,
            ("minIInterval" .=) <$> _hsMinIInterval,
            ("qvbrQualityLevel" .=) <$> _hsQvbrQualityLevel,
            ("parControl" .=) <$> _hsParControl,
            ("bufFillPct" .=) <$> _hsBufFillPct,
            ("gopClosedCadence" .=) <$> _hsGopClosedCadence,
            ("parDenominator" .=) <$> _hsParDenominator,
            ("maxBitrate" .=) <$> _hsMaxBitrate,
            ("syntax" .=) <$> _hsSyntax,
            ("numRefFrames" .=) <$> _hsNumRefFrames,
            ("level" .=) <$> _hsLevel,
            ("profile" .=) <$> _hsProfile,
            ("adaptiveQuantization" .=)
              <$> _hsAdaptiveQuantization,
            ("lookAheadRateControl" .=)
              <$> _hsLookAheadRateControl,
            ("framerateControl" .=) <$> _hsFramerateControl,
            ("forceFieldPictures" .=) <$> _hsForceFieldPictures,
            ("bitrate" .=) <$> _hsBitrate,
            ("afdSignaling" .=) <$> _hsAfdSignaling
          ]
      )
