{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- API for AWS Elemental MediaLive
module Network.AWS.MediaLive
  ( -- * Service Configuration
    mediaLive,

    -- * Errors
    -- $errors

    -- ** NotFoundException
    _NotFoundException,

    -- ** BadRequestException
    _BadRequestException,

    -- ** BadGatewayException
    _BadGatewayException,

    -- ** InternalServerErrorException
    _InternalServerErrorException,

    -- ** GatewayTimeoutException
    _GatewayTimeoutException,

    -- ** ForbiddenException
    _ForbiddenException,

    -- ** ConflictException
    _ConflictException,

    -- ** UnprocessableEntityException
    _UnprocessableEntityException,

    -- ** TooManyRequestsException
    _TooManyRequestsException,

    -- * Waiters
    -- $waiters

    -- ** MultiplexRunning
    multiplexRunning,

    -- ** ChannelRunning
    channelRunning,

    -- ** ChannelDeleted
    channelDeleted,

    -- ** InputDeleted
    inputDeleted,

    -- ** InputAttached
    inputAttached,

    -- ** MultiplexStopped
    multiplexStopped,

    -- ** ChannelCreated
    channelCreated,

    -- ** MultiplexCreated
    multiplexCreated,

    -- ** InputDetached
    inputDetached,

    -- ** MultiplexDeleted
    multiplexDeleted,

    -- ** ChannelStopped
    channelStopped,

    -- * Operations
    -- $operations

    -- ** DescribeInputDeviceThumbnail
    module Network.AWS.MediaLive.DescribeInputDeviceThumbnail,

    -- ** UpdateInputDevice
    module Network.AWS.MediaLive.UpdateInputDevice,

    -- ** ListInputs (Paginated)
    module Network.AWS.MediaLive.ListInputs,

    -- ** CreateChannel
    module Network.AWS.MediaLive.CreateChannel,

    -- ** DeleteInput
    module Network.AWS.MediaLive.DeleteInput,

    -- ** ListInputDevices (Paginated)
    module Network.AWS.MediaLive.ListInputDevices,

    -- ** UpdateInput
    module Network.AWS.MediaLive.UpdateInput,

    -- ** ListInputDeviceTransfers (Paginated)
    module Network.AWS.MediaLive.ListInputDeviceTransfers,

    -- ** BatchStop
    module Network.AWS.MediaLive.BatchStop,

    -- ** UpdateChannelClass
    module Network.AWS.MediaLive.UpdateChannelClass,

    -- ** BatchStart
    module Network.AWS.MediaLive.BatchStart,

    -- ** ListOfferings (Paginated)
    module Network.AWS.MediaLive.ListOfferings,

    -- ** UpdateMultiplex
    module Network.AWS.MediaLive.UpdateMultiplex,

    -- ** DeleteMultiplex
    module Network.AWS.MediaLive.DeleteMultiplex,

    -- ** DeleteInputSecurityGroup
    module Network.AWS.MediaLive.DeleteInputSecurityGroup,

    -- ** UpdateInputSecurityGroup
    module Network.AWS.MediaLive.UpdateInputSecurityGroup,

    -- ** ListInputSecurityGroups (Paginated)
    module Network.AWS.MediaLive.ListInputSecurityGroups,

    -- ** DescribeInput
    module Network.AWS.MediaLive.DescribeInput,

    -- ** CreateInputSecurityGroup
    module Network.AWS.MediaLive.CreateInputSecurityGroup,

    -- ** StartChannel
    module Network.AWS.MediaLive.StartChannel,

    -- ** DescribeInputDevice
    module Network.AWS.MediaLive.DescribeInputDevice,

    -- ** StopChannel
    module Network.AWS.MediaLive.StopChannel,

    -- ** DeleteTags
    module Network.AWS.MediaLive.DeleteTags,

    -- ** BatchUpdateSchedule
    module Network.AWS.MediaLive.BatchUpdateSchedule,

    -- ** DescribeOffering
    module Network.AWS.MediaLive.DescribeOffering,

    -- ** AcceptInputDeviceTransfer
    module Network.AWS.MediaLive.AcceptInputDeviceTransfer,

    -- ** DeleteMultiplexProgram
    module Network.AWS.MediaLive.DeleteMultiplexProgram,

    -- ** UpdateMultiplexProgram
    module Network.AWS.MediaLive.UpdateMultiplexProgram,

    -- ** DescribeReservation
    module Network.AWS.MediaLive.DescribeReservation,

    -- ** DescribeInputSecurityGroup
    module Network.AWS.MediaLive.DescribeInputSecurityGroup,

    -- ** ListChannels (Paginated)
    module Network.AWS.MediaLive.ListChannels,

    -- ** RejectInputDeviceTransfer
    module Network.AWS.MediaLive.RejectInputDeviceTransfer,

    -- ** CreateMultiplex
    module Network.AWS.MediaLive.CreateMultiplex,

    -- ** CreatePartnerInput
    module Network.AWS.MediaLive.CreatePartnerInput,

    -- ** DeleteSchedule
    module Network.AWS.MediaLive.DeleteSchedule,

    -- ** ListMultiplexes (Paginated)
    module Network.AWS.MediaLive.ListMultiplexes,

    -- ** UpdateReservation
    module Network.AWS.MediaLive.UpdateReservation,

    -- ** DeleteReservation
    module Network.AWS.MediaLive.DeleteReservation,

    -- ** DescribeMultiplexProgram
    module Network.AWS.MediaLive.DescribeMultiplexProgram,

    -- ** ListReservations (Paginated)
    module Network.AWS.MediaLive.ListReservations,

    -- ** DescribeChannel
    module Network.AWS.MediaLive.DescribeChannel,

    -- ** CancelInputDeviceTransfer
    module Network.AWS.MediaLive.CancelInputDeviceTransfer,

    -- ** PurchaseOffering
    module Network.AWS.MediaLive.PurchaseOffering,

    -- ** StartMultiplex
    module Network.AWS.MediaLive.StartMultiplex,

    -- ** StopMultiplex
    module Network.AWS.MediaLive.StopMultiplex,

    -- ** DescribeSchedule (Paginated)
    module Network.AWS.MediaLive.DescribeSchedule,

    -- ** CreateMultiplexProgram
    module Network.AWS.MediaLive.CreateMultiplexProgram,

    -- ** CreateTags
    module Network.AWS.MediaLive.CreateTags,

    -- ** TransferInputDevice
    module Network.AWS.MediaLive.TransferInputDevice,

    -- ** ListMultiplexPrograms (Paginated)
    module Network.AWS.MediaLive.ListMultiplexPrograms,

    -- ** DescribeMultiplex
    module Network.AWS.MediaLive.DescribeMultiplex,

    -- ** BatchDelete
    module Network.AWS.MediaLive.BatchDelete,

    -- ** CreateInput
    module Network.AWS.MediaLive.CreateInput,

    -- ** ListTagsForResource
    module Network.AWS.MediaLive.ListTagsForResource,

    -- ** DeleteChannel
    module Network.AWS.MediaLive.DeleteChannel,

    -- ** UpdateChannel
    module Network.AWS.MediaLive.UpdateChannel,

    -- * Types

    -- ** AacCodingMode
    AacCodingMode (..),

    -- ** AacInputType
    AacInputType (..),

    -- ** AacProfile
    AacProfile (..),

    -- ** AacRateControlMode
    AacRateControlMode (..),

    -- ** AacRawFormat
    AacRawFormat (..),

    -- ** AacSpec
    AacSpec (..),

    -- ** AacVbrQuality
    AacVbrQuality (..),

    -- ** Ac3BitstreamMode
    Ac3BitstreamMode (..),

    -- ** Ac3CodingMode
    Ac3CodingMode (..),

    -- ** Ac3DrcProfile
    Ac3DrcProfile (..),

    -- ** Ac3LfeFilter
    Ac3LfeFilter (..),

    -- ** Ac3MetadataControl
    Ac3MetadataControl (..),

    -- ** AcceptHeader
    AcceptHeader (..),

    -- ** AfdSignaling
    AfdSignaling (..),

    -- ** AudioDescriptionAudioTypeControl
    AudioDescriptionAudioTypeControl (..),

    -- ** AudioDescriptionLanguageCodeControl
    AudioDescriptionLanguageCodeControl (..),

    -- ** AudioLanguageSelectionPolicy
    AudioLanguageSelectionPolicy (..),

    -- ** AudioNormalizationAlgorithm
    AudioNormalizationAlgorithm (..),

    -- ** AudioNormalizationAlgorithmControl
    AudioNormalizationAlgorithmControl (..),

    -- ** AudioOnlyHlsSegmentType
    AudioOnlyHlsSegmentType (..),

    -- ** AudioOnlyHlsTrackType
    AudioOnlyHlsTrackType (..),

    -- ** AudioType
    AudioType (..),

    -- ** AuthenticationScheme
    AuthenticationScheme (..),

    -- ** AvailBlankingState
    AvailBlankingState (..),

    -- ** BlackoutSlateNetworkEndBlackout
    BlackoutSlateNetworkEndBlackout (..),

    -- ** BlackoutSlateState
    BlackoutSlateState (..),

    -- ** BurnInAlignment
    BurnInAlignment (..),

    -- ** BurnInBackgroundColor
    BurnInBackgroundColor (..),

    -- ** BurnInFontColor
    BurnInFontColor (..),

    -- ** BurnInOutlineColor
    BurnInOutlineColor (..),

    -- ** BurnInShadowColor
    BurnInShadowColor (..),

    -- ** BurnInTeletextGridControl
    BurnInTeletextGridControl (..),

    -- ** CdiInputResolution
    CdiInputResolution (..),

    -- ** ChannelClass
    ChannelClass (..),

    -- ** ChannelState
    ChannelState (..),

    -- ** ContentType
    ContentType (..),

    -- ** DeviceSettingsSyncState
    DeviceSettingsSyncState (..),

    -- ** DeviceUpdateStatus
    DeviceUpdateStatus (..),

    -- ** DvbSdtOutputSdt
    DvbSdtOutputSdt (..),

    -- ** DvbSubDestinationAlignment
    DvbSubDestinationAlignment (..),

    -- ** DvbSubDestinationBackgroundColor
    DvbSubDestinationBackgroundColor (..),

    -- ** DvbSubDestinationFontColor
    DvbSubDestinationFontColor (..),

    -- ** DvbSubDestinationOutlineColor
    DvbSubDestinationOutlineColor (..),

    -- ** DvbSubDestinationShadowColor
    DvbSubDestinationShadowColor (..),

    -- ** DvbSubDestinationTeletextGridControl
    DvbSubDestinationTeletextGridControl (..),

    -- ** Eac3AttenuationControl
    Eac3AttenuationControl (..),

    -- ** Eac3BitstreamMode
    Eac3BitstreamMode (..),

    -- ** Eac3CodingMode
    Eac3CodingMode (..),

    -- ** Eac3DcFilter
    Eac3DcFilter (..),

    -- ** Eac3DrcLine
    Eac3DrcLine (..),

    -- ** Eac3DrcRf
    Eac3DrcRf (..),

    -- ** Eac3LfeControl
    Eac3LfeControl (..),

    -- ** Eac3LfeFilter
    Eac3LfeFilter (..),

    -- ** Eac3MetadataControl
    Eac3MetadataControl (..),

    -- ** Eac3PassthroughControl
    Eac3PassthroughControl (..),

    -- ** Eac3PhaseControl
    Eac3PhaseControl (..),

    -- ** Eac3StereoDownmix
    Eac3StereoDownmix (..),

    -- ** Eac3SurroundExMode
    Eac3SurroundExMode (..),

    -- ** Eac3SurroundMode
    Eac3SurroundMode (..),

    -- ** EbuTtDDestinationStyleControl
    EbuTtDDestinationStyleControl (..),

    -- ** EbuTtDFillLineGapControl
    EbuTtDFillLineGapControl (..),

    -- ** EmbeddedConvert608To708
    EmbeddedConvert608To708 (..),

    -- ** EmbeddedScte20Detection
    EmbeddedScte20Detection (..),

    -- ** FeatureActivationsInputPrepareScheduleActions
    FeatureActivationsInputPrepareScheduleActions (..),

    -- ** FecOutputIncludeFec
    FecOutputIncludeFec (..),

    -- ** FixedAfd
    FixedAfd (..),

    -- ** Fmp4NielsenId3Behavior
    Fmp4NielsenId3Behavior (..),

    -- ** Fmp4TimedMetadataBehavior
    Fmp4TimedMetadataBehavior (..),

    -- ** FollowPoint
    FollowPoint (..),

    -- ** FrameCaptureIntervalUnit
    FrameCaptureIntervalUnit (..),

    -- ** GlobalConfigurationInputEndAction
    GlobalConfigurationInputEndAction (..),

    -- ** GlobalConfigurationLowFramerateInputs
    GlobalConfigurationLowFramerateInputs (..),

    -- ** GlobalConfigurationOutputLockingMode
    GlobalConfigurationOutputLockingMode (..),

    -- ** GlobalConfigurationOutputTimingSource
    GlobalConfigurationOutputTimingSource (..),

    -- ** H264AdaptiveQuantization
    H264AdaptiveQuantization (..),

    -- ** H264ColorMetadata
    H264ColorMetadata (..),

    -- ** H264EntropyEncoding
    H264EntropyEncoding (..),

    -- ** H264FlickerAq
    H264FlickerAq (..),

    -- ** H264ForceFieldPictures
    H264ForceFieldPictures (..),

    -- ** H264FramerateControl
    H264FramerateControl (..),

    -- ** H264GopBReference
    H264GopBReference (..),

    -- ** H264GopSizeUnits
    H264GopSizeUnits (..),

    -- ** H264Level
    H264Level (..),

    -- ** H264LookAheadRateControl
    H264LookAheadRateControl (..),

    -- ** H264ParControl
    H264ParControl (..),

    -- ** H264Profile
    H264Profile (..),

    -- ** H264QualityLevel
    H264QualityLevel (..),

    -- ** H264RateControlMode
    H264RateControlMode (..),

    -- ** H264ScanType
    H264ScanType (..),

    -- ** H264SceneChangeDetect
    H264SceneChangeDetect (..),

    -- ** H264SpatialAq
    H264SpatialAq (..),

    -- ** H264SubGopLength
    H264SubGopLength (..),

    -- ** H264Syntax
    H264Syntax (..),

    -- ** H264TemporalAq
    H264TemporalAq (..),

    -- ** H264TimecodeInsertionBehavior
    H264TimecodeInsertionBehavior (..),

    -- ** H265AdaptiveQuantization
    H265AdaptiveQuantization (..),

    -- ** H265AlternativeTransferFunction
    H265AlternativeTransferFunction (..),

    -- ** H265ColorMetadata
    H265ColorMetadata (..),

    -- ** H265FlickerAq
    H265FlickerAq (..),

    -- ** H265GopSizeUnits
    H265GopSizeUnits (..),

    -- ** H265Level
    H265Level (..),

    -- ** H265LookAheadRateControl
    H265LookAheadRateControl (..),

    -- ** H265Profile
    H265Profile (..),

    -- ** H265RateControlMode
    H265RateControlMode (..),

    -- ** H265ScanType
    H265ScanType (..),

    -- ** H265SceneChangeDetect
    H265SceneChangeDetect (..),

    -- ** H265Tier
    H265Tier (..),

    -- ** H265TimecodeInsertionBehavior
    H265TimecodeInsertionBehavior (..),

    -- ** HlsAdMarkers
    HlsAdMarkers (..),

    -- ** HlsAkamaiHTTPTransferMode
    HlsAkamaiHTTPTransferMode (..),

    -- ** HlsCaptionLanguageSetting
    HlsCaptionLanguageSetting (..),

    -- ** HlsClientCache
    HlsClientCache (..),

    -- ** HlsCodecSpecification
    HlsCodecSpecification (..),

    -- ** HlsDirectoryStructure
    HlsDirectoryStructure (..),

    -- ** HlsDiscontinuityTags
    HlsDiscontinuityTags (..),

    -- ** HlsEncryptionType
    HlsEncryptionType (..),

    -- ** HlsH265PackagingType
    HlsH265PackagingType (..),

    -- ** HlsId3SegmentTaggingState
    HlsId3SegmentTaggingState (..),

    -- ** HlsIncompleteSegmentBehavior
    HlsIncompleteSegmentBehavior (..),

    -- ** HlsIvInManifest
    HlsIvInManifest (..),

    -- ** HlsIvSource
    HlsIvSource (..),

    -- ** HlsManifestCompression
    HlsManifestCompression (..),

    -- ** HlsManifestDurationFormat
    HlsManifestDurationFormat (..),

    -- ** HlsMediaStoreStorageClass
    HlsMediaStoreStorageClass (..),

    -- ** HlsMode
    HlsMode (..),

    -- ** HlsOutputSelection
    HlsOutputSelection (..),

    -- ** HlsProgramDateTime
    HlsProgramDateTime (..),

    -- ** HlsRedundantManifest
    HlsRedundantManifest (..),

    -- ** HlsSegmentationMode
    HlsSegmentationMode (..),

    -- ** HlsStreamInfResolution
    HlsStreamInfResolution (..),

    -- ** HlsTimedMetadataId3Frame
    HlsTimedMetadataId3Frame (..),

    -- ** HlsTsFileMode
    HlsTsFileMode (..),

    -- ** HlsWebdavHTTPTransferMode
    HlsWebdavHTTPTransferMode (..),

    -- ** IFrameOnlyPlaylistType
    IFrameOnlyPlaylistType (..),

    -- ** InputClass
    InputClass (..),

    -- ** InputCodec
    InputCodec (..),

    -- ** InputDeblockFilter
    InputDeblockFilter (..),

    -- ** InputDenoiseFilter
    InputDenoiseFilter (..),

    -- ** InputDeviceActiveInput
    InputDeviceActiveInput (..),

    -- ** InputDeviceConfiguredInput
    InputDeviceConfiguredInput (..),

    -- ** InputDeviceConnectionState
    InputDeviceConnectionState (..),

    -- ** InputDeviceIPScheme
    InputDeviceIPScheme (..),

    -- ** InputDeviceScanType
    InputDeviceScanType (..),

    -- ** InputDeviceState
    InputDeviceState (..),

    -- ** InputDeviceTransferType
    InputDeviceTransferType (..),

    -- ** InputDeviceType
    InputDeviceType (..),

    -- ** InputFilter
    InputFilter (..),

    -- ** InputLossActionForHlsOut
    InputLossActionForHlsOut (..),

    -- ** InputLossActionForMsSmoothOut
    InputLossActionForMsSmoothOut (..),

    -- ** InputLossActionForRtmpOut
    InputLossActionForRtmpOut (..),

    -- ** InputLossActionForUdpOut
    InputLossActionForUdpOut (..),

    -- ** InputLossImageType
    InputLossImageType (..),

    -- ** InputMaximumBitrate
    InputMaximumBitrate (..),

    -- ** InputPreference
    InputPreference (..),

    -- ** InputResolution
    InputResolution (..),

    -- ** InputSecurityGroupState
    InputSecurityGroupState (..),

    -- ** InputSourceEndBehavior
    InputSourceEndBehavior (..),

    -- ** InputSourceType
    InputSourceType (..),

    -- ** InputState
    InputState (..),

    -- ** InputTimecodeSource
    InputTimecodeSource (..),

    -- ** InputType
    InputType (..),

    -- ** LastFrameClippingBehavior
    LastFrameClippingBehavior (..),

    -- ** LogLevel
    LogLevel (..),

    -- ** M2tsAbsentInputAudioBehavior
    M2tsAbsentInputAudioBehavior (..),

    -- ** M2tsArib
    M2tsArib (..),

    -- ** M2tsAribCaptionsPidControl
    M2tsAribCaptionsPidControl (..),

    -- ** M2tsAudioBufferModel
    M2tsAudioBufferModel (..),

    -- ** M2tsAudioInterval
    M2tsAudioInterval (..),

    -- ** M2tsAudioStreamType
    M2tsAudioStreamType (..),

    -- ** M2tsBufferModel
    M2tsBufferModel (..),

    -- ** M2tsCCDescriptor
    M2tsCCDescriptor (..),

    -- ** M2tsEbifControl
    M2tsEbifControl (..),

    -- ** M2tsEbpPlacement
    M2tsEbpPlacement (..),

    -- ** M2tsEsRateInPes
    M2tsEsRateInPes (..),

    -- ** M2tsKlv
    M2tsKlv (..),

    -- ** M2tsNielsenId3Behavior
    M2tsNielsenId3Behavior (..),

    -- ** M2tsPcrControl
    M2tsPcrControl (..),

    -- ** M2tsRateMode
    M2tsRateMode (..),

    -- ** M2tsScte35Control
    M2tsScte35Control (..),

    -- ** M2tsSegmentationMarkers
    M2tsSegmentationMarkers (..),

    -- ** M2tsSegmentationStyle
    M2tsSegmentationStyle (..),

    -- ** M2tsTimedMetadataBehavior
    M2tsTimedMetadataBehavior (..),

    -- ** M3u8NielsenId3Behavior
    M3u8NielsenId3Behavior (..),

    -- ** M3u8PcrControl
    M3u8PcrControl (..),

    -- ** M3u8Scte35Behavior
    M3u8Scte35Behavior (..),

    -- ** M3u8TimedMetadataBehavior
    M3u8TimedMetadataBehavior (..),

    -- ** Mp2CodingMode
    Mp2CodingMode (..),

    -- ** Mpeg2AdaptiveQuantization
    Mpeg2AdaptiveQuantization (..),

    -- ** Mpeg2ColorMetadata
    Mpeg2ColorMetadata (..),

    -- ** Mpeg2ColorSpace
    Mpeg2ColorSpace (..),

    -- ** Mpeg2DisplayRatio
    Mpeg2DisplayRatio (..),

    -- ** Mpeg2GopSizeUnits
    Mpeg2GopSizeUnits (..),

    -- ** Mpeg2ScanType
    Mpeg2ScanType (..),

    -- ** Mpeg2SubGopLength
    Mpeg2SubGopLength (..),

    -- ** Mpeg2TimecodeInsertionBehavior
    Mpeg2TimecodeInsertionBehavior (..),

    -- ** MsSmoothH265PackagingType
    MsSmoothH265PackagingType (..),

    -- ** MultiplexState
    MultiplexState (..),

    -- ** NetworkInputServerValidation
    NetworkInputServerValidation (..),

    -- ** NielsenPcmToId3TaggingState
    NielsenPcmToId3TaggingState (..),

    -- ** OfferingDurationUnits
    OfferingDurationUnits (..),

    -- ** OfferingType
    OfferingType (..),

    -- ** PipelineId
    PipelineId (..),

    -- ** PreferredChannelPipeline
    PreferredChannelPipeline (..),

    -- ** ReservationCodec
    ReservationCodec (..),

    -- ** ReservationMaximumBitrate
    ReservationMaximumBitrate (..),

    -- ** ReservationMaximumFramerate
    ReservationMaximumFramerate (..),

    -- ** ReservationResolution
    ReservationResolution (..),

    -- ** ReservationResourceType
    ReservationResourceType (..),

    -- ** ReservationSpecialFeature
    ReservationSpecialFeature (..),

    -- ** ReservationState
    ReservationState (..),

    -- ** ReservationVideoQuality
    ReservationVideoQuality (..),

    -- ** RtmpAdMarkers
    RtmpAdMarkers (..),

    -- ** RtmpCacheFullBehavior
    RtmpCacheFullBehavior (..),

    -- ** RtmpCaptionData
    RtmpCaptionData (..),

    -- ** RtmpOutputCertificateMode
    RtmpOutputCertificateMode (..),

    -- ** Scte20Convert608To708
    Scte20Convert608To708 (..),

    -- ** Scte35AposNoRegionalBlackoutBehavior
    Scte35AposNoRegionalBlackoutBehavior (..),

    -- ** Scte35AposWebDeliveryAllowedBehavior
    Scte35AposWebDeliveryAllowedBehavior (..),

    -- ** Scte35ArchiveAllowedFlag
    Scte35ArchiveAllowedFlag (..),

    -- ** Scte35DeviceRestrictions
    Scte35DeviceRestrictions (..),

    -- ** Scte35NoRegionalBlackoutFlag
    Scte35NoRegionalBlackoutFlag (..),

    -- ** Scte35SegmentationCancelIndicator
    Scte35SegmentationCancelIndicator (..),

    -- ** Scte35SpliceInsertNoRegionalBlackoutBehavior
    Scte35SpliceInsertNoRegionalBlackoutBehavior (..),

    -- ** Scte35SpliceInsertWebDeliveryAllowedBehavior
    Scte35SpliceInsertWebDeliveryAllowedBehavior (..),

    -- ** Scte35WebDeliveryAllowedFlag
    Scte35WebDeliveryAllowedFlag (..),

    -- ** SmoothGroupAudioOnlyTimecodeControl
    SmoothGroupAudioOnlyTimecodeControl (..),

    -- ** SmoothGroupCertificateMode
    SmoothGroupCertificateMode (..),

    -- ** SmoothGroupEventIdMode
    SmoothGroupEventIdMode (..),

    -- ** SmoothGroupEventStopBehavior
    SmoothGroupEventStopBehavior (..),

    -- ** SmoothGroupSegmentationMode
    SmoothGroupSegmentationMode (..),

    -- ** SmoothGroupSparseTrackType
    SmoothGroupSparseTrackType (..),

    -- ** SmoothGroupStreamManifestBehavior
    SmoothGroupStreamManifestBehavior (..),

    -- ** SmoothGroupTimestampOffsetMode
    SmoothGroupTimestampOffsetMode (..),

    -- ** Smpte2038DataPreference
    Smpte2038DataPreference (..),

    -- ** TemporalFilterPostFilterSharpening
    TemporalFilterPostFilterSharpening (..),

    -- ** TemporalFilterStrength
    TemporalFilterStrength (..),

    -- ** TimecodeConfigSource
    TimecodeConfigSource (..),

    -- ** TtmlDestinationStyleControl
    TtmlDestinationStyleControl (..),

    -- ** UdpTimedMetadataId3Frame
    UdpTimedMetadataId3Frame (..),

    -- ** VideoDescriptionRespondToAfd
    VideoDescriptionRespondToAfd (..),

    -- ** VideoDescriptionScalingBehavior
    VideoDescriptionScalingBehavior (..),

    -- ** VideoSelectorColorSpace
    VideoSelectorColorSpace (..),

    -- ** VideoSelectorColorSpaceUsage
    VideoSelectorColorSpaceUsage (..),

    -- ** WavCodingMode
    WavCodingMode (..),

    -- ** AacSettings
    AacSettings,
    aacSettings,
    aRateControlMode,
    aCodingMode,
    aSpec,
    aRawFormat,
    aSampleRate,
    aInputType,
    aProfile,
    aVbrQuality,
    aBitrate,

    -- ** Ac3Settings
    Ac3Settings,
    ac3Settings,
    asDialnorm,
    asDrcProfile,
    asCodingMode,
    asLfeFilter,
    asBitstreamMode,
    asBitrate,
    asMetadataControl,

    -- ** AncillarySourceSettings
    AncillarySourceSettings,
    ancillarySourceSettings,
    assSourceAncillaryChannelNumber,

    -- ** ArchiveContainerSettings
    ArchiveContainerSettings,
    archiveContainerSettings,
    acsRawSettings,
    acsM2tsSettings,

    -- ** ArchiveGroupSettings
    ArchiveGroupSettings,
    archiveGroupSettings,
    agsRolloverInterval,
    agsDestination,

    -- ** ArchiveOutputSettings
    ArchiveOutputSettings,
    archiveOutputSettings,
    aosExtension,
    aosNameModifier,
    aosContainerSettings,

    -- ** AribDestinationSettings
    AribDestinationSettings,
    aribDestinationSettings,

    -- ** AribSourceSettings
    AribSourceSettings,
    aribSourceSettings,

    -- ** AudioChannelMapping
    AudioChannelMapping,
    audioChannelMapping,
    acmOutputChannel,
    acmInputChannelLevels,

    -- ** AudioCodecSettings
    AudioCodecSettings,
    audioCodecSettings,
    acsAc3Settings,
    acsMp2Settings,
    acsPassThroughSettings,
    acsEac3Settings,
    acsAacSettings,
    acsWavSettings,

    -- ** AudioDescription
    AudioDescription,
    audioDescription,
    adLanguageCode,
    adAudioType,
    adCodecSettings,
    adLanguageCodeControl,
    adAudioTypeControl,
    adRemixSettings,
    adAudioNormalizationSettings,
    adStreamName,
    adAudioSelectorName,
    adName,

    -- ** AudioLanguageSelection
    AudioLanguageSelection,
    audioLanguageSelection,
    alsLanguageSelectionPolicy,
    alsLanguageCode,

    -- ** AudioNormalizationSettings
    AudioNormalizationSettings,
    audioNormalizationSettings,
    ansAlgorithm,
    ansTargetLkfs,
    ansAlgorithmControl,

    -- ** AudioOnlyHlsSettings
    AudioOnlyHlsSettings,
    audioOnlyHlsSettings,
    aohsAudioGroupId,
    aohsAudioTrackType,
    aohsSegmentType,
    aohsAudioOnlyImage,

    -- ** AudioPidSelection
    AudioPidSelection,
    audioPidSelection,
    apsPid,

    -- ** AudioSelector
    AudioSelector,
    audioSelector,
    asSelectorSettings,
    asName,

    -- ** AudioSelectorSettings
    AudioSelectorSettings,
    audioSelectorSettings,
    assAudioLanguageSelection,
    assAudioPidSelection,
    assAudioTrackSelection,

    -- ** AudioSilenceFailoverSettings
    AudioSilenceFailoverSettings,
    audioSilenceFailoverSettings,
    asfsAudioSilenceThresholdMsec,
    asfsAudioSelectorName,

    -- ** AudioTrack
    AudioTrack,
    audioTrack,
    atTrack,

    -- ** AudioTrackSelection
    AudioTrackSelection,
    audioTrackSelection,
    atsTracks,

    -- ** AutomaticInputFailoverSettings
    AutomaticInputFailoverSettings,
    automaticInputFailoverSettings,
    aifsFailoverConditions,
    aifsErrorClearTimeMsec,
    aifsInputPreference,
    aifsSecondaryInputId,

    -- ** AvailBlanking
    AvailBlanking,
    availBlanking,
    abState,
    abAvailBlankingImage,

    -- ** AvailConfiguration
    AvailConfiguration,
    availConfiguration,
    acAvailSettings,

    -- ** AvailSettings
    AvailSettings,
    availSettings,
    asScte35TimeSignalApos,
    asScte35SpliceInsert,

    -- ** BatchFailedResultModel
    BatchFailedResultModel,
    batchFailedResultModel,
    bfrmMessage,
    bfrmARN,
    bfrmId,
    bfrmCode,

    -- ** BatchScheduleActionCreateRequest
    BatchScheduleActionCreateRequest,
    batchScheduleActionCreateRequest,
    bScheduleActions,

    -- ** BatchScheduleActionCreateResult
    BatchScheduleActionCreateResult,
    batchScheduleActionCreateResult,
    bsacrScheduleActions,

    -- ** BatchScheduleActionDeleteRequest
    BatchScheduleActionDeleteRequest,
    batchScheduleActionDeleteRequest,
    bsadrActionNames,

    -- ** BatchScheduleActionDeleteResult
    BatchScheduleActionDeleteResult,
    batchScheduleActionDeleteResult,
    bsadrScheduleActions,

    -- ** BatchSuccessfulResultModel
    BatchSuccessfulResultModel,
    batchSuccessfulResultModel,
    bsrmARN,
    bsrmId,
    bsrmState,

    -- ** BlackoutSlate
    BlackoutSlate,
    blackoutSlate,
    bsBlackoutSlateImage,
    bsNetworkEndBlackout,
    bsState,
    bsNetworkEndBlackoutImage,
    bsNetworkId,

    -- ** BurnInDestinationSettings
    BurnInDestinationSettings,
    burnInDestinationSettings,
    bidsAlignment,
    bidsShadowOpacity,
    bidsShadowColor,
    bidsOutlineColor,
    bidsTeletextGridControl,
    bidsBackgroundOpacity,
    bidsXPosition,
    bidsFontColor,
    bidsFontSize,
    bidsBackgroundColor,
    bidsShadowXOffset,
    bidsFont,
    bidsYPosition,
    bidsFontResolution,
    bidsOutlineSize,
    bidsFontOpacity,
    bidsShadowYOffset,

    -- ** CaptionDescription
    CaptionDescription,
    captionDescription,
    cdLanguageCode,
    cdLanguageDescription,
    cdDestinationSettings,
    cdCaptionSelectorName,
    cdName,

    -- ** CaptionDestinationSettings
    CaptionDestinationSettings,
    captionDestinationSettings,
    cdsWebvttDestinationSettings,
    cdsEmbeddedDestinationSettings,
    cdsAribDestinationSettings,
    cdsScte20PlusEmbeddedDestinationSettings,
    cdsEmbeddedPlusScte20DestinationSettings,
    cdsDvbSubDestinationSettings,
    cdsScte27DestinationSettings,
    cdsRtmpCaptionInfoDestinationSettings,
    cdsEbuTtDDestinationSettings,
    cdsTeletextDestinationSettings,
    cdsSmpteTtDestinationSettings,
    cdsTtmlDestinationSettings,
    cdsBurnInDestinationSettings,

    -- ** CaptionLanguageMapping
    CaptionLanguageMapping,
    captionLanguageMapping,
    clmLanguageCode,
    clmLanguageDescription,
    clmCaptionChannel,

    -- ** CaptionSelector
    CaptionSelector,
    captionSelector,
    csLanguageCode,
    csSelectorSettings,
    csName,

    -- ** CaptionSelectorSettings
    CaptionSelectorSettings,
    captionSelectorSettings,
    cssAncillarySourceSettings,
    cssEmbeddedSourceSettings,
    cssAribSourceSettings,
    cssScte27SourceSettings,
    cssDvbSubSourceSettings,
    cssScte20SourceSettings,
    cssTeletextSourceSettings,

    -- ** CdiInputSpecification
    CdiInputSpecification,
    cdiInputSpecification,
    cisResolution,

    -- ** Channel
    Channel,
    channel,
    cEncoderSettings,
    cRoleARN,
    cInputSpecification,
    cARN,
    cId,
    cPipelinesRunningCount,
    cChannelClass,
    cLogLevel,
    cDestinations,
    cState,
    cName,
    cInputAttachments,
    cTags,
    cPipelineDetails,
    cEgressEndpoints,
    cVPC,
    cCdiInputSpecification,

    -- ** ChannelEgressEndpoint
    ChannelEgressEndpoint,
    channelEgressEndpoint,
    ceeSourceIP,

    -- ** ChannelSummary
    ChannelSummary,
    channelSummary,
    chaRoleARN,
    chaInputSpecification,
    chaARN,
    chaId,
    chaPipelinesRunningCount,
    chaChannelClass,
    chaLogLevel,
    chaDestinations,
    chaState,
    chaName,
    chaInputAttachments,
    chaTags,
    chaEgressEndpoints,
    chaVPC,
    chaCdiInputSpecification,

    -- ** ColorSpacePassthroughSettings
    ColorSpacePassthroughSettings,
    colorSpacePassthroughSettings,

    -- ** DvbNitSettings
    DvbNitSettings,
    dvbNitSettings,
    dnsRepInterval,
    dnsNetworkName,
    dnsNetworkId,

    -- ** DvbSdtSettings
    DvbSdtSettings,
    dvbSdtSettings,
    dssOutputSdt,
    dssServiceName,
    dssServiceProviderName,
    dssRepInterval,

    -- ** DvbSubDestinationSettings
    DvbSubDestinationSettings,
    dvbSubDestinationSettings,
    dsdsAlignment,
    dsdsShadowOpacity,
    dsdsShadowColor,
    dsdsOutlineColor,
    dsdsTeletextGridControl,
    dsdsBackgroundOpacity,
    dsdsXPosition,
    dsdsFontColor,
    dsdsFontSize,
    dsdsBackgroundColor,
    dsdsShadowXOffset,
    dsdsFont,
    dsdsYPosition,
    dsdsFontResolution,
    dsdsOutlineSize,
    dsdsFontOpacity,
    dsdsShadowYOffset,

    -- ** DvbSubSourceSettings
    DvbSubSourceSettings,
    dvbSubSourceSettings,
    dsssPid,

    -- ** DvbTdtSettings
    DvbTdtSettings,
    dvbTdtSettings,
    dtsRepInterval,

    -- ** Eac3Settings
    Eac3Settings,
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
    esStereoDownmix,
    esDrcRf,
    esDrcLine,
    esBitstreamMode,
    esSurroundExMode,
    esPhaseControl,
    esPassthroughControl,
    esBitrate,
    esAttenuationControl,
    esSurroundMode,
    esMetadataControl,

    -- ** EbuTtDDestinationSettings
    EbuTtDDestinationSettings,
    ebuTtDDestinationSettings,
    etddsFillLineGap,
    etddsStyleControl,
    etddsFontFamily,

    -- ** EmbeddedDestinationSettings
    EmbeddedDestinationSettings,
    embeddedDestinationSettings,

    -- ** EmbeddedPlusScte20DestinationSettings
    EmbeddedPlusScte20DestinationSettings,
    embeddedPlusScte20DestinationSettings,

    -- ** EmbeddedSourceSettings
    EmbeddedSourceSettings,
    embeddedSourceSettings,
    essScte20Detection,
    essConvert608To708,
    essSource608TrackNumber,
    essSource608ChannelNumber,

    -- ** EncoderSettings
    EncoderSettings,
    encoderSettings,
    esGlobalConfiguration,
    esFeatureActivations,
    esAvailConfiguration,
    esAvailBlanking,
    esNielsenConfiguration,
    esBlackoutSlate,
    esCaptionDescriptions,
    esVideoDescriptions,
    esAudioDescriptions,
    esOutputGroups,
    esTimecodeConfig,

    -- ** FailoverCondition
    FailoverCondition,
    failoverCondition,
    fcFailoverConditionSettings,

    -- ** FailoverConditionSettings
    FailoverConditionSettings,
    failoverConditionSettings,
    fcsVideoBlackSettings,
    fcsInputLossSettings,
    fcsAudioSilenceSettings,

    -- ** FeatureActivations
    FeatureActivations,
    featureActivations,
    faInputPrepareScheduleActions,

    -- ** FecOutputSettings
    FecOutputSettings,
    fecOutputSettings,
    fosRowLength,
    fosColumnDepth,
    fosIncludeFec,

    -- ** FixedModeScheduleActionStartSettings
    FixedModeScheduleActionStartSettings,
    fixedModeScheduleActionStartSettings,
    fmsassTime,

    -- ** Fmp4HlsSettings
    Fmp4HlsSettings,
    fmp4HlsSettings,
    fhsAudioRenditionSets,
    fhsNielsenId3Behavior,
    fhsTimedMetadataBehavior,

    -- ** FollowModeScheduleActionStartSettings
    FollowModeScheduleActionStartSettings,
    followModeScheduleActionStartSettings,
    fmsassReferenceActionName,
    fmsassFollowPoint,

    -- ** FrameCaptureGroupSettings
    FrameCaptureGroupSettings,
    frameCaptureGroupSettings,
    fcgsDestination,

    -- ** FrameCaptureHlsSettings
    FrameCaptureHlsSettings,
    frameCaptureHlsSettings,

    -- ** FrameCaptureOutputSettings
    FrameCaptureOutputSettings,
    frameCaptureOutputSettings,
    fcosNameModifier,

    -- ** FrameCaptureSettings
    FrameCaptureSettings,
    frameCaptureSettings,
    fcsCaptureInterval,
    fcsCaptureIntervalUnits,

    -- ** GlobalConfiguration
    GlobalConfiguration,
    globalConfiguration,
    gcInitialAudioGain,
    gcOutputLockingMode,
    gcInputEndAction,
    gcInputLossBehavior,
    gcSupportLowFramerateInputs,
    gcOutputTimingSource,

    -- ** H264ColorSpaceSettings
    H264ColorSpaceSettings,
    h264ColorSpaceSettings,
    hcssRec601Settings,
    hcssRec709Settings,
    hcssColorSpacePassthroughSettings,

    -- ** H264FilterSettings
    H264FilterSettings,
    h264FilterSettings,
    hfsTemporalFilterSettings,

    -- ** H264Settings
    H264Settings,
    h264Settings,
    hsScanType,
    hsTemporalAq,
    hsBufSize,
    hsFlickerAq,
    hsGopBReference,
    hsFramerateNumerator,
    hsRateControlMode,
    hsSlices,
    hsQualityLevel,
    hsColorMetadata,
    hsSubgopLength,
    hsEntropyEncoding,
    hsGopSizeUnits,
    hsGopSize,
    hsFramerateDenominator,
    hsFixedAfd,
    hsSoftness,
    hsFilterSettings,
    hsParNumerator,
    hsSpatialAq,
    hsGopNumBFrames,
    hsSceneChangeDetect,
    hsTimecodeInsertion,
    hsColorSpaceSettings,
    hsMinIInterval,
    hsQvbrQualityLevel,
    hsParControl,
    hsBufFillPct,
    hsGopClosedCadence,
    hsParDenominator,
    hsMaxBitrate,
    hsSyntax,
    hsNumRefFrames,
    hsLevel,
    hsProfile,
    hsAdaptiveQuantization,
    hsLookAheadRateControl,
    hsFramerateControl,
    hsForceFieldPictures,
    hsBitrate,
    hsAfdSignaling,

    -- ** H265ColorSpaceSettings
    H265ColorSpaceSettings,
    h265ColorSpaceSettings,
    hRec601Settings,
    hRec709Settings,
    hColorSpacePassthroughSettings,
    hHdr10Settings,

    -- ** H265FilterSettings
    H265FilterSettings,
    h265FilterSettings,
    hTemporalFilterSettings,

    -- ** H265Settings
    H265Settings,
    h265Settings,
    hssScanType,
    hssBufSize,
    hssFlickerAq,
    hssAlternativeTransferFunction,
    hssRateControlMode,
    hssSlices,
    hssColorMetadata,
    hssGopSizeUnits,
    hssGopSize,
    hssFixedAfd,
    hssFilterSettings,
    hssParNumerator,
    hssSceneChangeDetect,
    hssTimecodeInsertion,
    hssColorSpaceSettings,
    hssMinIInterval,
    hssQvbrQualityLevel,
    hssGopClosedCadence,
    hssParDenominator,
    hssMaxBitrate,
    hssLevel,
    hssProfile,
    hssAdaptiveQuantization,
    hssLookAheadRateControl,
    hssBitrate,
    hssAfdSignaling,
    hssTier,
    hssFramerateNumerator,
    hssFramerateDenominator,

    -- ** Hdr10Settings
    Hdr10Settings,
    hdr10Settings,
    hsMaxCll,
    hsMaxFall,

    -- ** HlsAkamaiSettings
    HlsAkamaiSettings,
    hlsAkamaiSettings,
    hasFilecacheDuration,
    hasNumRetries,
    hasHTTPTransferMode,
    hasConnectionRetryInterval,
    hasToken,
    hasRestartDelay,
    hasSalt,

    -- ** HlsBasicPutSettings
    HlsBasicPutSettings,
    hlsBasicPutSettings,
    hbpsFilecacheDuration,
    hbpsNumRetries,
    hbpsConnectionRetryInterval,
    hbpsRestartDelay,

    -- ** HlsCdnSettings
    HlsCdnSettings,
    hlsCdnSettings,
    hcsHlsBasicPutSettings,
    hcsHlsWebdavSettings,
    hcsHlsAkamaiSettings,
    hcsHlsMediaStoreSettings,

    -- ** HlsGroupSettings
    HlsGroupSettings,
    hlsGroupSettings,
    hgsOutputSelection,
    hgsIvInManifest,
    hgsTimedMetadataId3Period,
    hgsEncryptionType,
    hgsSegmentLength,
    hgsTimedMetadataId3Frame,
    hgsAdMarkers,
    hgsKeyFormat,
    hgsDirectoryStructure,
    hgsConstantIv,
    hgsManifestCompression,
    hgsStreamInfResolution,
    hgsMode,
    hgsHlsCdnSettings,
    hgsCodecSpecification,
    hgsRedundantManifest,
    hgsIndexNSegments,
    hgsIFrameOnlyPlaylists,
    hgsSegmentationMode,
    hgsProgramDateTime,
    hgsSegmentsPerSubdirectory,
    hgsTsFileMode,
    hgsDiscontinuityTags,
    hgsBaseURLContent,
    hgsHlsId3SegmentTagging,
    hgsIncompleteSegmentBehavior,
    hgsBaseURLManifest,
    hgsBaseURLContent1,
    hgsCaptionLanguageMappings,
    hgsInputLossAction,
    hgsKeyProviderSettings,
    hgsKeepSegments,
    hgsTimestampDeltaMilliseconds,
    hgsBaseURLManifest1,
    hgsProgramDateTimePeriod,
    hgsKeyFormatVersions,
    hgsClientCache,
    hgsMinSegmentLength,
    hgsManifestDurationFormat,
    hgsIvSource,
    hgsCaptionLanguageSetting,
    hgsDestination,

    -- ** HlsId3SegmentTaggingScheduleActionSettings
    HlsId3SegmentTaggingScheduleActionSettings,
    hlsId3SegmentTaggingScheduleActionSettings,
    histsasTag,

    -- ** HlsInputSettings
    HlsInputSettings,
    hlsInputSettings,
    hisRetryInterval,
    hisBandwidth,
    hisRetries,
    hisBufferSegments,

    -- ** HlsMediaStoreSettings
    HlsMediaStoreSettings,
    hlsMediaStoreSettings,
    hmssFilecacheDuration,
    hmssNumRetries,
    hmssMediaStoreStorageClass,
    hmssConnectionRetryInterval,
    hmssRestartDelay,

    -- ** HlsOutputSettings
    HlsOutputSettings,
    hlsOutputSettings,
    hosSegmentModifier,
    hosH265PackagingType,
    hosNameModifier,
    hosHlsSettings,

    -- ** HlsSettings
    HlsSettings,
    hlsSettings,
    hsStandardHlsSettings,
    hsFrameCaptureHlsSettings,
    hsAudioOnlyHlsSettings,
    hsFmp4HlsSettings,

    -- ** HlsTimedMetadataScheduleActionSettings
    HlsTimedMetadataScheduleActionSettings,
    hlsTimedMetadataScheduleActionSettings,
    htmsasId3,

    -- ** HlsWebdavSettings
    HlsWebdavSettings,
    hlsWebdavSettings,
    hwsFilecacheDuration,
    hwsNumRetries,
    hwsHTTPTransferMode,
    hwsConnectionRetryInterval,
    hwsRestartDelay,

    -- ** ImmediateModeScheduleActionStartSettings
    ImmediateModeScheduleActionStartSettings,
    immediateModeScheduleActionStartSettings,

    -- ** Input
    Input,
    input,
    iRoleARN,
    iSources,
    iInputPartnerIds,
    iInputSourceType,
    iMediaConnectFlows,
    iARN,
    iId,
    iSecurityGroups,
    iDestinations,
    iState,
    iName,
    iTags,
    iType,
    iInputClass,
    iInputDevices,
    iAttachedChannels,

    -- ** InputAttachment
    InputAttachment,
    inputAttachment,
    iaInputSettings,
    iaInputId,
    iaInputAttachmentName,
    iaAutomaticInputFailoverSettings,

    -- ** InputChannelLevel
    InputChannelLevel,
    inputChannelLevel,
    iclInputChannel,
    iclGain,

    -- ** InputClippingSettings
    InputClippingSettings,
    inputClippingSettings,
    icsStartTimecode,
    icsStopTimecode,
    icsInputTimecodeSource,

    -- ** InputDestination
    InputDestination,
    inputDestination,
    idIP,
    idPort,
    idURL,
    idVPC,

    -- ** InputDestinationRequest
    InputDestinationRequest,
    inputDestinationRequest,
    idrStreamName,

    -- ** InputDestinationVPC
    InputDestinationVPC,
    inputDestinationVPC,
    idvAvailabilityZone,
    idvNetworkInterfaceId,

    -- ** InputDeviceConfigurableSettings
    InputDeviceConfigurableSettings,
    inputDeviceConfigurableSettings,
    idcsConfiguredInput,
    idcsMaxBitrate,

    -- ** InputDeviceHdSettings
    InputDeviceHdSettings,
    inputDeviceHdSettings,
    idhsHeight,
    idhsScanType,
    idhsWidth,
    idhsConfiguredInput,
    idhsFramerate,
    idhsDeviceState,
    idhsMaxBitrate,
    idhsActiveInput,

    -- ** InputDeviceNetworkSettings
    InputDeviceNetworkSettings,
    inputDeviceNetworkSettings,
    idnsDNSAddresses,
    idnsIPAddress,
    idnsSubnetMask,
    idnsIPScheme,
    idnsGateway,

    -- ** InputDeviceRequest
    InputDeviceRequest,
    inputDeviceRequest,
    idrId,

    -- ** InputDeviceSettings
    InputDeviceSettings,
    inputDeviceSettings,
    idsId,

    -- ** InputDeviceSummary
    InputDeviceSummary,
    inputDeviceSummary,
    inpUhdDeviceSettings,
    inpHdDeviceSettings,
    inpMACAddress,
    inpConnectionState,
    inpNetworkSettings,
    inpARN,
    inpId,
    inpDeviceUpdateStatus,
    inpName,
    inpSerialNumber,
    inpType,
    inpDeviceSettingsSyncState,

    -- ** InputDeviceUhdSettings
    InputDeviceUhdSettings,
    inputDeviceUhdSettings,
    idusHeight,
    idusScanType,
    idusWidth,
    idusConfiguredInput,
    idusFramerate,
    idusDeviceState,
    idusMaxBitrate,
    idusActiveInput,

    -- ** InputLocation
    InputLocation,
    inputLocation,
    ilPasswordParam,
    ilUsername,
    ilURI,

    -- ** InputLossBehavior
    InputLossBehavior,
    inputLossBehavior,
    ilbBlackFrameMsec,
    ilbInputLossImageColor,
    ilbInputLossImageSlate,
    ilbRepeatFrameMsec,
    ilbInputLossImageType,

    -- ** InputLossFailoverSettings
    InputLossFailoverSettings,
    inputLossFailoverSettings,
    ilfsInputLossThresholdMsec,

    -- ** InputPrepareScheduleActionSettings
    InputPrepareScheduleActionSettings,
    inputPrepareScheduleActionSettings,
    ipsasInputAttachmentNameReference,
    ipsasURLPath,
    ipsasInputClippingSettings,

    -- ** InputSecurityGroup
    InputSecurityGroup,
    inputSecurityGroup,
    isgARN,
    isgId,
    isgState,
    isgTags,
    isgWhitelistRules,
    isgInputs,

    -- ** InputSettings
    InputSettings,
    inputSettings,
    isDenoiseFilter,
    isAudioSelectors,
    isFilterStrength,
    isSmpte2038DataPreference,
    isVideoSelector,
    isSourceEndBehavior,
    isInputFilter,
    isDeblockFilter,
    isCaptionSelectors,
    isNetworkInputSettings,

    -- ** InputSource
    InputSource,
    inputSource,
    isPasswordParam,
    isUsername,
    isURL,

    -- ** InputSourceRequest
    InputSourceRequest,
    inputSourceRequest,
    isrPasswordParam,
    isrUsername,
    isrURL,

    -- ** InputSpecification
    InputSpecification,
    inputSpecification,
    isCodec,
    isMaximumBitrate,
    isResolution,

    -- ** InputSwitchScheduleActionSettings
    InputSwitchScheduleActionSettings,
    inputSwitchScheduleActionSettings,
    issasURLPath,
    issasInputClippingSettings,
    issasInputAttachmentNameReference,

    -- ** InputVPCRequest
    InputVPCRequest,
    inputVPCRequest,
    ivrSecurityGroupIds,
    ivrSubnetIds,

    -- ** InputWhitelistRule
    InputWhitelistRule,
    inputWhitelistRule,
    iwrCidr,

    -- ** InputWhitelistRuleCidr
    InputWhitelistRuleCidr,
    inputWhitelistRuleCidr,
    iwrcCidr,

    -- ** KeyProviderSettings
    KeyProviderSettings,
    keyProviderSettings,
    kpsStaticKeySettings,

    -- ** M2tsSettings
    M2tsSettings,
    m2tsSettings,
    mSegmentationMarkers,
    mKlvDataPids,
    mEtvSignalPid,
    mPcrPeriod,
    mPmtPid,
    mVideoPid,
    mNielsenId3Behavior,
    mAudioBufferModel,
    mTimedMetadataPid,
    mSegmentationStyle,
    mDvbNitSettings,
    mNullPacketBitrate,
    mPcrControl,
    mEbpAudioInterval,
    mEbpPlacement,
    mPmtInterval,
    mCCDescriptor,
    mScte35Control,
    mAribCaptionsPid,
    mAudioPids,
    mEtvPlatformPid,
    mPatInterval,
    mProgramNum,
    mAudioStreamType,
    mEbpLookaheadMs,
    mBufferModel,
    mAribCaptionsPidControl,
    mPcrPid,
    mKlv,
    mAudioFramesPerPes,
    mRateMode,
    mDvbTdtSettings,
    mEcmPid,
    mDvbSdtSettings,
    mAbsentInputAudioBehavior,
    mSegmentationTime,
    mEbif,
    mDvbTeletextPid,
    mTimedMetadataBehavior,
    mArib,
    mBitrate,
    mFragmentTime,
    mEsRateInPes,
    mScte27Pids,
    mTransportStreamId,
    mDvbSubPids,
    mScte35Pid,

    -- ** M3u8Settings
    M3u8Settings,
    m3u8Settings,
    msPcrPeriod,
    msPmtPid,
    msVideoPid,
    msNielsenId3Behavior,
    msTimedMetadataPid,
    msPcrControl,
    msPmtInterval,
    msAudioPids,
    msPatInterval,
    msProgramNum,
    msPcrPid,
    msAudioFramesPerPes,
    msEcmPid,
    msScte35Behavior,
    msTimedMetadataBehavior,
    msTransportStreamId,
    msScte35Pid,

    -- ** MediaConnectFlow
    MediaConnectFlow,
    mediaConnectFlow,
    mcfFlowARN,

    -- ** MediaConnectFlowRequest
    MediaConnectFlowRequest,
    mediaConnectFlowRequest,
    mcfrFlowARN,

    -- ** MediaPackageGroupSettings
    MediaPackageGroupSettings,
    mediaPackageGroupSettings,
    mpgsDestination,

    -- ** MediaPackageOutputDestinationSettings
    MediaPackageOutputDestinationSettings,
    mediaPackageOutputDestinationSettings,
    mpodsChannelId,

    -- ** MediaPackageOutputSettings
    MediaPackageOutputSettings,
    mediaPackageOutputSettings,

    -- ** Mp2Settings
    Mp2Settings,
    mp2Settings,
    msCodingMode,
    msSampleRate,
    msBitrate,

    -- ** Mpeg2FilterSettings
    Mpeg2FilterSettings,
    mpeg2FilterSettings,
    mfsTemporalFilterSettings,

    -- ** Mpeg2Settings
    Mpeg2Settings,
    mpeg2Settings,
    msScanType,
    msDisplayAspectRatio,
    msColorMetadata,
    msSubgopLength,
    msGopSizeUnits,
    msGopSize,
    msFixedAfd,
    msFilterSettings,
    msGopNumBFrames,
    msTimecodeInsertion,
    msGopClosedCadence,
    msColorSpace,
    msAdaptiveQuantization,
    msAfdSignaling,
    msFramerateNumerator,
    msFramerateDenominator,

    -- ** MsSmoothGroupSettings
    MsSmoothGroupSettings,
    msSmoothGroupSettings,
    msgsStreamManifestBehavior,
    msgsFilecacheDuration,
    msgsFragmentLength,
    msgsEventId,
    msgsCertificateMode,
    msgsNumRetries,
    msgsAcquisitionPointId,
    msgsAudioOnlyTimecodeControl,
    msgsSegmentationMode,
    msgsEventIdMode,
    msgsSendDelayMs,
    msgsConnectionRetryInterval,
    msgsSparseTrackType,
    msgsInputLossAction,
    msgsTimestampOffset,
    msgsEventStopBehavior,
    msgsTimestampOffsetMode,
    msgsRestartDelay,
    msgsDestination,

    -- ** MsSmoothOutputSettings
    MsSmoothOutputSettings,
    msSmoothOutputSettings,
    msosH265PackagingType,
    msosNameModifier,

    -- ** Multiplex
    Multiplex,
    multiplex,
    mAvailabilityZones,
    mARN,
    mId,
    mPipelinesRunningCount,
    mProgramCount,
    mDestinations,
    mState,
    mName,
    mTags,
    mMultiplexSettings,

    -- ** MultiplexGroupSettings
    MultiplexGroupSettings,
    multiplexGroupSettings,

    -- ** MultiplexMediaConnectOutputDestinationSettings
    MultiplexMediaConnectOutputDestinationSettings,
    multiplexMediaConnectOutputDestinationSettings,
    mmcodsEntitlementARN,

    -- ** MultiplexOutputDestination
    MultiplexOutputDestination,
    multiplexOutputDestination,
    modMediaConnectSettings,

    -- ** MultiplexOutputSettings
    MultiplexOutputSettings,
    multiplexOutputSettings,
    mosDestination,

    -- ** MultiplexProgram
    MultiplexProgram,
    multiplexProgram,
    mpPacketIdentifiersMap,
    mpMultiplexProgramSettings,
    mpChannelId,
    mpProgramName,
    mpPipelineDetails,

    -- ** MultiplexProgramChannelDestinationSettings
    MultiplexProgramChannelDestinationSettings,
    multiplexProgramChannelDestinationSettings,
    mpcdsMultiplexId,
    mpcdsProgramName,

    -- ** MultiplexProgramPacketIdentifiersMap
    MultiplexProgramPacketIdentifiersMap,
    multiplexProgramPacketIdentifiersMap,
    mppimKlvDataPids,
    mppimEtvSignalPid,
    mppimPmtPid,
    mppimVideoPid,
    mppimTimedMetadataPid,
    mppimAudioPids,
    mppimEtvPlatformPid,
    mppimPcrPid,
    mppimDvbTeletextPid,
    mppimPrivateMetadataPid,
    mppimScte27Pids,
    mppimDvbSubPids,
    mppimScte35Pid,

    -- ** MultiplexProgramPipelineDetail
    MultiplexProgramPipelineDetail,
    multiplexProgramPipelineDetail,
    mppdPipelineId,
    mppdActiveChannelPipeline,

    -- ** MultiplexProgramServiceDescriptor
    MultiplexProgramServiceDescriptor,
    multiplexProgramServiceDescriptor,
    mpsdProviderName,
    mpsdServiceName,

    -- ** MultiplexProgramSettings
    MultiplexProgramSettings,
    multiplexProgramSettings,
    mpsPreferredChannelPipeline,
    mpsServiceDescriptor,
    mpsVideoSettings,
    mpsProgramNumber,

    -- ** MultiplexProgramSummary
    MultiplexProgramSummary,
    multiplexProgramSummary,
    mpsChannelId,
    mpsProgramName,

    -- ** MultiplexSettings
    MultiplexSettings,
    multiplexSettings,
    mulTransportStreamReservedBitrate,
    mulMaximumVideoBufferDelayMilliseconds,
    mulTransportStreamBitrate,
    mulTransportStreamId,

    -- ** MultiplexSettingsSummary
    MultiplexSettingsSummary,
    multiplexSettingsSummary,
    mssTransportStreamBitrate,

    -- ** MultiplexStatmuxVideoSettings
    MultiplexStatmuxVideoSettings,
    multiplexStatmuxVideoSettings,
    msvsMinimumBitrate,
    msvsMaximumBitrate,
    msvsPriority,

    -- ** MultiplexSummary
    MultiplexSummary,
    multiplexSummary,
    msAvailabilityZones,
    msARN,
    msId,
    msPipelinesRunningCount,
    msProgramCount,
    msState,
    msName,
    msTags,
    msMultiplexSettings,

    -- ** MultiplexVideoSettings
    MultiplexVideoSettings,
    multiplexVideoSettings,
    mvsConstantBitrate,
    mvsStatmuxSettings,

    -- ** NetworkInputSettings
    NetworkInputSettings,
    networkInputSettings,
    nisHlsInputSettings,
    nisServerValidation,

    -- ** NielsenConfiguration
    NielsenConfiguration,
    nielsenConfiguration,
    ncNielsenPcmToId3Tagging,
    ncDistributorId,

    -- ** Offering
    Offering,
    offering,
    oDuration,
    oDurationUnits,
    oARN,
    oOfferingId,
    oCurrencyCode,
    oResourceSpecification,
    oOfferingDescription,
    oFixedPrice,
    oUsagePrice,
    oOfferingType,
    oRegion,

    -- ** Output
    Output,
    output,
    oAudioDescriptionNames,
    oOutputName,
    oVideoDescriptionName,
    oCaptionDescriptionNames,
    oOutputSettings,

    -- ** OutputDestination
    OutputDestination,
    outputDestination,
    odMediaPackageSettings,
    odId,
    odMultiplexSettings,
    odSettings,

    -- ** OutputDestinationSettings
    OutputDestinationSettings,
    outputDestinationSettings,
    odsPasswordParam,
    odsUsername,
    odsStreamName,
    odsURL,

    -- ** OutputGroup
    OutputGroup,
    outputGroup,
    ogName,
    ogOutputs,
    ogOutputGroupSettings,

    -- ** OutputGroupSettings
    OutputGroupSettings,
    outputGroupSettings,
    ogsMsSmoothGroupSettings,
    ogsFrameCaptureGroupSettings,
    ogsHlsGroupSettings,
    ogsMediaPackageGroupSettings,
    ogsRtmpGroupSettings,
    ogsUdpGroupSettings,
    ogsArchiveGroupSettings,
    ogsMultiplexGroupSettings,

    -- ** OutputLocationRef
    OutputLocationRef,
    outputLocationRef,
    olrDestinationRefId,

    -- ** OutputSettings
    OutputSettings,
    outputSettings,
    osRtmpOutputSettings,
    osMsSmoothOutputSettings,
    osUdpOutputSettings,
    osMediaPackageOutputSettings,
    osFrameCaptureOutputSettings,
    osArchiveOutputSettings,
    osHlsOutputSettings,
    osMultiplexOutputSettings,

    -- ** PassThroughSettings
    PassThroughSettings,
    passThroughSettings,

    -- ** PauseStateScheduleActionSettings
    PauseStateScheduleActionSettings,
    pauseStateScheduleActionSettings,
    pssasPipelines,

    -- ** PipelineDetail
    PipelineDetail,
    pipelineDetail,
    pdPipelineId,
    pdActiveInputAttachmentName,
    pdActiveInputSwitchActionName,

    -- ** PipelinePauseStateSettings
    PipelinePauseStateSettings,
    pipelinePauseStateSettings,
    ppssPipelineId,

    -- ** RawSettings
    RawSettings,
    rawSettings,

    -- ** Rec601Settings
    Rec601Settings,
    rec601Settings,

    -- ** Rec709Settings
    Rec709Settings,
    rec709Settings,

    -- ** RemixSettings
    RemixSettings,
    remixSettings,
    rsChannelsIn,
    rsChannelsOut,
    rsChannelMappings,

    -- ** Reservation
    Reservation,
    reservation,
    rEnd,
    rDuration,
    rDurationUnits,
    rARN,
    rOfferingId,
    rCurrencyCode,
    rResourceSpecification,
    rState,
    rName,
    rTags,
    rOfferingDescription,
    rCount,
    rFixedPrice,
    rUsagePrice,
    rOfferingType,
    rRegion,
    rStart,
    rReservationId,

    -- ** ReservationResourceSpecification
    ReservationResourceSpecification,
    reservationResourceSpecification,
    rrsMaximumFramerate,
    rrsVideoQuality,
    rrsCodec,
    rrsMaximumBitrate,
    rrsSpecialFeature,
    rrsChannelClass,
    rrsResourceType,
    rrsResolution,

    -- ** RtmpCaptionInfoDestinationSettings
    RtmpCaptionInfoDestinationSettings,
    rtmpCaptionInfoDestinationSettings,

    -- ** RtmpGroupSettings
    RtmpGroupSettings,
    rtmpGroupSettings,
    rgsAdMarkers,
    rgsCaptionData,
    rgsCacheFullBehavior,
    rgsCacheLength,
    rgsAuthenticationScheme,
    rgsInputLossAction,
    rgsRestartDelay,

    -- ** RtmpOutputSettings
    RtmpOutputSettings,
    rtmpOutputSettings,
    rosCertificateMode,
    rosNumRetries,
    rosConnectionRetryInterval,
    rosDestination,

    -- ** ScheduleAction
    ScheduleAction,
    scheduleAction,
    saActionName,
    saScheduleActionStartSettings,
    saScheduleActionSettings,

    -- ** ScheduleActionSettings
    ScheduleActionSettings,
    scheduleActionSettings,
    sasInputSwitchSettings,
    sasScte35TimeSignalSettings,
    sasHlsTimedMetadataSettings,
    sasStaticImageActivateSettings,
    sasPauseStateSettings,
    sasScte35SpliceInsertSettings,
    sasScte35ReturnToNetworkSettings,
    sasHlsId3SegmentTaggingSettings,
    sasStaticImageDeactivateSettings,
    sasInputPrepareSettings,

    -- ** ScheduleActionStartSettings
    ScheduleActionStartSettings,
    scheduleActionStartSettings,
    sassFollowModeScheduleActionStartSettings,
    sassImmediateModeScheduleActionStartSettings,
    sassFixedModeScheduleActionStartSettings,

    -- ** Scte20PlusEmbeddedDestinationSettings
    Scte20PlusEmbeddedDestinationSettings,
    scte20PlusEmbeddedDestinationSettings,

    -- ** Scte20SourceSettings
    Scte20SourceSettings,
    scte20SourceSettings,
    sssConvert608To708,
    sssSource608ChannelNumber,

    -- ** Scte27DestinationSettings
    Scte27DestinationSettings,
    scte27DestinationSettings,

    -- ** Scte27SourceSettings
    Scte27SourceSettings,
    scte27SourceSettings,
    sssPid,

    -- ** Scte35DeliveryRestrictions
    Scte35DeliveryRestrictions,
    scte35DeliveryRestrictions,
    sdrDeviceRestrictions,
    sdrArchiveAllowedFlag,
    sdrWebDeliveryAllowedFlag,
    sdrNoRegionalBlackoutFlag,

    -- ** Scte35Descriptor
    Scte35Descriptor,
    scte35Descriptor,
    sdScte35DescriptorSettings,

    -- ** Scte35DescriptorSettings
    Scte35DescriptorSettings,
    scte35DescriptorSettings,
    sdsSegmentationDescriptorScte35DescriptorSettings,

    -- ** Scte35ReturnToNetworkScheduleActionSettings
    Scte35ReturnToNetworkScheduleActionSettings,
    scte35ReturnToNetworkScheduleActionSettings,
    srtnsasSpliceEventId,

    -- ** Scte35SegmentationDescriptor
    Scte35SegmentationDescriptor,
    scte35SegmentationDescriptor,
    ssdSubSegmentNum,
    ssdSegmentationUpid,
    ssdSegmentNum,
    ssdSubSegmentsExpected,
    ssdSegmentationUpidType,
    ssdSegmentsExpected,
    ssdSegmentationTypeId,
    ssdDeliveryRestrictions,
    ssdSegmentationDuration,
    ssdSegmentationEventId,
    ssdSegmentationCancelIndicator,

    -- ** Scte35SpliceInsert
    Scte35SpliceInsert,
    scte35SpliceInsert,
    ssiAdAvailOffset,
    ssiNoRegionalBlackoutFlag,
    ssiWebDeliveryAllowedFlag,

    -- ** Scte35SpliceInsertScheduleActionSettings
    Scte35SpliceInsertScheduleActionSettings,
    scte35SpliceInsertScheduleActionSettings,
    ssisasDuration,
    ssisasSpliceEventId,

    -- ** Scte35TimeSignalApos
    Scte35TimeSignalApos,
    scte35TimeSignalApos,
    stsaAdAvailOffset,
    stsaNoRegionalBlackoutFlag,
    stsaWebDeliveryAllowedFlag,

    -- ** Scte35TimeSignalScheduleActionSettings
    Scte35TimeSignalScheduleActionSettings,
    scte35TimeSignalScheduleActionSettings,
    stssasScte35Descriptors,

    -- ** SmpteTtDestinationSettings
    SmpteTtDestinationSettings,
    smpteTtDestinationSettings,

    -- ** StandardHlsSettings
    StandardHlsSettings,
    standardHlsSettings,
    shsAudioRenditionSets,
    shsM3u8Settings,

    -- ** StartTimecode
    StartTimecode,
    startTimecode,
    stTimecode,

    -- ** StaticImageActivateScheduleActionSettings
    StaticImageActivateScheduleActionSettings,
    staticImageActivateScheduleActionSettings,
    siasasHeight,
    siasasImageX,
    siasasImageY,
    siasasDuration,
    siasasWidth,
    siasasLayer,
    siasasOpacity,
    siasasFadeIn,
    siasasFadeOut,
    siasasImage,

    -- ** StaticImageDeactivateScheduleActionSettings
    StaticImageDeactivateScheduleActionSettings,
    staticImageDeactivateScheduleActionSettings,
    sidsasLayer,
    sidsasFadeOut,

    -- ** StaticKeySettings
    StaticKeySettings,
    staticKeySettings,
    sksKeyProviderServer,
    sksStaticKeyValue,

    -- ** StopTimecode
    StopTimecode,
    stopTimecode,
    sTimecode,
    sLastFrameClippingBehavior,

    -- ** TeletextDestinationSettings
    TeletextDestinationSettings,
    teletextDestinationSettings,

    -- ** TeletextSourceSettings
    TeletextSourceSettings,
    teletextSourceSettings,
    tssPageNumber,

    -- ** TemporalFilterSettings
    TemporalFilterSettings,
    temporalFilterSettings,
    tfsPostFilterSharpening,
    tfsStrength,

    -- ** TimecodeConfig
    TimecodeConfig,
    timecodeConfig,
    tcSyncThreshold,
    tcSource,

    -- ** TransferringInputDeviceSummary
    TransferringInputDeviceSummary,
    transferringInputDeviceSummary,
    tidsTransferType,
    tidsMessage,
    tidsId,
    tidsTargetCustomerId,

    -- ** TtmlDestinationSettings
    TtmlDestinationSettings,
    ttmlDestinationSettings,
    tdsStyleControl,

    -- ** UdpContainerSettings
    UdpContainerSettings,
    udpContainerSettings,
    ucsM2tsSettings,

    -- ** UdpGroupSettings
    UdpGroupSettings,
    udpGroupSettings,
    ugsTimedMetadataId3Period,
    ugsTimedMetadataId3Frame,
    ugsInputLossAction,

    -- ** UdpOutputSettings
    UdpOutputSettings,
    udpOutputSettings,
    uosBufferMsec,
    uosFecOutputSettings,
    uosDestination,
    uosContainerSettings,

    -- ** VPCOutputSettings
    VPCOutputSettings,
    vpcOutputSettings,
    vosSecurityGroupIds,
    vosPublicAddressAllocationIds,
    vosSubnetIds,

    -- ** VideoBlackFailoverSettings
    VideoBlackFailoverSettings,
    videoBlackFailoverSettings,
    vbfsBlackDetectThreshold,
    vbfsVideoBlackThresholdMsec,

    -- ** VideoCodecSettings
    VideoCodecSettings,
    videoCodecSettings,
    vcsFrameCaptureSettings,
    vcsMpeg2Settings,
    vcsH264Settings,
    vcsH265Settings,

    -- ** VideoDescription
    VideoDescription,
    videoDescription,
    vdHeight,
    vdRespondToAfd,
    vdWidth,
    vdCodecSettings,
    vdScalingBehavior,
    vdSharpness,
    vdName,

    -- ** VideoSelector
    VideoSelector,
    videoSelector,
    vsColorSpaceUsage,
    vsSelectorSettings,
    vsColorSpace,

    -- ** VideoSelectorPid
    VideoSelectorPid,
    videoSelectorPid,
    vspPid,

    -- ** VideoSelectorProgramId
    VideoSelectorProgramId,
    videoSelectorProgramId,
    vspiProgramId,

    -- ** VideoSelectorSettings
    VideoSelectorSettings,
    videoSelectorSettings,
    vssVideoSelectorPid,
    vssVideoSelectorProgramId,

    -- ** WavSettings
    WavSettings,
    wavSettings,
    wsCodingMode,
    wsBitDepth,
    wsSampleRate,

    -- ** WebvttDestinationSettings
    WebvttDestinationSettings,
    webvttDestinationSettings,
  )
where

import Network.AWS.MediaLive.AcceptInputDeviceTransfer
import Network.AWS.MediaLive.BatchDelete
import Network.AWS.MediaLive.BatchStart
import Network.AWS.MediaLive.BatchStop
import Network.AWS.MediaLive.BatchUpdateSchedule
import Network.AWS.MediaLive.CancelInputDeviceTransfer
import Network.AWS.MediaLive.CreateChannel
import Network.AWS.MediaLive.CreateInput
import Network.AWS.MediaLive.CreateInputSecurityGroup
import Network.AWS.MediaLive.CreateMultiplex
import Network.AWS.MediaLive.CreateMultiplexProgram
import Network.AWS.MediaLive.CreatePartnerInput
import Network.AWS.MediaLive.CreateTags
import Network.AWS.MediaLive.DeleteChannel
import Network.AWS.MediaLive.DeleteInput
import Network.AWS.MediaLive.DeleteInputSecurityGroup
import Network.AWS.MediaLive.DeleteMultiplex
import Network.AWS.MediaLive.DeleteMultiplexProgram
import Network.AWS.MediaLive.DeleteReservation
import Network.AWS.MediaLive.DeleteSchedule
import Network.AWS.MediaLive.DeleteTags
import Network.AWS.MediaLive.DescribeChannel
import Network.AWS.MediaLive.DescribeInput
import Network.AWS.MediaLive.DescribeInputDevice
import Network.AWS.MediaLive.DescribeInputDeviceThumbnail
import Network.AWS.MediaLive.DescribeInputSecurityGroup
import Network.AWS.MediaLive.DescribeMultiplex
import Network.AWS.MediaLive.DescribeMultiplexProgram
import Network.AWS.MediaLive.DescribeOffering
import Network.AWS.MediaLive.DescribeReservation
import Network.AWS.MediaLive.DescribeSchedule
import Network.AWS.MediaLive.ListChannels
import Network.AWS.MediaLive.ListInputDeviceTransfers
import Network.AWS.MediaLive.ListInputDevices
import Network.AWS.MediaLive.ListInputSecurityGroups
import Network.AWS.MediaLive.ListInputs
import Network.AWS.MediaLive.ListMultiplexPrograms
import Network.AWS.MediaLive.ListMultiplexes
import Network.AWS.MediaLive.ListOfferings
import Network.AWS.MediaLive.ListReservations
import Network.AWS.MediaLive.ListTagsForResource
import Network.AWS.MediaLive.PurchaseOffering
import Network.AWS.MediaLive.RejectInputDeviceTransfer
import Network.AWS.MediaLive.StartChannel
import Network.AWS.MediaLive.StartMultiplex
import Network.AWS.MediaLive.StopChannel
import Network.AWS.MediaLive.StopMultiplex
import Network.AWS.MediaLive.TransferInputDevice
import Network.AWS.MediaLive.Types
import Network.AWS.MediaLive.UpdateChannel
import Network.AWS.MediaLive.UpdateChannelClass
import Network.AWS.MediaLive.UpdateInput
import Network.AWS.MediaLive.UpdateInputDevice
import Network.AWS.MediaLive.UpdateInputSecurityGroup
import Network.AWS.MediaLive.UpdateMultiplex
import Network.AWS.MediaLive.UpdateMultiplexProgram
import Network.AWS.MediaLive.UpdateReservation
import Network.AWS.MediaLive.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'MediaLive'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
