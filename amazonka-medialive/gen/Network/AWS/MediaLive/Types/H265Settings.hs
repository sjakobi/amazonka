{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H265Settings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265Settings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.AfdSignaling
import Network.AWS.MediaLive.Types.FixedAfd
import Network.AWS.MediaLive.Types.H265AdaptiveQuantization
import Network.AWS.MediaLive.Types.H265AlternativeTransferFunction
import Network.AWS.MediaLive.Types.H265ColorMetadata
import Network.AWS.MediaLive.Types.H265ColorSpaceSettings
import Network.AWS.MediaLive.Types.H265FilterSettings
import Network.AWS.MediaLive.Types.H265FlickerAq
import Network.AWS.MediaLive.Types.H265GopSizeUnits
import Network.AWS.MediaLive.Types.H265Level
import Network.AWS.MediaLive.Types.H265LookAheadRateControl
import Network.AWS.MediaLive.Types.H265Profile
import Network.AWS.MediaLive.Types.H265RateControlMode
import Network.AWS.MediaLive.Types.H265ScanType
import Network.AWS.MediaLive.Types.H265SceneChangeDetect
import Network.AWS.MediaLive.Types.H265Tier
import Network.AWS.MediaLive.Types.H265TimecodeInsertionBehavior
import Network.AWS.Prelude

-- | H265 Settings
--
-- /See:/ 'h265Settings' smart constructor.
data H265Settings = H265Settings'
  { _hssScanType ::
      !(Maybe H265ScanType),
    _hssBufSize :: !(Maybe Nat),
    _hssFlickerAq :: !(Maybe H265FlickerAq),
    _hssAlternativeTransferFunction ::
      !(Maybe H265AlternativeTransferFunction),
    _hssRateControlMode ::
      !(Maybe H265RateControlMode),
    _hssSlices :: !(Maybe Nat),
    _hssColorMetadata ::
      !(Maybe H265ColorMetadata),
    _hssGopSizeUnits :: !(Maybe H265GopSizeUnits),
    _hssGopSize :: !(Maybe Double),
    _hssFixedAfd :: !(Maybe FixedAfd),
    _hssFilterSettings ::
      !(Maybe H265FilterSettings),
    _hssParNumerator :: !(Maybe Nat),
    _hssSceneChangeDetect ::
      !(Maybe H265SceneChangeDetect),
    _hssTimecodeInsertion ::
      !(Maybe H265TimecodeInsertionBehavior),
    _hssColorSpaceSettings ::
      !(Maybe H265ColorSpaceSettings),
    _hssMinIInterval :: !(Maybe Nat),
    _hssQvbrQualityLevel :: !(Maybe Nat),
    _hssGopClosedCadence :: !(Maybe Nat),
    _hssParDenominator :: !(Maybe Nat),
    _hssMaxBitrate :: !(Maybe Nat),
    _hssLevel :: !(Maybe H265Level),
    _hssProfile :: !(Maybe H265Profile),
    _hssAdaptiveQuantization ::
      !(Maybe H265AdaptiveQuantization),
    _hssLookAheadRateControl ::
      !(Maybe H265LookAheadRateControl),
    _hssBitrate :: !(Maybe Nat),
    _hssAfdSignaling :: !(Maybe AfdSignaling),
    _hssTier :: !(Maybe H265Tier),
    _hssFramerateNumerator :: !Nat,
    _hssFramerateDenominator :: !Nat
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'H265Settings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hssScanType' - Sets the scan type of the output to progressive or top-field-first interlaced.
--
-- * 'hssBufSize' - Size of buffer (HRD buffer model) in bits.
--
-- * 'hssFlickerAq' - If set to enabled, adjust quantization within each frame to reduce flicker or 'pop' on I-frames.
--
-- * 'hssAlternativeTransferFunction' - Whether or not EML should insert an Alternative Transfer Function SEI message to support backwards compatibility with non-HDR decoders and displays.
--
-- * 'hssRateControlMode' - Rate control mode. QVBR: Quality will match the specified quality level except when it is constrained by the maximum bitrate.  Recommended if you or your viewers pay for bandwidth. CBR: Quality varies, depending on the video complexity. Recommended only if you distribute your assets to devices that cannot handle variable bitrates. Multiplex: This rate control mode is only supported (and is required) when the video is being delivered to a MediaLive Multiplex in which case the rate control configuration is controlled by the properties within the Multiplex Program.
--
-- * 'hssSlices' - Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures. This field is optional; when no value is specified the encoder will choose the number of slices based on encode resolution.
--
-- * 'hssColorMetadata' - Includes colorspace metadata in the output.
--
-- * 'hssGopSizeUnits' - Indicates if the gopSize is specified in frames or seconds. If seconds the system will convert the gopSize into a frame count at run time.
--
-- * 'hssGopSize' - GOP size (keyframe interval) in units of either frames or seconds per gopSizeUnits. If gopSizeUnits is frames, gopSize must be an integer and must be greater than or equal to 1. If gopSizeUnits is seconds, gopSize must be greater than 0, but need not be an integer.
--
-- * 'hssFixedAfd' - Four bit AFD value to write on all frames of video in the output stream. Only valid when afdSignaling is set to 'Fixed'.
--
-- * 'hssFilterSettings' - Optional filters that you can apply to an encode.
--
-- * 'hssParNumerator' - Pixel Aspect Ratio numerator.
--
-- * 'hssSceneChangeDetect' - Scene change detection.
--
-- * 'hssTimecodeInsertion' - Determines how timecodes should be inserted into the video elementary stream. - 'disabled': Do not include timecodes - 'picTimingSei': Pass through picture timing SEI messages from the source specified in Timecode Config
--
-- * 'hssColorSpaceSettings' - Color Space settings
--
-- * 'hssMinIInterval' - Only meaningful if sceneChangeDetect is set to enabled.  Defaults to 5 if multiplex rate control is used.  Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
--
-- * 'hssQvbrQualityLevel' - Controls the target quality for the video encode. Applies only when the rate control mode is QVBR. Set values for the QVBR quality level field and Max bitrate field that suit your most important viewing devices. Recommended values are: - Primary screen: Quality level: 8 to 10. Max bitrate: 4M - PC or tablet: Quality level: 7. Max bitrate: 1.5M to 3M - Smartphone: Quality level: 6. Max bitrate: 1M to 1.5M
--
-- * 'hssGopClosedCadence' - Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
--
-- * 'hssParDenominator' - Pixel Aspect Ratio denominator.
--
-- * 'hssMaxBitrate' - For QVBR: See the tooltip for Quality level
--
-- * 'hssLevel' - H.265 Level.
--
-- * 'hssProfile' - H.265 Profile.
--
-- * 'hssAdaptiveQuantization' - Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality.
--
-- * 'hssLookAheadRateControl' - Amount of lookahead. A value of low can decrease latency and memory usage, while high can produce better quality for certain content.
--
-- * 'hssBitrate' - Average bitrate in bits/second. Required when the rate control mode is VBR or CBR. Not used for QVBR. In an MS Smooth output group, each output must have a unique value when its bitrate is rounded down to the nearest multiple of 1000.
--
-- * 'hssAfdSignaling' - Indicates that AFD values will be written into the output stream.  If afdSignaling is "auto", the system will try to preserve the input AFD value (in cases where multiple AFD values are valid). If set to "fixed", the AFD value will be the value configured in the fixedAfd parameter.
--
-- * 'hssTier' - H.265 Tier.
--
-- * 'hssFramerateNumerator' - Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 = 23.976 fps.
--
-- * 'hssFramerateDenominator' - Framerate denominator.
h265Settings ::
  -- | 'hssFramerateNumerator'
  Natural ->
  -- | 'hssFramerateDenominator'
  Natural ->
  H265Settings
h265Settings
  pFramerateNumerator_
  pFramerateDenominator_ =
    H265Settings'
      { _hssScanType = Nothing,
        _hssBufSize = Nothing,
        _hssFlickerAq = Nothing,
        _hssAlternativeTransferFunction = Nothing,
        _hssRateControlMode = Nothing,
        _hssSlices = Nothing,
        _hssColorMetadata = Nothing,
        _hssGopSizeUnits = Nothing,
        _hssGopSize = Nothing,
        _hssFixedAfd = Nothing,
        _hssFilterSettings = Nothing,
        _hssParNumerator = Nothing,
        _hssSceneChangeDetect = Nothing,
        _hssTimecodeInsertion = Nothing,
        _hssColorSpaceSettings = Nothing,
        _hssMinIInterval = Nothing,
        _hssQvbrQualityLevel = Nothing,
        _hssGopClosedCadence = Nothing,
        _hssParDenominator = Nothing,
        _hssMaxBitrate = Nothing,
        _hssLevel = Nothing,
        _hssProfile = Nothing,
        _hssAdaptiveQuantization = Nothing,
        _hssLookAheadRateControl = Nothing,
        _hssBitrate = Nothing,
        _hssAfdSignaling = Nothing,
        _hssTier = Nothing,
        _hssFramerateNumerator = _Nat # pFramerateNumerator_,
        _hssFramerateDenominator =
          _Nat # pFramerateDenominator_
      }

-- | Sets the scan type of the output to progressive or top-field-first interlaced.
hssScanType :: Lens' H265Settings (Maybe H265ScanType)
hssScanType = lens _hssScanType (\s a -> s {_hssScanType = a})

-- | Size of buffer (HRD buffer model) in bits.
hssBufSize :: Lens' H265Settings (Maybe Natural)
hssBufSize = lens _hssBufSize (\s a -> s {_hssBufSize = a}) . mapping _Nat

-- | If set to enabled, adjust quantization within each frame to reduce flicker or 'pop' on I-frames.
hssFlickerAq :: Lens' H265Settings (Maybe H265FlickerAq)
hssFlickerAq = lens _hssFlickerAq (\s a -> s {_hssFlickerAq = a})

-- | Whether or not EML should insert an Alternative Transfer Function SEI message to support backwards compatibility with non-HDR decoders and displays.
hssAlternativeTransferFunction :: Lens' H265Settings (Maybe H265AlternativeTransferFunction)
hssAlternativeTransferFunction = lens _hssAlternativeTransferFunction (\s a -> s {_hssAlternativeTransferFunction = a})

-- | Rate control mode. QVBR: Quality will match the specified quality level except when it is constrained by the maximum bitrate.  Recommended if you or your viewers pay for bandwidth. CBR: Quality varies, depending on the video complexity. Recommended only if you distribute your assets to devices that cannot handle variable bitrates. Multiplex: This rate control mode is only supported (and is required) when the video is being delivered to a MediaLive Multiplex in which case the rate control configuration is controlled by the properties within the Multiplex Program.
hssRateControlMode :: Lens' H265Settings (Maybe H265RateControlMode)
hssRateControlMode = lens _hssRateControlMode (\s a -> s {_hssRateControlMode = a})

-- | Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures. This field is optional; when no value is specified the encoder will choose the number of slices based on encode resolution.
hssSlices :: Lens' H265Settings (Maybe Natural)
hssSlices = lens _hssSlices (\s a -> s {_hssSlices = a}) . mapping _Nat

-- | Includes colorspace metadata in the output.
hssColorMetadata :: Lens' H265Settings (Maybe H265ColorMetadata)
hssColorMetadata = lens _hssColorMetadata (\s a -> s {_hssColorMetadata = a})

-- | Indicates if the gopSize is specified in frames or seconds. If seconds the system will convert the gopSize into a frame count at run time.
hssGopSizeUnits :: Lens' H265Settings (Maybe H265GopSizeUnits)
hssGopSizeUnits = lens _hssGopSizeUnits (\s a -> s {_hssGopSizeUnits = a})

-- | GOP size (keyframe interval) in units of either frames or seconds per gopSizeUnits. If gopSizeUnits is frames, gopSize must be an integer and must be greater than or equal to 1. If gopSizeUnits is seconds, gopSize must be greater than 0, but need not be an integer.
hssGopSize :: Lens' H265Settings (Maybe Double)
hssGopSize = lens _hssGopSize (\s a -> s {_hssGopSize = a})

-- | Four bit AFD value to write on all frames of video in the output stream. Only valid when afdSignaling is set to 'Fixed'.
hssFixedAfd :: Lens' H265Settings (Maybe FixedAfd)
hssFixedAfd = lens _hssFixedAfd (\s a -> s {_hssFixedAfd = a})

-- | Optional filters that you can apply to an encode.
hssFilterSettings :: Lens' H265Settings (Maybe H265FilterSettings)
hssFilterSettings = lens _hssFilterSettings (\s a -> s {_hssFilterSettings = a})

-- | Pixel Aspect Ratio numerator.
hssParNumerator :: Lens' H265Settings (Maybe Natural)
hssParNumerator = lens _hssParNumerator (\s a -> s {_hssParNumerator = a}) . mapping _Nat

-- | Scene change detection.
hssSceneChangeDetect :: Lens' H265Settings (Maybe H265SceneChangeDetect)
hssSceneChangeDetect = lens _hssSceneChangeDetect (\s a -> s {_hssSceneChangeDetect = a})

-- | Determines how timecodes should be inserted into the video elementary stream. - 'disabled': Do not include timecodes - 'picTimingSei': Pass through picture timing SEI messages from the source specified in Timecode Config
hssTimecodeInsertion :: Lens' H265Settings (Maybe H265TimecodeInsertionBehavior)
hssTimecodeInsertion = lens _hssTimecodeInsertion (\s a -> s {_hssTimecodeInsertion = a})

-- | Color Space settings
hssColorSpaceSettings :: Lens' H265Settings (Maybe H265ColorSpaceSettings)
hssColorSpaceSettings = lens _hssColorSpaceSettings (\s a -> s {_hssColorSpaceSettings = a})

-- | Only meaningful if sceneChangeDetect is set to enabled.  Defaults to 5 if multiplex rate control is used.  Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
hssMinIInterval :: Lens' H265Settings (Maybe Natural)
hssMinIInterval = lens _hssMinIInterval (\s a -> s {_hssMinIInterval = a}) . mapping _Nat

-- | Controls the target quality for the video encode. Applies only when the rate control mode is QVBR. Set values for the QVBR quality level field and Max bitrate field that suit your most important viewing devices. Recommended values are: - Primary screen: Quality level: 8 to 10. Max bitrate: 4M - PC or tablet: Quality level: 7. Max bitrate: 1.5M to 3M - Smartphone: Quality level: 6. Max bitrate: 1M to 1.5M
hssQvbrQualityLevel :: Lens' H265Settings (Maybe Natural)
hssQvbrQualityLevel = lens _hssQvbrQualityLevel (\s a -> s {_hssQvbrQualityLevel = a}) . mapping _Nat

-- | Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
hssGopClosedCadence :: Lens' H265Settings (Maybe Natural)
hssGopClosedCadence = lens _hssGopClosedCadence (\s a -> s {_hssGopClosedCadence = a}) . mapping _Nat

-- | Pixel Aspect Ratio denominator.
hssParDenominator :: Lens' H265Settings (Maybe Natural)
hssParDenominator = lens _hssParDenominator (\s a -> s {_hssParDenominator = a}) . mapping _Nat

-- | For QVBR: See the tooltip for Quality level
hssMaxBitrate :: Lens' H265Settings (Maybe Natural)
hssMaxBitrate = lens _hssMaxBitrate (\s a -> s {_hssMaxBitrate = a}) . mapping _Nat

-- | H.265 Level.
hssLevel :: Lens' H265Settings (Maybe H265Level)
hssLevel = lens _hssLevel (\s a -> s {_hssLevel = a})

-- | H.265 Profile.
hssProfile :: Lens' H265Settings (Maybe H265Profile)
hssProfile = lens _hssProfile (\s a -> s {_hssProfile = a})

-- | Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality.
hssAdaptiveQuantization :: Lens' H265Settings (Maybe H265AdaptiveQuantization)
hssAdaptiveQuantization = lens _hssAdaptiveQuantization (\s a -> s {_hssAdaptiveQuantization = a})

-- | Amount of lookahead. A value of low can decrease latency and memory usage, while high can produce better quality for certain content.
hssLookAheadRateControl :: Lens' H265Settings (Maybe H265LookAheadRateControl)
hssLookAheadRateControl = lens _hssLookAheadRateControl (\s a -> s {_hssLookAheadRateControl = a})

-- | Average bitrate in bits/second. Required when the rate control mode is VBR or CBR. Not used for QVBR. In an MS Smooth output group, each output must have a unique value when its bitrate is rounded down to the nearest multiple of 1000.
hssBitrate :: Lens' H265Settings (Maybe Natural)
hssBitrate = lens _hssBitrate (\s a -> s {_hssBitrate = a}) . mapping _Nat

-- | Indicates that AFD values will be written into the output stream.  If afdSignaling is "auto", the system will try to preserve the input AFD value (in cases where multiple AFD values are valid). If set to "fixed", the AFD value will be the value configured in the fixedAfd parameter.
hssAfdSignaling :: Lens' H265Settings (Maybe AfdSignaling)
hssAfdSignaling = lens _hssAfdSignaling (\s a -> s {_hssAfdSignaling = a})

-- | H.265 Tier.
hssTier :: Lens' H265Settings (Maybe H265Tier)
hssTier = lens _hssTier (\s a -> s {_hssTier = a})

-- | Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 = 23.976 fps.
hssFramerateNumerator :: Lens' H265Settings Natural
hssFramerateNumerator = lens _hssFramerateNumerator (\s a -> s {_hssFramerateNumerator = a}) . _Nat

-- | Framerate denominator.
hssFramerateDenominator :: Lens' H265Settings Natural
hssFramerateDenominator = lens _hssFramerateDenominator (\s a -> s {_hssFramerateDenominator = a}) . _Nat

instance FromJSON H265Settings where
  parseJSON =
    withObject
      "H265Settings"
      ( \x ->
          H265Settings'
            <$> (x .:? "scanType")
            <*> (x .:? "bufSize")
            <*> (x .:? "flickerAq")
            <*> (x .:? "alternativeTransferFunction")
            <*> (x .:? "rateControlMode")
            <*> (x .:? "slices")
            <*> (x .:? "colorMetadata")
            <*> (x .:? "gopSizeUnits")
            <*> (x .:? "gopSize")
            <*> (x .:? "fixedAfd")
            <*> (x .:? "filterSettings")
            <*> (x .:? "parNumerator")
            <*> (x .:? "sceneChangeDetect")
            <*> (x .:? "timecodeInsertion")
            <*> (x .:? "colorSpaceSettings")
            <*> (x .:? "minIInterval")
            <*> (x .:? "qvbrQualityLevel")
            <*> (x .:? "gopClosedCadence")
            <*> (x .:? "parDenominator")
            <*> (x .:? "maxBitrate")
            <*> (x .:? "level")
            <*> (x .:? "profile")
            <*> (x .:? "adaptiveQuantization")
            <*> (x .:? "lookAheadRateControl")
            <*> (x .:? "bitrate")
            <*> (x .:? "afdSignaling")
            <*> (x .:? "tier")
            <*> (x .: "framerateNumerator")
            <*> (x .: "framerateDenominator")
      )

instance Hashable H265Settings

instance NFData H265Settings

instance ToJSON H265Settings where
  toJSON H265Settings' {..} =
    object
      ( catMaybes
          [ ("scanType" .=) <$> _hssScanType,
            ("bufSize" .=) <$> _hssBufSize,
            ("flickerAq" .=) <$> _hssFlickerAq,
            ("alternativeTransferFunction" .=)
              <$> _hssAlternativeTransferFunction,
            ("rateControlMode" .=) <$> _hssRateControlMode,
            ("slices" .=) <$> _hssSlices,
            ("colorMetadata" .=) <$> _hssColorMetadata,
            ("gopSizeUnits" .=) <$> _hssGopSizeUnits,
            ("gopSize" .=) <$> _hssGopSize,
            ("fixedAfd" .=) <$> _hssFixedAfd,
            ("filterSettings" .=) <$> _hssFilterSettings,
            ("parNumerator" .=) <$> _hssParNumerator,
            ("sceneChangeDetect" .=) <$> _hssSceneChangeDetect,
            ("timecodeInsertion" .=) <$> _hssTimecodeInsertion,
            ("colorSpaceSettings" .=) <$> _hssColorSpaceSettings,
            ("minIInterval" .=) <$> _hssMinIInterval,
            ("qvbrQualityLevel" .=) <$> _hssQvbrQualityLevel,
            ("gopClosedCadence" .=) <$> _hssGopClosedCadence,
            ("parDenominator" .=) <$> _hssParDenominator,
            ("maxBitrate" .=) <$> _hssMaxBitrate,
            ("level" .=) <$> _hssLevel,
            ("profile" .=) <$> _hssProfile,
            ("adaptiveQuantization" .=)
              <$> _hssAdaptiveQuantization,
            ("lookAheadRateControl" .=)
              <$> _hssLookAheadRateControl,
            ("bitrate" .=) <$> _hssBitrate,
            ("afdSignaling" .=) <$> _hssAfdSignaling,
            ("tier" .=) <$> _hssTier,
            Just
              ("framerateNumerator" .= _hssFramerateNumerator),
            Just
              ( "framerateDenominator"
                  .= _hssFramerateDenominator
              )
          ]
      )
