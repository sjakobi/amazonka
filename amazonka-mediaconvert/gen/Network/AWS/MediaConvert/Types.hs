{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types
  ( -- * Service Configuration
    mediaConvert,

    -- * Errors
    _NotFoundException,
    _BadRequestException,
    _InternalServerErrorException,
    _ForbiddenException,
    _ConflictException,
    _TooManyRequestsException,

    -- * AacAudioDescriptionBroadcasterMix
    AacAudioDescriptionBroadcasterMix (..),

    -- * AacCodecProfile
    AacCodecProfile (..),

    -- * AacCodingMode
    AacCodingMode (..),

    -- * AacRateControlMode
    AacRateControlMode (..),

    -- * AacRawFormat
    AacRawFormat (..),

    -- * AacSpecification
    AacSpecification (..),

    -- * AacVbrQuality
    AacVbrQuality (..),

    -- * Ac3BitstreamMode
    Ac3BitstreamMode (..),

    -- * Ac3CodingMode
    Ac3CodingMode (..),

    -- * Ac3DynamicRangeCompressionProfile
    Ac3DynamicRangeCompressionProfile (..),

    -- * Ac3LfeFilter
    Ac3LfeFilter (..),

    -- * Ac3MetadataControl
    Ac3MetadataControl (..),

    -- * AccelerationMode
    AccelerationMode (..),

    -- * AccelerationStatus
    AccelerationStatus (..),

    -- * AfdSignaling
    AfdSignaling (..),

    -- * AlphaBehavior
    AlphaBehavior (..),

    -- * AncillaryConvert608To708
    AncillaryConvert608To708 (..),

    -- * AncillaryTerminateCaptions
    AncillaryTerminateCaptions (..),

    -- * AntiAlias
    AntiAlias (..),

    -- * AudioChannelTag
    AudioChannelTag (..),

    -- * AudioCodec
    AudioCodec (..),

    -- * AudioDefaultSelection
    AudioDefaultSelection (..),

    -- * AudioLanguageCodeControl
    AudioLanguageCodeControl (..),

    -- * AudioNormalizationAlgorithm
    AudioNormalizationAlgorithm (..),

    -- * AudioNormalizationAlgorithmControl
    AudioNormalizationAlgorithmControl (..),

    -- * AudioNormalizationLoudnessLogging
    AudioNormalizationLoudnessLogging (..),

    -- * AudioNormalizationPeakCalculation
    AudioNormalizationPeakCalculation (..),

    -- * AudioSelectorType
    AudioSelectorType (..),

    -- * AudioTypeControl
    AudioTypeControl (..),

    -- * Av1AdaptiveQuantization
    Av1AdaptiveQuantization (..),

    -- * Av1FramerateControl
    Av1FramerateControl (..),

    -- * Av1FramerateConversionAlgorithm
    Av1FramerateConversionAlgorithm (..),

    -- * Av1RateControlMode
    Av1RateControlMode (..),

    -- * Av1SpatialAdaptiveQuantization
    Av1SpatialAdaptiveQuantization (..),

    -- * AvcIntraClass
    AvcIntraClass (..),

    -- * AvcIntraFramerateControl
    AvcIntraFramerateControl (..),

    -- * AvcIntraFramerateConversionAlgorithm
    AvcIntraFramerateConversionAlgorithm (..),

    -- * AvcIntraInterlaceMode
    AvcIntraInterlaceMode (..),

    -- * AvcIntraScanTypeConversionMode
    AvcIntraScanTypeConversionMode (..),

    -- * AvcIntraSlowPal
    AvcIntraSlowPal (..),

    -- * AvcIntraTelecine
    AvcIntraTelecine (..),

    -- * AvcIntraUhdQualityTuningLevel
    AvcIntraUhdQualityTuningLevel (..),

    -- * BillingTagsSource
    BillingTagsSource (..),

    -- * BurninSubtitleAlignment
    BurninSubtitleAlignment (..),

    -- * BurninSubtitleBackgroundColor
    BurninSubtitleBackgroundColor (..),

    -- * BurninSubtitleFontColor
    BurninSubtitleFontColor (..),

    -- * BurninSubtitleOutlineColor
    BurninSubtitleOutlineColor (..),

    -- * BurninSubtitleShadowColor
    BurninSubtitleShadowColor (..),

    -- * BurninSubtitleTeletextSpacing
    BurninSubtitleTeletextSpacing (..),

    -- * CaptionDestinationType
    CaptionDestinationType (..),

    -- * CaptionSourceType
    CaptionSourceType (..),

    -- * CmafClientCache
    CmafClientCache (..),

    -- * CmafCodecSpecification
    CmafCodecSpecification (..),

    -- * CmafEncryptionType
    CmafEncryptionType (..),

    -- * CmafInitializationVectorInManifest
    CmafInitializationVectorInManifest (..),

    -- * CmafKeyProviderType
    CmafKeyProviderType (..),

    -- * CmafManifestCompression
    CmafManifestCompression (..),

    -- * CmafManifestDurationFormat
    CmafManifestDurationFormat (..),

    -- * CmafMpdProfile
    CmafMpdProfile (..),

    -- * CmafSegmentControl
    CmafSegmentControl (..),

    -- * CmafStreamInfResolution
    CmafStreamInfResolution (..),

    -- * CmafWriteDASHManifest
    CmafWriteDASHManifest (..),

    -- * CmafWriteHLSManifest
    CmafWriteHLSManifest (..),

    -- * CmafWriteSegmentTimelineInRepresentation
    CmafWriteSegmentTimelineInRepresentation (..),

    -- * CmfcAudioDuration
    CmfcAudioDuration (..),

    -- * CmfcIFrameOnlyManifest
    CmfcIFrameOnlyManifest (..),

    -- * CmfcScte35Esam
    CmfcScte35Esam (..),

    -- * CmfcScte35Source
    CmfcScte35Source (..),

    -- * ColorMetadata
    ColorMetadata (..),

    -- * ColorSpace
    ColorSpace (..),

    -- * ColorSpaceConversion
    ColorSpaceConversion (..),

    -- * ColorSpaceUsage
    ColorSpaceUsage (..),

    -- * Commitment
    Commitment (..),

    -- * ContainerType
    ContainerType (..),

    -- * DashIsoHbbtvCompliance
    DashIsoHbbtvCompliance (..),

    -- * DashIsoMpdProfile
    DashIsoMpdProfile (..),

    -- * DashIsoPlaybackDeviceCompatibility
    DashIsoPlaybackDeviceCompatibility (..),

    -- * DashIsoSegmentControl
    DashIsoSegmentControl (..),

    -- * DashIsoWriteSegmentTimelineInRepresentation
    DashIsoWriteSegmentTimelineInRepresentation (..),

    -- * DecryptionMode
    DecryptionMode (..),

    -- * DeinterlaceAlgorithm
    DeinterlaceAlgorithm (..),

    -- * DeinterlacerControl
    DeinterlacerControl (..),

    -- * DeinterlacerMode
    DeinterlacerMode (..),

    -- * DescribeEndpointsMode
    DescribeEndpointsMode (..),

    -- * DolbyVisionLevel6Mode
    DolbyVisionLevel6Mode (..),

    -- * DolbyVisionProfile
    DolbyVisionProfile (..),

    -- * DropFrameTimecode
    DropFrameTimecode (..),

    -- * DvbSubtitleAlignment
    DvbSubtitleAlignment (..),

    -- * DvbSubtitleBackgroundColor
    DvbSubtitleBackgroundColor (..),

    -- * DvbSubtitleFontColor
    DvbSubtitleFontColor (..),

    -- * DvbSubtitleOutlineColor
    DvbSubtitleOutlineColor (..),

    -- * DvbSubtitleShadowColor
    DvbSubtitleShadowColor (..),

    -- * DvbSubtitleTeletextSpacing
    DvbSubtitleTeletextSpacing (..),

    -- * DvbSubtitlingType
    DvbSubtitlingType (..),

    -- * Eac3AtmosBitstreamMode
    Eac3AtmosBitstreamMode (..),

    -- * Eac3AtmosCodingMode
    Eac3AtmosCodingMode (..),

    -- * Eac3AtmosDialogueIntelligence
    Eac3AtmosDialogueIntelligence (..),

    -- * Eac3AtmosDynamicRangeCompressionLine
    Eac3AtmosDynamicRangeCompressionLine (..),

    -- * Eac3AtmosDynamicRangeCompressionRf
    Eac3AtmosDynamicRangeCompressionRf (..),

    -- * Eac3AtmosMeteringMode
    Eac3AtmosMeteringMode (..),

    -- * Eac3AtmosStereoDownmix
    Eac3AtmosStereoDownmix (..),

    -- * Eac3AtmosSurroundExMode
    Eac3AtmosSurroundExMode (..),

    -- * Eac3AttenuationControl
    Eac3AttenuationControl (..),

    -- * Eac3BitstreamMode
    Eac3BitstreamMode (..),

    -- * Eac3CodingMode
    Eac3CodingMode (..),

    -- * Eac3DcFilter
    Eac3DcFilter (..),

    -- * Eac3DynamicRangeCompressionLine
    Eac3DynamicRangeCompressionLine (..),

    -- * Eac3DynamicRangeCompressionRf
    Eac3DynamicRangeCompressionRf (..),

    -- * Eac3LfeControl
    Eac3LfeControl (..),

    -- * Eac3LfeFilter
    Eac3LfeFilter (..),

    -- * Eac3MetadataControl
    Eac3MetadataControl (..),

    -- * Eac3PassthroughControl
    Eac3PassthroughControl (..),

    -- * Eac3PhaseControl
    Eac3PhaseControl (..),

    -- * Eac3StereoDownmix
    Eac3StereoDownmix (..),

    -- * Eac3SurroundExMode
    Eac3SurroundExMode (..),

    -- * Eac3SurroundMode
    Eac3SurroundMode (..),

    -- * EmbeddedConvert608To708
    EmbeddedConvert608To708 (..),

    -- * EmbeddedTerminateCaptions
    EmbeddedTerminateCaptions (..),

    -- * F4vMoovPlacement
    F4vMoovPlacement (..),

    -- * FileSourceConvert608To708
    FileSourceConvert608To708 (..),

    -- * FontScript
    FontScript (..),

    -- * H264AdaptiveQuantization
    H264AdaptiveQuantization (..),

    -- * H264CodecLevel
    H264CodecLevel (..),

    -- * H264CodecProfile
    H264CodecProfile (..),

    -- * H264DynamicSubGop
    H264DynamicSubGop (..),

    -- * H264EntropyEncoding
    H264EntropyEncoding (..),

    -- * H264FieldEncoding
    H264FieldEncoding (..),

    -- * H264FlickerAdaptiveQuantization
    H264FlickerAdaptiveQuantization (..),

    -- * H264FramerateControl
    H264FramerateControl (..),

    -- * H264FramerateConversionAlgorithm
    H264FramerateConversionAlgorithm (..),

    -- * H264GopBReference
    H264GopBReference (..),

    -- * H264GopSizeUnits
    H264GopSizeUnits (..),

    -- * H264InterlaceMode
    H264InterlaceMode (..),

    -- * H264ParControl
    H264ParControl (..),

    -- * H264QualityTuningLevel
    H264QualityTuningLevel (..),

    -- * H264RateControlMode
    H264RateControlMode (..),

    -- * H264RepeatPps
    H264RepeatPps (..),

    -- * H264ScanTypeConversionMode
    H264ScanTypeConversionMode (..),

    -- * H264SceneChangeDetect
    H264SceneChangeDetect (..),

    -- * H264SlowPal
    H264SlowPal (..),

    -- * H264SpatialAdaptiveQuantization
    H264SpatialAdaptiveQuantization (..),

    -- * H264Syntax
    H264Syntax (..),

    -- * H264Telecine
    H264Telecine (..),

    -- * H264TemporalAdaptiveQuantization
    H264TemporalAdaptiveQuantization (..),

    -- * H264UnregisteredSeiTimecode
    H264UnregisteredSeiTimecode (..),

    -- * H265AdaptiveQuantization
    H265AdaptiveQuantization (..),

    -- * H265AlternateTransferFunctionSei
    H265AlternateTransferFunctionSei (..),

    -- * H265CodecLevel
    H265CodecLevel (..),

    -- * H265CodecProfile
    H265CodecProfile (..),

    -- * H265DynamicSubGop
    H265DynamicSubGop (..),

    -- * H265FlickerAdaptiveQuantization
    H265FlickerAdaptiveQuantization (..),

    -- * H265FramerateControl
    H265FramerateControl (..),

    -- * H265FramerateConversionAlgorithm
    H265FramerateConversionAlgorithm (..),

    -- * H265GopBReference
    H265GopBReference (..),

    -- * H265GopSizeUnits
    H265GopSizeUnits (..),

    -- * H265InterlaceMode
    H265InterlaceMode (..),

    -- * H265ParControl
    H265ParControl (..),

    -- * H265QualityTuningLevel
    H265QualityTuningLevel (..),

    -- * H265RateControlMode
    H265RateControlMode (..),

    -- * H265SampleAdaptiveOffsetFilterMode
    H265SampleAdaptiveOffsetFilterMode (..),

    -- * H265ScanTypeConversionMode
    H265ScanTypeConversionMode (..),

    -- * H265SceneChangeDetect
    H265SceneChangeDetect (..),

    -- * H265SlowPal
    H265SlowPal (..),

    -- * H265SpatialAdaptiveQuantization
    H265SpatialAdaptiveQuantization (..),

    -- * H265Telecine
    H265Telecine (..),

    -- * H265TemporalAdaptiveQuantization
    H265TemporalAdaptiveQuantization (..),

    -- * H265TemporalIds
    H265TemporalIds (..),

    -- * H265Tiles
    H265Tiles (..),

    -- * H265UnregisteredSeiTimecode
    H265UnregisteredSeiTimecode (..),

    -- * H265WriteMp4PackagingType
    H265WriteMp4PackagingType (..),

    -- * HlsAdMarkers
    HlsAdMarkers (..),

    -- * HlsAudioOnlyContainer
    HlsAudioOnlyContainer (..),

    -- * HlsAudioOnlyHeader
    HlsAudioOnlyHeader (..),

    -- * HlsAudioTrackType
    HlsAudioTrackType (..),

    -- * HlsCaptionLanguageSetting
    HlsCaptionLanguageSetting (..),

    -- * HlsClientCache
    HlsClientCache (..),

    -- * HlsCodecSpecification
    HlsCodecSpecification (..),

    -- * HlsDirectoryStructure
    HlsDirectoryStructure (..),

    -- * HlsEncryptionType
    HlsEncryptionType (..),

    -- * HlsIFrameOnlyManifest
    HlsIFrameOnlyManifest (..),

    -- * HlsInitializationVectorInManifest
    HlsInitializationVectorInManifest (..),

    -- * HlsKeyProviderType
    HlsKeyProviderType (..),

    -- * HlsManifestCompression
    HlsManifestCompression (..),

    -- * HlsManifestDurationFormat
    HlsManifestDurationFormat (..),

    -- * HlsOfflineEncrypted
    HlsOfflineEncrypted (..),

    -- * HlsOutputSelection
    HlsOutputSelection (..),

    -- * HlsProgramDateTime
    HlsProgramDateTime (..),

    -- * HlsSegmentControl
    HlsSegmentControl (..),

    -- * HlsStreamInfResolution
    HlsStreamInfResolution (..),

    -- * HlsTimedMetadataId3Frame
    HlsTimedMetadataId3Frame (..),

    -- * ImscStylePassthrough
    ImscStylePassthrough (..),

    -- * InputDeblockFilter
    InputDeblockFilter (..),

    -- * InputDenoiseFilter
    InputDenoiseFilter (..),

    -- * InputFilterEnable
    InputFilterEnable (..),

    -- * InputPsiControl
    InputPsiControl (..),

    -- * InputRotate
    InputRotate (..),

    -- * InputScanType
    InputScanType (..),

    -- * InputTimecodeSource
    InputTimecodeSource (..),

    -- * JobPhase
    JobPhase (..),

    -- * JobStatus
    JobStatus (..),

    -- * JobTemplateListBy
    JobTemplateListBy (..),

    -- * LanguageCode
    LanguageCode (..),

    -- * M2tsAudioBufferModel
    M2tsAudioBufferModel (..),

    -- * M2tsAudioDuration
    M2tsAudioDuration (..),

    -- * M2tsBufferModel
    M2tsBufferModel (..),

    -- * M2tsEbpAudioInterval
    M2tsEbpAudioInterval (..),

    -- * M2tsEbpPlacement
    M2tsEbpPlacement (..),

    -- * M2tsEsRateInPes
    M2tsEsRateInPes (..),

    -- * M2tsForceTsVideoEbpOrder
    M2tsForceTsVideoEbpOrder (..),

    -- * M2tsNielsenId3
    M2tsNielsenId3 (..),

    -- * M2tsPcrControl
    M2tsPcrControl (..),

    -- * M2tsRateMode
    M2tsRateMode (..),

    -- * M2tsScte35Source
    M2tsScte35Source (..),

    -- * M2tsSegmentationMarkers
    M2tsSegmentationMarkers (..),

    -- * M2tsSegmentationStyle
    M2tsSegmentationStyle (..),

    -- * M3u8AudioDuration
    M3u8AudioDuration (..),

    -- * M3u8NielsenId3
    M3u8NielsenId3 (..),

    -- * M3u8PcrControl
    M3u8PcrControl (..),

    -- * M3u8Scte35Source
    M3u8Scte35Source (..),

    -- * MotionImageInsertionMode
    MotionImageInsertionMode (..),

    -- * MotionImagePlayback
    MotionImagePlayback (..),

    -- * MovClapAtom
    MovClapAtom (..),

    -- * MovCslgAtom
    MovCslgAtom (..),

    -- * MovMpeg2FourCCControl
    MovMpeg2FourCCControl (..),

    -- * MovPaddingControl
    MovPaddingControl (..),

    -- * MovReference
    MovReference (..),

    -- * Mp3RateControlMode
    Mp3RateControlMode (..),

    -- * Mp4CslgAtom
    Mp4CslgAtom (..),

    -- * Mp4FreeSpaceBox
    Mp4FreeSpaceBox (..),

    -- * Mp4MoovPlacement
    Mp4MoovPlacement (..),

    -- * MpdAccessibilityCaptionHints
    MpdAccessibilityCaptionHints (..),

    -- * MpdAudioDuration
    MpdAudioDuration (..),

    -- * MpdCaptionContainerType
    MpdCaptionContainerType (..),

    -- * MpdScte35Esam
    MpdScte35Esam (..),

    -- * MpdScte35Source
    MpdScte35Source (..),

    -- * Mpeg2AdaptiveQuantization
    Mpeg2AdaptiveQuantization (..),

    -- * Mpeg2CodecLevel
    Mpeg2CodecLevel (..),

    -- * Mpeg2CodecProfile
    Mpeg2CodecProfile (..),

    -- * Mpeg2DynamicSubGop
    Mpeg2DynamicSubGop (..),

    -- * Mpeg2FramerateControl
    Mpeg2FramerateControl (..),

    -- * Mpeg2FramerateConversionAlgorithm
    Mpeg2FramerateConversionAlgorithm (..),

    -- * Mpeg2GopSizeUnits
    Mpeg2GopSizeUnits (..),

    -- * Mpeg2InterlaceMode
    Mpeg2InterlaceMode (..),

    -- * Mpeg2IntraDcPrecision
    Mpeg2IntraDcPrecision (..),

    -- * Mpeg2ParControl
    Mpeg2ParControl (..),

    -- * Mpeg2QualityTuningLevel
    Mpeg2QualityTuningLevel (..),

    -- * Mpeg2RateControlMode
    Mpeg2RateControlMode (..),

    -- * Mpeg2ScanTypeConversionMode
    Mpeg2ScanTypeConversionMode (..),

    -- * Mpeg2SceneChangeDetect
    Mpeg2SceneChangeDetect (..),

    -- * Mpeg2SlowPal
    Mpeg2SlowPal (..),

    -- * Mpeg2SpatialAdaptiveQuantization
    Mpeg2SpatialAdaptiveQuantization (..),

    -- * Mpeg2Syntax
    Mpeg2Syntax (..),

    -- * Mpeg2Telecine
    Mpeg2Telecine (..),

    -- * Mpeg2TemporalAdaptiveQuantization
    Mpeg2TemporalAdaptiveQuantization (..),

    -- * MsSmoothAudioDeduplication
    MsSmoothAudioDeduplication (..),

    -- * MsSmoothManifestEncoding
    MsSmoothManifestEncoding (..),

    -- * MxfAfdSignaling
    MxfAfdSignaling (..),

    -- * MxfProfile
    MxfProfile (..),

    -- * NielsenActiveWatermarkProcessType
    NielsenActiveWatermarkProcessType (..),

    -- * NielsenSourceWatermarkStatusType
    NielsenSourceWatermarkStatusType (..),

    -- * NielsenUniqueTicPerAudioTrackType
    NielsenUniqueTicPerAudioTrackType (..),

    -- * NoiseFilterPostTemporalSharpening
    NoiseFilterPostTemporalSharpening (..),

    -- * NoiseReducerFilter
    NoiseReducerFilter (..),

    -- * Order
    Order (..),

    -- * OutputGroupType
    OutputGroupType (..),

    -- * OutputSdt
    OutputSdt (..),

    -- * PresetListBy
    PresetListBy (..),

    -- * PricingPlan
    PricingPlan (..),

    -- * ProresCodecProfile
    ProresCodecProfile (..),

    -- * ProresFramerateControl
    ProresFramerateControl (..),

    -- * ProresFramerateConversionAlgorithm
    ProresFramerateConversionAlgorithm (..),

    -- * ProresInterlaceMode
    ProresInterlaceMode (..),

    -- * ProresParControl
    ProresParControl (..),

    -- * ProresScanTypeConversionMode
    ProresScanTypeConversionMode (..),

    -- * ProresSlowPal
    ProresSlowPal (..),

    -- * ProresTelecine
    ProresTelecine (..),

    -- * QueueListBy
    QueueListBy (..),

    -- * QueueStatus
    QueueStatus (..),

    -- * RenewalType
    RenewalType (..),

    -- * ReservationPlanStatus
    ReservationPlanStatus (..),

    -- * RespondToAfd
    RespondToAfd (..),

    -- * S3ObjectCannedACL
    S3ObjectCannedACL (..),

    -- * S3ServerSideEncryptionType
    S3ServerSideEncryptionType (..),

    -- * ScalingBehavior
    ScalingBehavior (..),

    -- * SccDestinationFramerate
    SccDestinationFramerate (..),

    -- * SimulateReservedQueue
    SimulateReservedQueue (..),

    -- * StatusUpdateInterval
    StatusUpdateInterval (..),

    -- * TeletextPageType
    TeletextPageType (..),

    -- * TimecodeBurninPosition
    TimecodeBurninPosition (..),

    -- * TimecodeSource
    TimecodeSource (..),

    -- * TimedMetadata
    TimedMetadata (..),

    -- * TtmlStylePassthrough
    TtmlStylePassthrough (..),

    -- * Type
    Type (..),

    -- * Vc3Class
    Vc3Class (..),

    -- * Vc3FramerateControl
    Vc3FramerateControl (..),

    -- * Vc3FramerateConversionAlgorithm
    Vc3FramerateConversionAlgorithm (..),

    -- * Vc3InterlaceMode
    Vc3InterlaceMode (..),

    -- * Vc3ScanTypeConversionMode
    Vc3ScanTypeConversionMode (..),

    -- * Vc3SlowPal
    Vc3SlowPal (..),

    -- * Vc3Telecine
    Vc3Telecine (..),

    -- * VideoCodec
    VideoCodec (..),

    -- * VideoTimecodeInsertion
    VideoTimecodeInsertion (..),

    -- * Vp8FramerateControl
    Vp8FramerateControl (..),

    -- * Vp8FramerateConversionAlgorithm
    Vp8FramerateConversionAlgorithm (..),

    -- * Vp8ParControl
    Vp8ParControl (..),

    -- * Vp8QualityTuningLevel
    Vp8QualityTuningLevel (..),

    -- * Vp8RateControlMode
    Vp8RateControlMode (..),

    -- * Vp9FramerateControl
    Vp9FramerateControl (..),

    -- * Vp9FramerateConversionAlgorithm
    Vp9FramerateConversionAlgorithm (..),

    -- * Vp9ParControl
    Vp9ParControl (..),

    -- * Vp9QualityTuningLevel
    Vp9QualityTuningLevel (..),

    -- * Vp9RateControlMode
    Vp9RateControlMode (..),

    -- * WatermarkingStrength
    WatermarkingStrength (..),

    -- * WavFormat
    WavFormat (..),

    -- * AacSettings
    AacSettings (..),
    aacSettings,
    aAudioDescriptionBroadcasterMix,
    aRateControlMode,
    aCodingMode,
    aCodecProfile,
    aRawFormat,
    aSampleRate,
    aVbrQuality,
    aBitrate,
    aSpecification,

    -- * Ac3Settings
    Ac3Settings (..),
    ac3Settings,
    asDialnorm,
    asCodingMode,
    asLfeFilter,
    asDynamicRangeCompressionProfile,
    asSampleRate,
    asBitstreamMode,
    asBitrate,
    asMetadataControl,

    -- * AccelerationSettings
    AccelerationSettings (..),
    accelerationSettings,
    asMode,

    -- * AiffSettings
    AiffSettings (..),
    aiffSettings,
    assChannels,
    assBitDepth,
    assSampleRate,

    -- * AncillarySourceSettings
    AncillarySourceSettings (..),
    ancillarySourceSettings,
    assTerminateCaptions,
    assConvert608To708,
    assSourceAncillaryChannelNumber,

    -- * AudioChannelTaggingSettings
    AudioChannelTaggingSettings (..),
    audioChannelTaggingSettings,
    actsChannelTag,

    -- * AudioCodecSettings
    AudioCodecSettings (..),
    audioCodecSettings,
    acsAc3Settings,
    acsVorbisSettings,
    acsCodec,
    acsMp3Settings,
    acsMp2Settings,
    acsOpusSettings,
    acsEac3Settings,
    acsAacSettings,
    acsWavSettings,
    acsAiffSettings,
    acsEac3AtmosSettings,

    -- * AudioDescription
    AudioDescription (..),
    audioDescription,
    adLanguageCode,
    adCustomLanguageCode,
    adAudioType,
    adCodecSettings,
    adLanguageCodeControl,
    adAudioChannelTaggingSettings,
    adAudioSourceName,
    adAudioTypeControl,
    adRemixSettings,
    adAudioNormalizationSettings,
    adStreamName,

    -- * AudioNormalizationSettings
    AudioNormalizationSettings (..),
    audioNormalizationSettings,
    ansCorrectionGateLevel,
    ansAlgorithm,
    ansPeakCalculation,
    ansTargetLkfs,
    ansAlgorithmControl,
    ansLoudnessLogging,

    -- * AudioSelector
    AudioSelector (..),
    audioSelector,
    asLanguageCode,
    asProgramSelection,
    asCustomLanguageCode,
    asTracks,
    asDefaultSelection,
    asSelectorType,
    asRemixSettings,
    asPids,
    asExternalAudioFileInput,
    asOffset,

    -- * AudioSelectorGroup
    AudioSelectorGroup (..),
    audioSelectorGroup,
    asgAudioSelectorNames,

    -- * AutomatedAbrSettings
    AutomatedAbrSettings (..),
    automatedAbrSettings,
    aasMinAbrBitrate,
    aasMaxRenditions,
    aasMaxAbrBitrate,

    -- * AutomatedEncodingSettings
    AutomatedEncodingSettings (..),
    automatedEncodingSettings,
    aesAbrSettings,

    -- * Av1QvbrSettings
    Av1QvbrSettings (..),
    av1QvbrSettings,
    aqsQvbrQualityLevelFineTune,
    aqsQvbrQualityLevel,

    -- * Av1Settings
    Av1Settings (..),
    av1Settings,
    asSpatialAdaptiveQuantization,
    asFramerateNumerator,
    asRateControlMode,
    asSlices,
    asGopSize,
    asFramerateDenominator,
    asMaxBitrate,
    asAdaptiveQuantization,
    asFramerateControl,
    asNumberBFramesBetweenReferenceFrames,
    asFramerateConversionAlgorithm,
    asQvbrSettings,

    -- * AvailBlanking
    AvailBlanking (..),
    availBlanking,
    abAvailBlankingImage,

    -- * AvcIntraSettings
    AvcIntraSettings (..),
    avcIntraSettings,
    aisInterlaceMode,
    aisTelecine,
    aisFramerateNumerator,
    aisFramerateDenominator,
    aisAvcIntraClass,
    aisScanTypeConversionMode,
    aisFramerateControl,
    aisAvcIntraUhdSettings,
    aisFramerateConversionAlgorithm,
    aisSlowPal,

    -- * AvcIntraUhdSettings
    AvcIntraUhdSettings (..),
    avcIntraUhdSettings,
    aiusQualityTuningLevel,

    -- * BurninDestinationSettings
    BurninDestinationSettings (..),
    burninDestinationSettings,
    bdsAlignment,
    bdsShadowOpacity,
    bdsTeletextSpacing,
    bdsShadowColor,
    bdsOutlineColor,
    bdsBackgroundOpacity,
    bdsFontScript,
    bdsXPosition,
    bdsFontColor,
    bdsFontSize,
    bdsBackgroundColor,
    bdsShadowXOffset,
    bdsYPosition,
    bdsFontResolution,
    bdsOutlineSize,
    bdsFontOpacity,
    bdsShadowYOffset,

    -- * CaptionDescription
    CaptionDescription (..),
    captionDescription,
    cdLanguageCode,
    cdLanguageDescription,
    cdCustomLanguageCode,
    cdCaptionSelectorName,
    cdDestinationSettings,

    -- * CaptionDescriptionPreset
    CaptionDescriptionPreset (..),
    captionDescriptionPreset,
    cdpLanguageCode,
    cdpLanguageDescription,
    cdpCustomLanguageCode,
    cdpDestinationSettings,

    -- * CaptionDestinationSettings
    CaptionDestinationSettings (..),
    captionDestinationSettings,
    cdsEmbeddedDestinationSettings,
    cdsDestinationType,
    cdsDvbSubDestinationSettings,
    cdsTeletextDestinationSettings,
    cdsTtmlDestinationSettings,
    cdsBurninDestinationSettings,
    cdsImscDestinationSettings,
    cdsSccDestinationSettings,

    -- * CaptionSelector
    CaptionSelector (..),
    captionSelector,
    csLanguageCode,
    csCustomLanguageCode,
    csSourceSettings,

    -- * CaptionSourceFramerate
    CaptionSourceFramerate (..),
    captionSourceFramerate,
    csfFramerateNumerator,
    csfFramerateDenominator,

    -- * CaptionSourceSettings
    CaptionSourceSettings (..),
    captionSourceSettings,
    cssAncillarySourceSettings,
    cssTrackSourceSettings,
    cssEmbeddedSourceSettings,
    cssDvbSubSourceSettings,
    cssFileSourceSettings,
    cssTeletextSourceSettings,
    cssSourceType,

    -- * ChannelMapping
    ChannelMapping (..),
    channelMapping,
    cmOutputChannels,

    -- * CmafAdditionalManifest
    CmafAdditionalManifest (..),
    cmafAdditionalManifest,
    camManifestNameModifier,
    camSelectedOutputs,

    -- * CmafEncryptionSettings
    CmafEncryptionSettings (..),
    cmafEncryptionSettings,
    cesSpekeKeyProvider,
    cesEncryptionMethod,
    cesConstantInitializationVector,
    cesInitializationVectorInManifest,
    cesStaticKeyProvider,
    cesType,

    -- * CmafGroupSettings
    CmafGroupSettings (..),
    cmafGroupSettings,
    cgsSegmentLength,
    cgsSegmentControl,
    cgsWriteDashManifest,
    cgsFragmentLength,
    cgsManifestCompression,
    cgsBaseURL,
    cgsStreamInfResolution,
    cgsCodecSpecification,
    cgsAdditionalManifests,
    cgsMpdProfile,
    cgsEncryption,
    cgsMinBufferTime,
    cgsDestination,
    cgsMinFinalSegmentLength,
    cgsDestinationSettings,
    cgsWriteSegmentTimelineInRepresentation,
    cgsWriteHlsManifest,
    cgsClientCache,
    cgsManifestDurationFormat,

    -- * CmfcSettings
    CmfcSettings (..),
    cmfcSettings,
    csIFrameOnlyManifest,
    csAudioDuration,
    csScte35Esam,
    csScte35Source,

    -- * ColorCorrector
    ColorCorrector (..),
    colorCorrector,
    ccSaturation,
    ccColorSpaceConversion,
    ccHdr10Metadata,
    ccBrightness,
    ccHue,
    ccContrast,

    -- * ContainerSettings
    ContainerSettings (..),
    containerSettings,
    csContainer,
    csMpdSettings,
    csMp4Settings,
    csF4vSettings,
    csMxfSettings,
    csMovSettings,
    csCmfcSettings,
    csM3u8Settings,
    csM2tsSettings,

    -- * DashAdditionalManifest
    DashAdditionalManifest (..),
    dashAdditionalManifest,
    damManifestNameModifier,
    damSelectedOutputs,

    -- * DashIsoEncryptionSettings
    DashIsoEncryptionSettings (..),
    dashIsoEncryptionSettings,
    diesSpekeKeyProvider,
    diesPlaybackDeviceCompatibility,

    -- * DashIsoGroupSettings
    DashIsoGroupSettings (..),
    dashIsoGroupSettings,
    digsSegmentLength,
    digsSegmentControl,
    digsFragmentLength,
    digsBaseURL,
    digsAdditionalManifests,
    digsMpdProfile,
    digsEncryption,
    digsMinBufferTime,
    digsHbbtvCompliance,
    digsDestination,
    digsMinFinalSegmentLength,
    digsDestinationSettings,
    digsWriteSegmentTimelineInRepresentation,

    -- * Deinterlacer
    Deinterlacer (..),
    deinterlacer,
    dAlgorithm,
    dMode,
    dControl,

    -- * DestinationSettings
    DestinationSettings (..),
    destinationSettings,
    dsS3Settings,

    -- * DolbyVision
    DolbyVision (..),
    dolbyVision,
    dvL6Mode,
    dvL6Metadata,
    dvProfile,

    -- * DolbyVisionLevel6Metadata
    DolbyVisionLevel6Metadata (..),
    dolbyVisionLevel6Metadata,
    dvlmMaxCll,
    dvlmMaxFall,

    -- * DvbNitSettings
    DvbNitSettings (..),
    dvbNitSettings,
    dnsNitInterval,
    dnsNetworkName,
    dnsNetworkId,

    -- * DvbSdtSettings
    DvbSdtSettings (..),
    dvbSdtSettings,
    dssOutputSdt,
    dssServiceName,
    dssSdtInterval,
    dssServiceProviderName,

    -- * DvbSubDestinationSettings
    DvbSubDestinationSettings (..),
    dvbSubDestinationSettings,
    dsdsAlignment,
    dsdsShadowOpacity,
    dsdsTeletextSpacing,
    dsdsShadowColor,
    dsdsOutlineColor,
    dsdsBackgroundOpacity,
    dsdsFontScript,
    dsdsXPosition,
    dsdsSubtitlingType,
    dsdsFontColor,
    dsdsFontSize,
    dsdsBackgroundColor,
    dsdsShadowXOffset,
    dsdsYPosition,
    dsdsFontResolution,
    dsdsOutlineSize,
    dsdsFontOpacity,
    dsdsShadowYOffset,

    -- * DvbSubSourceSettings
    DvbSubSourceSettings (..),
    dvbSubSourceSettings,
    dsssPid,

    -- * DvbTdtSettings
    DvbTdtSettings (..),
    dvbTdtSettings,
    dtsTdtInterval,

    -- * Eac3AtmosSettings
    Eac3AtmosSettings (..),
    eac3AtmosSettings,
    easLoRoCenterMixLevel,
    easLtRtCenterMixLevel,
    easSpeechThreshold,
    easCodingMode,
    easDialogueIntelligence,
    easLoRoSurroundMixLevel,
    easLtRtSurroundMixLevel,
    easSampleRate,
    easStereoDownmix,
    easMeteringMode,
    easBitstreamMode,
    easSurroundExMode,
    easDynamicRangeCompressionRf,
    easBitrate,
    easDynamicRangeCompressionLine,

    -- * Eac3Settings
    Eac3Settings (..),
    eac3Settings,
    esLoRoCenterMixLevel,
    esLtRtCenterMixLevel,
    esDialnorm,
    esCodingMode,
    esLfeControl,
    esLoRoSurroundMixLevel,
    esLtRtSurroundMixLevel,
    esLfeFilter,
    esDcFilter,
    esSampleRate,
    esStereoDownmix,
    esBitstreamMode,
    esSurroundExMode,
    esPhaseControl,
    esDynamicRangeCompressionRf,
    esPassthroughControl,
    esBitrate,
    esAttenuationControl,
    esSurroundMode,
    esMetadataControl,
    esDynamicRangeCompressionLine,

    -- * EmbeddedDestinationSettings
    EmbeddedDestinationSettings (..),
    embeddedDestinationSettings,
    edsDestination708ServiceNumber,
    edsDestination608ChannelNumber,

    -- * EmbeddedSourceSettings
    EmbeddedSourceSettings (..),
    embeddedSourceSettings,
    essTerminateCaptions,
    essConvert608To708,
    essSource608TrackNumber,
    essSource608ChannelNumber,

    -- * Endpoint
    Endpoint (..),
    endpoint,
    eURL,

    -- * EsamManifestConfirmConditionNotification
    EsamManifestConfirmConditionNotification (..),
    esamManifestConfirmConditionNotification,
    emccnMccXML,

    -- * EsamSettings
    EsamSettings (..),
    esamSettings,
    esResponseSignalPreroll,
    esManifestConfirmConditionNotification,
    esSignalProcessingNotification,

    -- * EsamSignalProcessingNotification
    EsamSignalProcessingNotification (..),
    esamSignalProcessingNotification,
    espnSccXML,

    -- * F4vSettings
    F4vSettings (..),
    f4vSettings,
    fsMoovPlacement,

    -- * FileGroupSettings
    FileGroupSettings (..),
    fileGroupSettings,
    fgsDestination,
    fgsDestinationSettings,

    -- * FileSourceSettings
    FileSourceSettings (..),
    fileSourceSettings,
    fssConvert608To708,
    fssFramerate,
    fssSourceFile,
    fssTimeDelta,

    -- * FrameCaptureSettings
    FrameCaptureSettings (..),
    frameCaptureSettings,
    fcsFramerateNumerator,
    fcsMaxCaptures,
    fcsFramerateDenominator,
    fcsQuality,

    -- * H264QvbrSettings
    H264QvbrSettings (..),
    h264QvbrSettings,
    hqsQvbrQualityLevelFineTune,
    hqsQvbrQualityLevel,
    hqsMaxAverageBitrate,

    -- * H264Settings
    H264Settings (..),
    h264Settings,
    hsHrdBufferInitialFillPercentage,
    hsTemporalAdaptiveQuantization,
    hsFlickerAdaptiveQuantization,
    hsQualityTuningLevel,
    hsInterlaceMode,
    hsRepeatPps,
    hsFieldEncoding,
    hsTelecine,
    hsGopBReference,
    hsSpatialAdaptiveQuantization,
    hsFramerateNumerator,
    hsRateControlMode,
    hsNumberReferenceFrames,
    hsSlices,
    hsEntropyEncoding,
    hsGopSizeUnits,
    hsCodecProfile,
    hsGopSize,
    hsFramerateDenominator,
    hsSoftness,
    hsParNumerator,
    hsSceneChangeDetect,
    hsMinIInterval,
    hsUnregisteredSeiTimecode,
    hsScanTypeConversionMode,
    hsParControl,
    hsGopClosedCadence,
    hsParDenominator,
    hsMaxBitrate,
    hsDynamicSubGop,
    hsSyntax,
    hsHrdBufferSize,
    hsAdaptiveQuantization,
    hsFramerateControl,
    hsNumberBFramesBetweenReferenceFrames,
    hsFramerateConversionAlgorithm,
    hsCodecLevel,
    hsBitrate,
    hsQvbrSettings,
    hsSlowPal,

    -- * H265QvbrSettings
    H265QvbrSettings (..),
    h265QvbrSettings,
    hQvbrQualityLevelFineTune,
    hQvbrQualityLevel,
    hMaxAverageBitrate,

    -- * H265Settings
    H265Settings (..),
    h265Settings,
    hssHrdBufferInitialFillPercentage,
    hssTemporalAdaptiveQuantization,
    hssFlickerAdaptiveQuantization,
    hssQualityTuningLevel,
    hssInterlaceMode,
    hssTelecine,
    hssGopBReference,
    hssSpatialAdaptiveQuantization,
    hssFramerateNumerator,
    hssRateControlMode,
    hssNumberReferenceFrames,
    hssSlices,
    hssWriteMp4PackagingType,
    hssGopSizeUnits,
    hssCodecProfile,
    hssGopSize,
    hssFramerateDenominator,
    hssParNumerator,
    hssTiles,
    hssSceneChangeDetect,
    hssMinIInterval,
    hssUnregisteredSeiTimecode,
    hssScanTypeConversionMode,
    hssParControl,
    hssGopClosedCadence,
    hssParDenominator,
    hssMaxBitrate,
    hssDynamicSubGop,
    hssAlternateTransferFunctionSei,
    hssHrdBufferSize,
    hssAdaptiveQuantization,
    hssFramerateControl,
    hssNumberBFramesBetweenReferenceFrames,
    hssFramerateConversionAlgorithm,
    hssCodecLevel,
    hssBitrate,
    hssTemporalIds,
    hssQvbrSettings,
    hssSampleAdaptiveOffsetFilterMode,
    hssSlowPal,

    -- * Hdr10Metadata
    Hdr10Metadata (..),
    hdr10Metadata,
    hmGreenPrimaryX,
    hmMaxLuminance,
    hmGreenPrimaryY,
    hmBluePrimaryY,
    hmBluePrimaryX,
    hmRedPrimaryX,
    hmRedPrimaryY,
    hmWhitePointX,
    hmMinLuminance,
    hmMaxContentLightLevel,
    hmMaxFrameAverageLightLevel,
    hmWhitePointY,

    -- * HlsAdditionalManifest
    HlsAdditionalManifest (..),
    hlsAdditionalManifest,
    hamManifestNameModifier,
    hamSelectedOutputs,

    -- * HlsCaptionLanguageMapping
    HlsCaptionLanguageMapping (..),
    hlsCaptionLanguageMapping,
    hclmLanguageCode,
    hclmLanguageDescription,
    hclmCustomLanguageCode,
    hclmCaptionChannel,

    -- * HlsEncryptionSettings
    HlsEncryptionSettings (..),
    hlsEncryptionSettings,
    hesOfflineEncrypted,
    hesSpekeKeyProvider,
    hesEncryptionMethod,
    hesConstantInitializationVector,
    hesInitializationVectorInManifest,
    hesStaticKeyProvider,
    hesType,

    -- * HlsGroupSettings
    HlsGroupSettings (..),
    hlsGroupSettings,
    hgsOutputSelection,
    hgsTimedMetadataId3Period,
    hgsSegmentLength,
    hgsTimedMetadataId3Frame,
    hgsAdMarkers,
    hgsSegmentControl,
    hgsDirectoryStructure,
    hgsManifestCompression,
    hgsBaseURL,
    hgsStreamInfResolution,
    hgsCodecSpecification,
    hgsAdditionalManifests,
    hgsProgramDateTime,
    hgsSegmentsPerSubdirectory,
    hgsEncryption,
    hgsDestination,
    hgsMinFinalSegmentLength,
    hgsDestinationSettings,
    hgsCaptionLanguageMappings,
    hgsTimestampDeltaMilliseconds,
    hgsProgramDateTimePeriod,
    hgsClientCache,
    hgsAudioOnlyHeader,
    hgsMinSegmentLength,
    hgsManifestDurationFormat,
    hgsCaptionLanguageSetting,

    -- * HlsSettings
    HlsSettings (..),
    hlsSettings,
    hsAudioRenditionSets,
    hsIFrameOnlyManifest,
    hsSegmentModifier,
    hsAudioOnlyContainer,
    hsAudioGroupId,
    hsAudioTrackType,

    -- * HopDestination
    HopDestination (..),
    hopDestination,
    hdPriority,
    hdQueue,
    hdWaitMinutes,

    -- * Id3Insertion
    Id3Insertion (..),
    id3Insertion,
    iiId3,
    iiTimecode,

    -- * ImageInserter
    ImageInserter (..),
    imageInserter,
    iiInsertableImages,

    -- * ImscDestinationSettings
    ImscDestinationSettings (..),
    imscDestinationSettings,
    idsStylePassthrough,

    -- * Input
    Input (..),
    input,
    iImageInserter,
    iDenoiseFilter,
    iSupplementalImps,
    iInputScanType,
    iInputClippings,
    iFileInput,
    iTimecodeStart,
    iDecryptionSettings,
    iAudioSelectors,
    iFilterStrength,
    iPsiControl,
    iProgramNumber,
    iAudioSelectorGroups,
    iVideoSelector,
    iFilterEnable,
    iPosition,
    iCrop,
    iDeblockFilter,
    iCaptionSelectors,
    iTimecodeSource,

    -- * InputClipping
    InputClipping (..),
    inputClipping,
    icStartTimecode,
    icEndTimecode,

    -- * InputDecryptionSettings
    InputDecryptionSettings (..),
    inputDecryptionSettings,
    idsDecryptionMode,
    idsEncryptedDecryptionKey,
    idsInitializationVector,
    idsKMSKeyRegion,

    -- * InputTemplate
    InputTemplate (..),
    inputTemplate,
    itImageInserter,
    itDenoiseFilter,
    itInputScanType,
    itInputClippings,
    itTimecodeStart,
    itAudioSelectors,
    itFilterStrength,
    itPsiControl,
    itProgramNumber,
    itAudioSelectorGroups,
    itVideoSelector,
    itFilterEnable,
    itPosition,
    itCrop,
    itDeblockFilter,
    itCaptionSelectors,
    itTimecodeSource,

    -- * InsertableImage
    InsertableImage (..),
    insertableImage,
    iiHeight,
    iiImageX,
    iiImageY,
    iiDuration,
    iiWidth,
    iiLayer,
    iiStartTime,
    iiOpacity,
    iiFadeIn,
    iiImageInserterInput,
    iiFadeOut,

    -- * Job
    Job (..),
    job,
    jAccelerationSettings,
    jBillingTagsSource,
    jStatus,
    jAccelerationStatus,
    jRetryCount,
    jQueueTransitions,
    jARN,
    jId,
    jJobPercentComplete,
    jCreatedAt,
    jPriority,
    jStatusUpdateInterval,
    jJobTemplate,
    jUserMetadata,
    jQueue,
    jCurrentPhase,
    jErrorMessage,
    jSimulateReservedQueue,
    jTiming,
    jHopDestinations,
    jMessages,
    jErrorCode,
    jOutputGroupDetails,
    jRole,
    jSettings,

    -- * JobMessages
    JobMessages (..),
    jobMessages,
    jmInfo,
    jmWarning,

    -- * JobSettings
    JobSettings (..),
    jobSettings,
    jsAdAvailOffset,
    jsTimedMetadataInsertion,
    jsEsam,
    jsNielsenNonLinearWatermark,
    jsMotionImageInserter,
    jsAvailBlanking,
    jsNielsenConfiguration,
    jsOutputGroups,
    jsInputs,
    jsTimecodeConfig,

    -- * JobTemplate
    JobTemplate (..),
    jobTemplate,
    jtAccelerationSettings,
    jtCategory,
    jtARN,
    jtCreatedAt,
    jtPriority,
    jtStatusUpdateInterval,
    jtLastUpdated,
    jtQueue,
    jtDescription,
    jtType,
    jtHopDestinations,
    jtSettings,
    jtName,

    -- * JobTemplateSettings
    JobTemplateSettings (..),
    jobTemplateSettings,
    jtsAdAvailOffset,
    jtsTimedMetadataInsertion,
    jtsEsam,
    jtsNielsenNonLinearWatermark,
    jtsMotionImageInserter,
    jtsAvailBlanking,
    jtsNielsenConfiguration,
    jtsOutputGroups,
    jtsInputs,
    jtsTimecodeConfig,

    -- * M2tsScte35Esam
    M2tsScte35Esam (..),
    m2tsScte35Esam,
    mseScte35EsamPid,

    -- * M2tsSettings
    M2tsSettings (..),
    m2tsSettings,
    m2tSegmentationMarkers,
    m2tPmtPid,
    m2tVideoPid,
    m2tAudioBufferModel,
    m2tTimedMetadataPid,
    m2tSegmentationStyle,
    m2tDvbNitSettings,
    m2tNullPacketBitrate,
    m2tPcrControl,
    m2tEbpAudioInterval,
    m2tEbpPlacement,
    m2tPmtInterval,
    m2tAudioPids,
    m2tPatInterval,
    m2tMinEbpInterval,
    m2tMaxPcrInterval,
    m2tProgramNumber,
    m2tBufferModel,
    m2tPcrPid,
    m2tAudioFramesPerPes,
    m2tRateMode,
    m2tDvbTdtSettings,
    m2tDvbSdtSettings,
    m2tSegmentationTime,
    m2tAudioDuration,
    m2tNielsenId3,
    m2tDvbTeletextPid,
    m2tBitrate,
    m2tFragmentTime,
    m2tEsRateInPes,
    m2tPrivateMetadataPid,
    m2tScte35Esam,
    m2tScte35Source,
    m2tForceTsVideoEbpOrder,
    m2tTransportStreamId,
    m2tDvbSubPids,
    m2tScte35Pid,

    -- * M3u8Settings
    M3u8Settings (..),
    m3u8Settings,
    mssPmtPid,
    mssTimedMetadata,
    mssVideoPid,
    mssTimedMetadataPid,
    mssPcrControl,
    mssPmtInterval,
    mssAudioPids,
    mssPatInterval,
    mssProgramNumber,
    mssPcrPid,
    mssAudioFramesPerPes,
    mssAudioDuration,
    mssNielsenId3,
    mssPrivateMetadataPid,
    mssScte35Source,
    mssTransportStreamId,
    mssScte35Pid,

    -- * MotionImageInserter
    MotionImageInserter (..),
    motionImageInserter,
    miiInsertionMode,
    miiInput,
    miiStartTime,
    miiPlayback,
    miiFramerate,
    miiOffset,

    -- * MotionImageInsertionFramerate
    MotionImageInsertionFramerate (..),
    motionImageInsertionFramerate,
    miifFramerateNumerator,
    miifFramerateDenominator,

    -- * MotionImageInsertionOffset
    MotionImageInsertionOffset (..),
    motionImageInsertionOffset,
    miioImageX,
    miioImageY,

    -- * MovSettings
    MovSettings (..),
    movSettings,
    msPaddingControl,
    msCslgAtom,
    msMpeg2FourCCControl,
    msClapAtom,
    msReference,

    -- * Mp2Settings
    Mp2Settings (..),
    mp2Settings,
    mChannels,
    mSampleRate,
    mBitrate,

    -- * Mp3Settings
    Mp3Settings (..),
    mp3Settings,
    msRateControlMode,
    msChannels,
    msSampleRate,
    msVbrQuality,
    msBitrate,

    -- * Mp4Settings
    Mp4Settings (..),
    mp4Settings,
    mCslgAtom,
    mMp4MajorBrand,
    mAudioDuration,
    mFreeSpaceBox,
    mMoovPlacement,
    mCttsVersion,

    -- * MpdSettings
    MpdSettings (..),
    mpdSettings,
    msAccessibilityCaptionHints,
    msCaptionContainerType,
    msAudioDuration,
    msScte35Esam,
    msScte35Source,

    -- * Mpeg2Settings
    Mpeg2Settings (..),
    mpeg2Settings,
    mssHrdBufferInitialFillPercentage,
    mssTemporalAdaptiveQuantization,
    mssQualityTuningLevel,
    mssInterlaceMode,
    mssIntraDcPrecision,
    mssTelecine,
    mssSpatialAdaptiveQuantization,
    mssFramerateNumerator,
    mssRateControlMode,
    mssGopSizeUnits,
    mssCodecProfile,
    mssGopSize,
    mssFramerateDenominator,
    mssSoftness,
    mssParNumerator,
    mssSceneChangeDetect,
    mssMinIInterval,
    mssScanTypeConversionMode,
    mssParControl,
    mssGopClosedCadence,
    mssParDenominator,
    mssMaxBitrate,
    mssDynamicSubGop,
    mssSyntax,
    mssHrdBufferSize,
    mssAdaptiveQuantization,
    mssFramerateControl,
    mssNumberBFramesBetweenReferenceFrames,
    mssFramerateConversionAlgorithm,
    mssCodecLevel,
    mssBitrate,
    mssSlowPal,

    -- * MsSmoothAdditionalManifest
    MsSmoothAdditionalManifest (..),
    msSmoothAdditionalManifest,
    msamManifestNameModifier,
    msamSelectedOutputs,

    -- * MsSmoothEncryptionSettings
    MsSmoothEncryptionSettings (..),
    msSmoothEncryptionSettings,
    msesSpekeKeyProvider,

    -- * MsSmoothGroupSettings
    MsSmoothGroupSettings (..),
    msSmoothGroupSettings,
    msgsManifestEncoding,
    msgsFragmentLength,
    msgsAdditionalManifests,
    msgsEncryption,
    msgsDestination,
    msgsDestinationSettings,
    msgsAudioDeduplication,

    -- * MxfSettings
    MxfSettings (..),
    mxfSettings,
    msProfile,
    msAfdSignaling,

    -- * NexGuardFileMarkerSettings
    NexGuardFileMarkerSettings (..),
    nexGuardFileMarkerSettings,
    ngfmsPayload,
    ngfmsLicense,
    ngfmsPreset,
    ngfmsStrength,

    -- * NielsenConfiguration
    NielsenConfiguration (..),
    nielsenConfiguration,
    ncBreakoutCode,
    ncDistributorId,

    -- * NielsenNonLinearWatermarkSettings
    NielsenNonLinearWatermarkSettings (..),
    nielsenNonLinearWatermarkSettings,
    nnlwsAssetName,
    nnlwsActiveWatermarkProcess,
    nnlwsSourceWatermarkStatus,
    nnlwsTicServerURL,
    nnlwsSourceId,
    nnlwsCbetSourceId,
    nnlwsEpisodeId,
    nnlwsMetadataDestination,
    nnlwsUniqueTicPerAudioTrack,
    nnlwsAdiFilename,
    nnlwsAssetId,

    -- * NoiseReducer
    NoiseReducer (..),
    noiseReducer,
    nrSpatialFilterSettings,
    nrTemporalFilterSettings,
    nrFilterSettings,
    nrFilter,

    -- * NoiseReducerFilterSettings
    NoiseReducerFilterSettings (..),
    noiseReducerFilterSettings,
    nrfsStrength,

    -- * NoiseReducerSpatialFilterSettings
    NoiseReducerSpatialFilterSettings (..),
    noiseReducerSpatialFilterSettings,
    nrsfsSpeed,
    nrsfsPostFilterSharpenStrength,
    nrsfsStrength,

    -- * NoiseReducerTemporalFilterSettings
    NoiseReducerTemporalFilterSettings (..),
    noiseReducerTemporalFilterSettings,
    nrtfsPostTemporalSharpening,
    nrtfsSpeed,
    nrtfsAggressiveMode,
    nrtfsStrength,

    -- * OpusSettings
    OpusSettings (..),
    opusSettings,
    osChannels,
    osSampleRate,
    osBitrate,

    -- * Output
    Output (..),
    output,
    oAudioDescriptions,
    oPreset,
    oContainerSettings,
    oVideoDescription,
    oExtension,
    oCaptionDescriptions,
    oNameModifier,
    oOutputSettings,

    -- * OutputChannelMapping
    OutputChannelMapping (..),
    outputChannelMapping,
    ocmInputChannels,
    ocmInputChannelsFineTune,

    -- * OutputDetail
    OutputDetail (..),
    outputDetail,
    odVideoDetails,
    odDurationInMs,

    -- * OutputGroup
    OutputGroup (..),
    outputGroup,
    ogOutputs,
    ogAutomatedEncodingSettings,
    ogOutputGroupSettings,
    ogName,
    ogCustomName,

    -- * OutputGroupDetail
    OutputGroupDetail (..),
    outputGroupDetail,
    ogdOutputDetails,

    -- * OutputGroupSettings
    OutputGroupSettings (..),
    outputGroupSettings,
    ogsMsSmoothGroupSettings,
    ogsHlsGroupSettings,
    ogsFileGroupSettings,
    ogsDashIsoGroupSettings,
    ogsCmafGroupSettings,
    ogsType,

    -- * OutputSettings
    OutputSettings (..),
    outputSettings,
    osHlsSettings,

    -- * PartnerWatermarking
    PartnerWatermarking (..),
    partnerWatermarking,
    pwNexguardFileMarkerSettings,

    -- * Preset
    Preset (..),
    preset,
    pCategory,
    pARN,
    pCreatedAt,
    pLastUpdated,
    pDescription,
    pType,
    pSettings,
    pName,

    -- * PresetSettings
    PresetSettings (..),
    presetSettings,
    psAudioDescriptions,
    psContainerSettings,
    psVideoDescription,
    psCaptionDescriptions,

    -- * ProresSettings
    ProresSettings (..),
    proresSettings,
    psInterlaceMode,
    psTelecine,
    psFramerateNumerator,
    psCodecProfile,
    psFramerateDenominator,
    psParNumerator,
    psScanTypeConversionMode,
    psParControl,
    psParDenominator,
    psFramerateControl,
    psFramerateConversionAlgorithm,
    psSlowPal,

    -- * Queue
    Queue (..),
    queue,
    qStatus,
    qARN,
    qCreatedAt,
    qLastUpdated,
    qSubmittedJobsCount,
    qDescription,
    qPricingPlan,
    qReservationPlan,
    qType,
    qProgressingJobsCount,
    qName,

    -- * QueueTransition
    QueueTransition (..),
    queueTransition,
    qtSourceQueue,
    qtTimestamp,
    qtDestinationQueue,

    -- * Rectangle
    Rectangle (..),
    rectangle,
    rHeight,
    rY,
    rWidth,
    rX,

    -- * RemixSettings
    RemixSettings (..),
    remixSettings,
    rsChannelMapping,
    rsChannelsIn,
    rsChannelsOut,

    -- * ReservationPlan
    ReservationPlan (..),
    reservationPlan,
    rpStatus,
    rpReservedSlots,
    rpExpiresAt,
    rpPurchasedAt,
    rpRenewalType,
    rpCommitment,

    -- * ReservationPlanSettings
    ReservationPlanSettings (..),
    reservationPlanSettings,
    rpsCommitment,
    rpsReservedSlots,
    rpsRenewalType,

    -- * ResourceTags
    ResourceTags (..),
    resourceTags,
    rtARN,
    rtTags,

    -- * S3DestinationAccessControl
    S3DestinationAccessControl (..),
    s3DestinationAccessControl,
    sdacCannedACL,

    -- * S3DestinationSettings
    S3DestinationSettings (..),
    s3DestinationSettings,
    sdsEncryption,
    sdsAccessControl,

    -- * S3EncryptionSettings
    S3EncryptionSettings (..),
    s3EncryptionSettings,
    sesEncryptionType,
    sesKMSKeyARN,

    -- * SccDestinationSettings
    SccDestinationSettings (..),
    sccDestinationSettings,
    sdsFramerate,

    -- * SpekeKeyProvider
    SpekeKeyProvider (..),
    spekeKeyProvider,
    skpResourceId,
    skpCertificateARN,
    skpSystemIds,
    skpURL,

    -- * SpekeKeyProviderCmaf
    SpekeKeyProviderCmaf (..),
    spekeKeyProviderCmaf,
    skpcResourceId,
    skpcCertificateARN,
    skpcURL,
    skpcHlsSignaledSystemIds,
    skpcDashSignaledSystemIds,

    -- * StaticKeyProvider
    StaticKeyProvider (..),
    staticKeyProvider,
    sKeyFormat,
    sStaticKeyValue,
    sURL,
    sKeyFormatVersions,

    -- * TeletextDestinationSettings
    TeletextDestinationSettings (..),
    teletextDestinationSettings,
    tdsPageTypes,
    tdsPageNumber,

    -- * TeletextSourceSettings
    TeletextSourceSettings (..),
    teletextSourceSettings,
    tssPageNumber,

    -- * TimecodeBurnin
    TimecodeBurnin (..),
    timecodeBurnin,
    tbPrefix,
    tbPosition,
    tbFontSize,

    -- * TimecodeConfig
    TimecodeConfig (..),
    timecodeConfig,
    tcAnchor,
    tcSource,
    tcTimestampOffset,
    tcStart,

    -- * TimedMetadataInsertion
    TimedMetadataInsertion (..),
    timedMetadataInsertion,
    tmiId3Insertions,

    -- * Timing
    Timing (..),
    timing,
    tFinishTime,
    tStartTime,
    tSubmitTime,

    -- * TrackSourceSettings
    TrackSourceSettings (..),
    trackSourceSettings,
    tssTrackNumber,

    -- * TtmlDestinationSettings
    TtmlDestinationSettings (..),
    ttmlDestinationSettings,
    tdsStylePassthrough,

    -- * Vc3Settings
    Vc3Settings (..),
    vc3Settings,
    vsInterlaceMode,
    vsTelecine,
    vsFramerateNumerator,
    vsFramerateDenominator,
    vsScanTypeConversionMode,
    vsFramerateControl,
    vsFramerateConversionAlgorithm,
    vsVc3Class,
    vsSlowPal,

    -- * VideoCodecSettings
    VideoCodecSettings (..),
    videoCodecSettings,
    vcsFrameCaptureSettings,
    vcsCodec,
    vcsVc3Settings,
    vcsVp8Settings,
    vcsMpeg2Settings,
    vcsH264Settings,
    vcsVp9Settings,
    vcsProresSettings,
    vcsH265Settings,
    vcsAvcIntraSettings,
    vcsAv1Settings,

    -- * VideoDescription
    VideoDescription (..),
    videoDescription,
    vdHeight,
    vdAntiAlias,
    vdDropFrameTimecode,
    vdRespondToAfd,
    vdWidth,
    vdCodecSettings,
    vdColorMetadata,
    vdFixedAfd,
    vdTimecodeInsertion,
    vdScalingBehavior,
    vdPosition,
    vdCrop,
    vdVideoPreprocessors,
    vdSharpness,
    vdAfdSignaling,

    -- * VideoDetail
    VideoDetail (..),
    videoDetail,
    vdWidthInPx,
    vdHeightInPx,

    -- * VideoPreprocessor
    VideoPreprocessor (..),
    videoPreprocessor,
    vpImageInserter,
    vpTimecodeBurnin,
    vpDeinterlacer,
    vpNoiseReducer,
    vpPartnerWatermarking,
    vpColorCorrector,
    vpDolbyVision,

    -- * VideoSelector
    VideoSelector (..),
    videoSelector,
    vsColorSpaceUsage,
    vsHdr10Metadata,
    vsProgramNumber,
    vsRotate,
    vsColorSpace,
    vsAlphaBehavior,
    vsPid,

    -- * VorbisSettings
    VorbisSettings (..),
    vorbisSettings,
    vsChannels,
    vsSampleRate,
    vsVbrQuality,

    -- * Vp8Settings
    Vp8Settings (..),
    vp8Settings,
    vQualityTuningLevel,
    vFramerateNumerator,
    vRateControlMode,
    vGopSize,
    vFramerateDenominator,
    vParNumerator,
    vParControl,
    vParDenominator,
    vMaxBitrate,
    vHrdBufferSize,
    vFramerateControl,
    vFramerateConversionAlgorithm,
    vBitrate,

    -- * Vp9Settings
    Vp9Settings (..),
    vp9Settings,
    vssQualityTuningLevel,
    vssFramerateNumerator,
    vssRateControlMode,
    vssGopSize,
    vssFramerateDenominator,
    vssParNumerator,
    vssParControl,
    vssParDenominator,
    vssMaxBitrate,
    vssHrdBufferSize,
    vssFramerateControl,
    vssFramerateConversionAlgorithm,
    vssBitrate,

    -- * WavSettings
    WavSettings (..),
    wavSettings,
    wsFormat,
    wsChannels,
    wsBitDepth,
    wsSampleRate,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.AacAudioDescriptionBroadcasterMix
import Network.AWS.MediaConvert.Types.AacCodecProfile
import Network.AWS.MediaConvert.Types.AacCodingMode
import Network.AWS.MediaConvert.Types.AacRateControlMode
import Network.AWS.MediaConvert.Types.AacRawFormat
import Network.AWS.MediaConvert.Types.AacSettings
import Network.AWS.MediaConvert.Types.AacSpecification
import Network.AWS.MediaConvert.Types.AacVbrQuality
import Network.AWS.MediaConvert.Types.Ac3BitstreamMode
import Network.AWS.MediaConvert.Types.Ac3CodingMode
import Network.AWS.MediaConvert.Types.Ac3DynamicRangeCompressionProfile
import Network.AWS.MediaConvert.Types.Ac3LfeFilter
import Network.AWS.MediaConvert.Types.Ac3MetadataControl
import Network.AWS.MediaConvert.Types.Ac3Settings
import Network.AWS.MediaConvert.Types.AccelerationMode
import Network.AWS.MediaConvert.Types.AccelerationSettings
import Network.AWS.MediaConvert.Types.AccelerationStatus
import Network.AWS.MediaConvert.Types.AfdSignaling
import Network.AWS.MediaConvert.Types.AiffSettings
import Network.AWS.MediaConvert.Types.AlphaBehavior
import Network.AWS.MediaConvert.Types.AncillaryConvert608To708
import Network.AWS.MediaConvert.Types.AncillarySourceSettings
import Network.AWS.MediaConvert.Types.AncillaryTerminateCaptions
import Network.AWS.MediaConvert.Types.AntiAlias
import Network.AWS.MediaConvert.Types.AudioChannelTag
import Network.AWS.MediaConvert.Types.AudioChannelTaggingSettings
import Network.AWS.MediaConvert.Types.AudioCodec
import Network.AWS.MediaConvert.Types.AudioCodecSettings
import Network.AWS.MediaConvert.Types.AudioDefaultSelection
import Network.AWS.MediaConvert.Types.AudioDescription
import Network.AWS.MediaConvert.Types.AudioLanguageCodeControl
import Network.AWS.MediaConvert.Types.AudioNormalizationAlgorithm
import Network.AWS.MediaConvert.Types.AudioNormalizationAlgorithmControl
import Network.AWS.MediaConvert.Types.AudioNormalizationLoudnessLogging
import Network.AWS.MediaConvert.Types.AudioNormalizationPeakCalculation
import Network.AWS.MediaConvert.Types.AudioNormalizationSettings
import Network.AWS.MediaConvert.Types.AudioSelector
import Network.AWS.MediaConvert.Types.AudioSelectorGroup
import Network.AWS.MediaConvert.Types.AudioSelectorType
import Network.AWS.MediaConvert.Types.AudioTypeControl
import Network.AWS.MediaConvert.Types.AutomatedAbrSettings
import Network.AWS.MediaConvert.Types.AutomatedEncodingSettings
import Network.AWS.MediaConvert.Types.Av1AdaptiveQuantization
import Network.AWS.MediaConvert.Types.Av1FramerateControl
import Network.AWS.MediaConvert.Types.Av1FramerateConversionAlgorithm
import Network.AWS.MediaConvert.Types.Av1QvbrSettings
import Network.AWS.MediaConvert.Types.Av1RateControlMode
import Network.AWS.MediaConvert.Types.Av1Settings
import Network.AWS.MediaConvert.Types.Av1SpatialAdaptiveQuantization
import Network.AWS.MediaConvert.Types.AvailBlanking
import Network.AWS.MediaConvert.Types.AvcIntraClass
import Network.AWS.MediaConvert.Types.AvcIntraFramerateControl
import Network.AWS.MediaConvert.Types.AvcIntraFramerateConversionAlgorithm
import Network.AWS.MediaConvert.Types.AvcIntraInterlaceMode
import Network.AWS.MediaConvert.Types.AvcIntraScanTypeConversionMode
import Network.AWS.MediaConvert.Types.AvcIntraSettings
import Network.AWS.MediaConvert.Types.AvcIntraSlowPal
import Network.AWS.MediaConvert.Types.AvcIntraTelecine
import Network.AWS.MediaConvert.Types.AvcIntraUhdQualityTuningLevel
import Network.AWS.MediaConvert.Types.AvcIntraUhdSettings
import Network.AWS.MediaConvert.Types.BillingTagsSource
import Network.AWS.MediaConvert.Types.BurninDestinationSettings
import Network.AWS.MediaConvert.Types.BurninSubtitleAlignment
import Network.AWS.MediaConvert.Types.BurninSubtitleBackgroundColor
import Network.AWS.MediaConvert.Types.BurninSubtitleFontColor
import Network.AWS.MediaConvert.Types.BurninSubtitleOutlineColor
import Network.AWS.MediaConvert.Types.BurninSubtitleShadowColor
import Network.AWS.MediaConvert.Types.BurninSubtitleTeletextSpacing
import Network.AWS.MediaConvert.Types.CaptionDescription
import Network.AWS.MediaConvert.Types.CaptionDescriptionPreset
import Network.AWS.MediaConvert.Types.CaptionDestinationSettings
import Network.AWS.MediaConvert.Types.CaptionDestinationType
import Network.AWS.MediaConvert.Types.CaptionSelector
import Network.AWS.MediaConvert.Types.CaptionSourceFramerate
import Network.AWS.MediaConvert.Types.CaptionSourceSettings
import Network.AWS.MediaConvert.Types.CaptionSourceType
import Network.AWS.MediaConvert.Types.ChannelMapping
import Network.AWS.MediaConvert.Types.CmafAdditionalManifest
import Network.AWS.MediaConvert.Types.CmafClientCache
import Network.AWS.MediaConvert.Types.CmafCodecSpecification
import Network.AWS.MediaConvert.Types.CmafEncryptionSettings
import Network.AWS.MediaConvert.Types.CmafEncryptionType
import Network.AWS.MediaConvert.Types.CmafGroupSettings
import Network.AWS.MediaConvert.Types.CmafInitializationVectorInManifest
import Network.AWS.MediaConvert.Types.CmafKeyProviderType
import Network.AWS.MediaConvert.Types.CmafManifestCompression
import Network.AWS.MediaConvert.Types.CmafManifestDurationFormat
import Network.AWS.MediaConvert.Types.CmafMpdProfile
import Network.AWS.MediaConvert.Types.CmafSegmentControl
import Network.AWS.MediaConvert.Types.CmafStreamInfResolution
import Network.AWS.MediaConvert.Types.CmafWriteDASHManifest
import Network.AWS.MediaConvert.Types.CmafWriteHLSManifest
import Network.AWS.MediaConvert.Types.CmafWriteSegmentTimelineInRepresentation
import Network.AWS.MediaConvert.Types.CmfcAudioDuration
import Network.AWS.MediaConvert.Types.CmfcIFrameOnlyManifest
import Network.AWS.MediaConvert.Types.CmfcScte35Esam
import Network.AWS.MediaConvert.Types.CmfcScte35Source
import Network.AWS.MediaConvert.Types.CmfcSettings
import Network.AWS.MediaConvert.Types.ColorCorrector
import Network.AWS.MediaConvert.Types.ColorMetadata
import Network.AWS.MediaConvert.Types.ColorSpace
import Network.AWS.MediaConvert.Types.ColorSpaceConversion
import Network.AWS.MediaConvert.Types.ColorSpaceUsage
import Network.AWS.MediaConvert.Types.Commitment
import Network.AWS.MediaConvert.Types.ContainerSettings
import Network.AWS.MediaConvert.Types.ContainerType
import Network.AWS.MediaConvert.Types.DashAdditionalManifest
import Network.AWS.MediaConvert.Types.DashIsoEncryptionSettings
import Network.AWS.MediaConvert.Types.DashIsoGroupSettings
import Network.AWS.MediaConvert.Types.DashIsoHbbtvCompliance
import Network.AWS.MediaConvert.Types.DashIsoMpdProfile
import Network.AWS.MediaConvert.Types.DashIsoPlaybackDeviceCompatibility
import Network.AWS.MediaConvert.Types.DashIsoSegmentControl
import Network.AWS.MediaConvert.Types.DashIsoWriteSegmentTimelineInRepresentation
import Network.AWS.MediaConvert.Types.DecryptionMode
import Network.AWS.MediaConvert.Types.DeinterlaceAlgorithm
import Network.AWS.MediaConvert.Types.Deinterlacer
import Network.AWS.MediaConvert.Types.DeinterlacerControl
import Network.AWS.MediaConvert.Types.DeinterlacerMode
import Network.AWS.MediaConvert.Types.DescribeEndpointsMode
import Network.AWS.MediaConvert.Types.DestinationSettings
import Network.AWS.MediaConvert.Types.DolbyVision
import Network.AWS.MediaConvert.Types.DolbyVisionLevel6Metadata
import Network.AWS.MediaConvert.Types.DolbyVisionLevel6Mode
import Network.AWS.MediaConvert.Types.DolbyVisionProfile
import Network.AWS.MediaConvert.Types.DropFrameTimecode
import Network.AWS.MediaConvert.Types.DvbNitSettings
import Network.AWS.MediaConvert.Types.DvbSdtSettings
import Network.AWS.MediaConvert.Types.DvbSubDestinationSettings
import Network.AWS.MediaConvert.Types.DvbSubSourceSettings
import Network.AWS.MediaConvert.Types.DvbSubtitleAlignment
import Network.AWS.MediaConvert.Types.DvbSubtitleBackgroundColor
import Network.AWS.MediaConvert.Types.DvbSubtitleFontColor
import Network.AWS.MediaConvert.Types.DvbSubtitleOutlineColor
import Network.AWS.MediaConvert.Types.DvbSubtitleShadowColor
import Network.AWS.MediaConvert.Types.DvbSubtitleTeletextSpacing
import Network.AWS.MediaConvert.Types.DvbSubtitlingType
import Network.AWS.MediaConvert.Types.DvbTdtSettings
import Network.AWS.MediaConvert.Types.Eac3AtmosBitstreamMode
import Network.AWS.MediaConvert.Types.Eac3AtmosCodingMode
import Network.AWS.MediaConvert.Types.Eac3AtmosDialogueIntelligence
import Network.AWS.MediaConvert.Types.Eac3AtmosDynamicRangeCompressionLine
import Network.AWS.MediaConvert.Types.Eac3AtmosDynamicRangeCompressionRf
import Network.AWS.MediaConvert.Types.Eac3AtmosMeteringMode
import Network.AWS.MediaConvert.Types.Eac3AtmosSettings
import Network.AWS.MediaConvert.Types.Eac3AtmosStereoDownmix
import Network.AWS.MediaConvert.Types.Eac3AtmosSurroundExMode
import Network.AWS.MediaConvert.Types.Eac3AttenuationControl
import Network.AWS.MediaConvert.Types.Eac3BitstreamMode
import Network.AWS.MediaConvert.Types.Eac3CodingMode
import Network.AWS.MediaConvert.Types.Eac3DcFilter
import Network.AWS.MediaConvert.Types.Eac3DynamicRangeCompressionLine
import Network.AWS.MediaConvert.Types.Eac3DynamicRangeCompressionRf
import Network.AWS.MediaConvert.Types.Eac3LfeControl
import Network.AWS.MediaConvert.Types.Eac3LfeFilter
import Network.AWS.MediaConvert.Types.Eac3MetadataControl
import Network.AWS.MediaConvert.Types.Eac3PassthroughControl
import Network.AWS.MediaConvert.Types.Eac3PhaseControl
import Network.AWS.MediaConvert.Types.Eac3Settings
import Network.AWS.MediaConvert.Types.Eac3StereoDownmix
import Network.AWS.MediaConvert.Types.Eac3SurroundExMode
import Network.AWS.MediaConvert.Types.Eac3SurroundMode
import Network.AWS.MediaConvert.Types.EmbeddedConvert608To708
import Network.AWS.MediaConvert.Types.EmbeddedDestinationSettings
import Network.AWS.MediaConvert.Types.EmbeddedSourceSettings
import Network.AWS.MediaConvert.Types.EmbeddedTerminateCaptions
import Network.AWS.MediaConvert.Types.Endpoint
import Network.AWS.MediaConvert.Types.EsamManifestConfirmConditionNotification
import Network.AWS.MediaConvert.Types.EsamSettings
import Network.AWS.MediaConvert.Types.EsamSignalProcessingNotification
import Network.AWS.MediaConvert.Types.F4vMoovPlacement
import Network.AWS.MediaConvert.Types.F4vSettings
import Network.AWS.MediaConvert.Types.FileGroupSettings
import Network.AWS.MediaConvert.Types.FileSourceConvert608To708
import Network.AWS.MediaConvert.Types.FileSourceSettings
import Network.AWS.MediaConvert.Types.FontScript
import Network.AWS.MediaConvert.Types.FrameCaptureSettings
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
import Network.AWS.MediaConvert.Types.H264Settings
import Network.AWS.MediaConvert.Types.H264SlowPal
import Network.AWS.MediaConvert.Types.H264SpatialAdaptiveQuantization
import Network.AWS.MediaConvert.Types.H264Syntax
import Network.AWS.MediaConvert.Types.H264Telecine
import Network.AWS.MediaConvert.Types.H264TemporalAdaptiveQuantization
import Network.AWS.MediaConvert.Types.H264UnregisteredSeiTimecode
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
import Network.AWS.MediaConvert.Types.H265Settings
import Network.AWS.MediaConvert.Types.H265SlowPal
import Network.AWS.MediaConvert.Types.H265SpatialAdaptiveQuantization
import Network.AWS.MediaConvert.Types.H265Telecine
import Network.AWS.MediaConvert.Types.H265TemporalAdaptiveQuantization
import Network.AWS.MediaConvert.Types.H265TemporalIds
import Network.AWS.MediaConvert.Types.H265Tiles
import Network.AWS.MediaConvert.Types.H265UnregisteredSeiTimecode
import Network.AWS.MediaConvert.Types.H265WriteMp4PackagingType
import Network.AWS.MediaConvert.Types.Hdr10Metadata
import Network.AWS.MediaConvert.Types.HlsAdMarkers
import Network.AWS.MediaConvert.Types.HlsAdditionalManifest
import Network.AWS.MediaConvert.Types.HlsAudioOnlyContainer
import Network.AWS.MediaConvert.Types.HlsAudioOnlyHeader
import Network.AWS.MediaConvert.Types.HlsAudioTrackType
import Network.AWS.MediaConvert.Types.HlsCaptionLanguageMapping
import Network.AWS.MediaConvert.Types.HlsCaptionLanguageSetting
import Network.AWS.MediaConvert.Types.HlsClientCache
import Network.AWS.MediaConvert.Types.HlsCodecSpecification
import Network.AWS.MediaConvert.Types.HlsDirectoryStructure
import Network.AWS.MediaConvert.Types.HlsEncryptionSettings
import Network.AWS.MediaConvert.Types.HlsEncryptionType
import Network.AWS.MediaConvert.Types.HlsGroupSettings
import Network.AWS.MediaConvert.Types.HlsIFrameOnlyManifest
import Network.AWS.MediaConvert.Types.HlsInitializationVectorInManifest
import Network.AWS.MediaConvert.Types.HlsKeyProviderType
import Network.AWS.MediaConvert.Types.HlsManifestCompression
import Network.AWS.MediaConvert.Types.HlsManifestDurationFormat
import Network.AWS.MediaConvert.Types.HlsOfflineEncrypted
import Network.AWS.MediaConvert.Types.HlsOutputSelection
import Network.AWS.MediaConvert.Types.HlsProgramDateTime
import Network.AWS.MediaConvert.Types.HlsSegmentControl
import Network.AWS.MediaConvert.Types.HlsSettings
import Network.AWS.MediaConvert.Types.HlsStreamInfResolution
import Network.AWS.MediaConvert.Types.HlsTimedMetadataId3Frame
import Network.AWS.MediaConvert.Types.HopDestination
import Network.AWS.MediaConvert.Types.Id3Insertion
import Network.AWS.MediaConvert.Types.ImageInserter
import Network.AWS.MediaConvert.Types.ImscDestinationSettings
import Network.AWS.MediaConvert.Types.ImscStylePassthrough
import Network.AWS.MediaConvert.Types.Input
import Network.AWS.MediaConvert.Types.InputClipping
import Network.AWS.MediaConvert.Types.InputDeblockFilter
import Network.AWS.MediaConvert.Types.InputDecryptionSettings
import Network.AWS.MediaConvert.Types.InputDenoiseFilter
import Network.AWS.MediaConvert.Types.InputFilterEnable
import Network.AWS.MediaConvert.Types.InputPsiControl
import Network.AWS.MediaConvert.Types.InputRotate
import Network.AWS.MediaConvert.Types.InputScanType
import Network.AWS.MediaConvert.Types.InputTemplate
import Network.AWS.MediaConvert.Types.InputTimecodeSource
import Network.AWS.MediaConvert.Types.InsertableImage
import Network.AWS.MediaConvert.Types.Job
import Network.AWS.MediaConvert.Types.JobMessages
import Network.AWS.MediaConvert.Types.JobPhase
import Network.AWS.MediaConvert.Types.JobSettings
import Network.AWS.MediaConvert.Types.JobStatus
import Network.AWS.MediaConvert.Types.JobTemplate
import Network.AWS.MediaConvert.Types.JobTemplateListBy
import Network.AWS.MediaConvert.Types.JobTemplateSettings
import Network.AWS.MediaConvert.Types.LanguageCode
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
import Network.AWS.MediaConvert.Types.M2tsSettings
import Network.AWS.MediaConvert.Types.M3u8AudioDuration
import Network.AWS.MediaConvert.Types.M3u8NielsenId3
import Network.AWS.MediaConvert.Types.M3u8PcrControl
import Network.AWS.MediaConvert.Types.M3u8Scte35Source
import Network.AWS.MediaConvert.Types.M3u8Settings
import Network.AWS.MediaConvert.Types.MotionImageInserter
import Network.AWS.MediaConvert.Types.MotionImageInsertionFramerate
import Network.AWS.MediaConvert.Types.MotionImageInsertionMode
import Network.AWS.MediaConvert.Types.MotionImageInsertionOffset
import Network.AWS.MediaConvert.Types.MotionImagePlayback
import Network.AWS.MediaConvert.Types.MovClapAtom
import Network.AWS.MediaConvert.Types.MovCslgAtom
import Network.AWS.MediaConvert.Types.MovMpeg2FourCCControl
import Network.AWS.MediaConvert.Types.MovPaddingControl
import Network.AWS.MediaConvert.Types.MovReference
import Network.AWS.MediaConvert.Types.MovSettings
import Network.AWS.MediaConvert.Types.Mp2Settings
import Network.AWS.MediaConvert.Types.Mp3RateControlMode
import Network.AWS.MediaConvert.Types.Mp3Settings
import Network.AWS.MediaConvert.Types.Mp4CslgAtom
import Network.AWS.MediaConvert.Types.Mp4FreeSpaceBox
import Network.AWS.MediaConvert.Types.Mp4MoovPlacement
import Network.AWS.MediaConvert.Types.Mp4Settings
import Network.AWS.MediaConvert.Types.MpdAccessibilityCaptionHints
import Network.AWS.MediaConvert.Types.MpdAudioDuration
import Network.AWS.MediaConvert.Types.MpdCaptionContainerType
import Network.AWS.MediaConvert.Types.MpdScte35Esam
import Network.AWS.MediaConvert.Types.MpdScte35Source
import Network.AWS.MediaConvert.Types.MpdSettings
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
import Network.AWS.MediaConvert.Types.Mpeg2Settings
import Network.AWS.MediaConvert.Types.Mpeg2SlowPal
import Network.AWS.MediaConvert.Types.Mpeg2SpatialAdaptiveQuantization
import Network.AWS.MediaConvert.Types.Mpeg2Syntax
import Network.AWS.MediaConvert.Types.Mpeg2Telecine
import Network.AWS.MediaConvert.Types.Mpeg2TemporalAdaptiveQuantization
import Network.AWS.MediaConvert.Types.MsSmoothAdditionalManifest
import Network.AWS.MediaConvert.Types.MsSmoothAudioDeduplication
import Network.AWS.MediaConvert.Types.MsSmoothEncryptionSettings
import Network.AWS.MediaConvert.Types.MsSmoothGroupSettings
import Network.AWS.MediaConvert.Types.MsSmoothManifestEncoding
import Network.AWS.MediaConvert.Types.MxfAfdSignaling
import Network.AWS.MediaConvert.Types.MxfProfile
import Network.AWS.MediaConvert.Types.MxfSettings
import Network.AWS.MediaConvert.Types.NexGuardFileMarkerSettings
import Network.AWS.MediaConvert.Types.NielsenActiveWatermarkProcessType
import Network.AWS.MediaConvert.Types.NielsenConfiguration
import Network.AWS.MediaConvert.Types.NielsenNonLinearWatermarkSettings
import Network.AWS.MediaConvert.Types.NielsenSourceWatermarkStatusType
import Network.AWS.MediaConvert.Types.NielsenUniqueTicPerAudioTrackType
import Network.AWS.MediaConvert.Types.NoiseFilterPostTemporalSharpening
import Network.AWS.MediaConvert.Types.NoiseReducer
import Network.AWS.MediaConvert.Types.NoiseReducerFilter
import Network.AWS.MediaConvert.Types.NoiseReducerFilterSettings
import Network.AWS.MediaConvert.Types.NoiseReducerSpatialFilterSettings
import Network.AWS.MediaConvert.Types.NoiseReducerTemporalFilterSettings
import Network.AWS.MediaConvert.Types.OpusSettings
import Network.AWS.MediaConvert.Types.Order
import Network.AWS.MediaConvert.Types.Output
import Network.AWS.MediaConvert.Types.OutputChannelMapping
import Network.AWS.MediaConvert.Types.OutputDetail
import Network.AWS.MediaConvert.Types.OutputGroup
import Network.AWS.MediaConvert.Types.OutputGroupDetail
import Network.AWS.MediaConvert.Types.OutputGroupSettings
import Network.AWS.MediaConvert.Types.OutputGroupType
import Network.AWS.MediaConvert.Types.OutputSdt
import Network.AWS.MediaConvert.Types.OutputSettings
import Network.AWS.MediaConvert.Types.PartnerWatermarking
import Network.AWS.MediaConvert.Types.Preset
import Network.AWS.MediaConvert.Types.PresetListBy
import Network.AWS.MediaConvert.Types.PresetSettings
import Network.AWS.MediaConvert.Types.PricingPlan
import Network.AWS.MediaConvert.Types.ProresCodecProfile
import Network.AWS.MediaConvert.Types.ProresFramerateControl
import Network.AWS.MediaConvert.Types.ProresFramerateConversionAlgorithm
import Network.AWS.MediaConvert.Types.ProresInterlaceMode
import Network.AWS.MediaConvert.Types.ProresParControl
import Network.AWS.MediaConvert.Types.ProresScanTypeConversionMode
import Network.AWS.MediaConvert.Types.ProresSettings
import Network.AWS.MediaConvert.Types.ProresSlowPal
import Network.AWS.MediaConvert.Types.ProresTelecine
import Network.AWS.MediaConvert.Types.Queue
import Network.AWS.MediaConvert.Types.QueueListBy
import Network.AWS.MediaConvert.Types.QueueStatus
import Network.AWS.MediaConvert.Types.QueueTransition
import Network.AWS.MediaConvert.Types.Rectangle
import Network.AWS.MediaConvert.Types.RemixSettings
import Network.AWS.MediaConvert.Types.RenewalType
import Network.AWS.MediaConvert.Types.ReservationPlan
import Network.AWS.MediaConvert.Types.ReservationPlanSettings
import Network.AWS.MediaConvert.Types.ReservationPlanStatus
import Network.AWS.MediaConvert.Types.ResourceTags
import Network.AWS.MediaConvert.Types.RespondToAfd
import Network.AWS.MediaConvert.Types.S3DestinationAccessControl
import Network.AWS.MediaConvert.Types.S3DestinationSettings
import Network.AWS.MediaConvert.Types.S3EncryptionSettings
import Network.AWS.MediaConvert.Types.S3ObjectCannedACL
import Network.AWS.MediaConvert.Types.S3ServerSideEncryptionType
import Network.AWS.MediaConvert.Types.ScalingBehavior
import Network.AWS.MediaConvert.Types.SccDestinationFramerate
import Network.AWS.MediaConvert.Types.SccDestinationSettings
import Network.AWS.MediaConvert.Types.SimulateReservedQueue
import Network.AWS.MediaConvert.Types.SpekeKeyProvider
import Network.AWS.MediaConvert.Types.SpekeKeyProviderCmaf
import Network.AWS.MediaConvert.Types.StaticKeyProvider
import Network.AWS.MediaConvert.Types.StatusUpdateInterval
import Network.AWS.MediaConvert.Types.TeletextDestinationSettings
import Network.AWS.MediaConvert.Types.TeletextPageType
import Network.AWS.MediaConvert.Types.TeletextSourceSettings
import Network.AWS.MediaConvert.Types.TimecodeBurnin
import Network.AWS.MediaConvert.Types.TimecodeBurninPosition
import Network.AWS.MediaConvert.Types.TimecodeConfig
import Network.AWS.MediaConvert.Types.TimecodeSource
import Network.AWS.MediaConvert.Types.TimedMetadata
import Network.AWS.MediaConvert.Types.TimedMetadataInsertion
import Network.AWS.MediaConvert.Types.Timing
import Network.AWS.MediaConvert.Types.TrackSourceSettings
import Network.AWS.MediaConvert.Types.TtmlDestinationSettings
import Network.AWS.MediaConvert.Types.TtmlStylePassthrough
import Network.AWS.MediaConvert.Types.Type
import Network.AWS.MediaConvert.Types.Vc3Class
import Network.AWS.MediaConvert.Types.Vc3FramerateControl
import Network.AWS.MediaConvert.Types.Vc3FramerateConversionAlgorithm
import Network.AWS.MediaConvert.Types.Vc3InterlaceMode
import Network.AWS.MediaConvert.Types.Vc3ScanTypeConversionMode
import Network.AWS.MediaConvert.Types.Vc3Settings
import Network.AWS.MediaConvert.Types.Vc3SlowPal
import Network.AWS.MediaConvert.Types.Vc3Telecine
import Network.AWS.MediaConvert.Types.VideoCodec
import Network.AWS.MediaConvert.Types.VideoCodecSettings
import Network.AWS.MediaConvert.Types.VideoDescription
import Network.AWS.MediaConvert.Types.VideoDetail
import Network.AWS.MediaConvert.Types.VideoPreprocessor
import Network.AWS.MediaConvert.Types.VideoSelector
import Network.AWS.MediaConvert.Types.VideoTimecodeInsertion
import Network.AWS.MediaConvert.Types.VorbisSettings
import Network.AWS.MediaConvert.Types.Vp8FramerateControl
import Network.AWS.MediaConvert.Types.Vp8FramerateConversionAlgorithm
import Network.AWS.MediaConvert.Types.Vp8ParControl
import Network.AWS.MediaConvert.Types.Vp8QualityTuningLevel
import Network.AWS.MediaConvert.Types.Vp8RateControlMode
import Network.AWS.MediaConvert.Types.Vp8Settings
import Network.AWS.MediaConvert.Types.Vp9FramerateControl
import Network.AWS.MediaConvert.Types.Vp9FramerateConversionAlgorithm
import Network.AWS.MediaConvert.Types.Vp9ParControl
import Network.AWS.MediaConvert.Types.Vp9QualityTuningLevel
import Network.AWS.MediaConvert.Types.Vp9RateControlMode
import Network.AWS.MediaConvert.Types.Vp9Settings
import Network.AWS.MediaConvert.Types.WatermarkingStrength
import Network.AWS.MediaConvert.Types.WavFormat
import Network.AWS.MediaConvert.Types.WavSettings
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2017-08-29@ of the Amazon Elemental MediaConvert SDK configuration.
mediaConvert :: Service
mediaConvert =
  Service
    { _svcAbbrev = "MediaConvert",
      _svcSigner = v4,
      _svcPrefix = "mediaconvert",
      _svcVersion = "2017-08-29",
      _svcEndpoint = defaultEndpoint mediaConvert,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "MediaConvert",
      _svcRetry = retry
    }
  where
    retry =
      Exponential
        { _retryBase = 5.0e-2,
          _retryGrowth = 2,
          _retryAttempts = 5,
          _retryCheck = check
        }
    check e
      | has (hasStatus 504) e = Just "gateway_timeout"
      | has
          ( hasCode "ProvisionedThroughputExceededException"
              . hasStatus 400
          )
          e =
        Just "throughput_exceeded"
      | has (hasStatus 503) e = Just "service_unavailable"
      | has (hasStatus 502) e = Just "bad_gateway"
      | has (hasStatus 429) e = Just "too_many_requests"
      | has
          (hasCode "RequestThrottledException" . hasStatus 400)
          e =
        Just "request_throttled_exception"
      | has
          (hasCode "ThrottledException" . hasStatus 400)
          e =
        Just "throttled_exception"
      | has (hasStatus 509) e = Just "limit_exceeded"
      | has (hasStatus 500) e = Just "general_server_error"
      | has
          (hasCode "ThrottlingException" . hasStatus 400)
          e =
        Just "throttling_exception"
      | has (hasCode "Throttling" . hasStatus 400) e =
        Just "throttling"
      | otherwise = Nothing

-- | The resource you requested doesn't exist.
_NotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_NotFoundException =
  _MatchServiceError mediaConvert "NotFoundException"
    . hasStatus 404

-- | The service can't process your request because of a problem in the request. Please check your request form and syntax.
_BadRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_BadRequestException =
  _MatchServiceError
    mediaConvert
    "BadRequestException"
    . hasStatus 400

-- | The service encountered an unexpected condition and can't fulfill your request.
_InternalServerErrorException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerErrorException =
  _MatchServiceError
    mediaConvert
    "InternalServerErrorException"
    . hasStatus 500

-- | You don't have permissions for this action with the credentials you sent.
_ForbiddenException :: AsError a => Getting (First ServiceError) a ServiceError
_ForbiddenException =
  _MatchServiceError
    mediaConvert
    "ForbiddenException"
    . hasStatus 403

-- | The service couldn't complete your request because there is a conflict with the current state of the resource.
_ConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_ConflictException =
  _MatchServiceError mediaConvert "ConflictException"
    . hasStatus 409

-- | Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests.
_TooManyRequestsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyRequestsException =
  _MatchServiceError
    mediaConvert
    "TooManyRequestsException"
    . hasStatus 429
