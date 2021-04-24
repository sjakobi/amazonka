{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types
  ( -- * Service Configuration
    connect,

    -- * Errors
    _ServiceQuotaExceededException,
    _OutboundContactNotPermittedException,
    _ResourceConflictException,
    _ContactFlowNotPublishedException,
    _InternalServiceException,
    _UserNotFoundException,
    _DuplicateResourceException,
    _ThrottlingException,
    _InvalidRequestException,
    _InvalidParameterException,
    _ContactNotFoundException,
    _InvalidContactFlowException,
    _ResourceInUseException,
    _LimitExceededException,
    _DestinationNotAllowedException,
    _ResourceNotFoundException,

    -- * Channel
    Channel (..),

    -- * Comparison
    Comparison (..),

    -- * ContactFlowType
    ContactFlowType (..),

    -- * CurrentMetricName
    CurrentMetricName (..),

    -- * DirectoryType
    DirectoryType (..),

    -- * EncryptionType
    EncryptionType (..),

    -- * Grouping
    Grouping (..),

    -- * HistoricalMetricName
    HistoricalMetricName (..),

    -- * HoursOfOperationDays
    HoursOfOperationDays (..),

    -- * InstanceAttributeType
    InstanceAttributeType (..),

    -- * InstanceStatus
    InstanceStatus (..),

    -- * InstanceStorageResourceType
    InstanceStorageResourceType (..),

    -- * IntegrationType
    IntegrationType (..),

    -- * PhoneNumberCountryCode
    PhoneNumberCountryCode (..),

    -- * PhoneNumberType
    PhoneNumberType (..),

    -- * PhoneType
    PhoneType (..),

    -- * QueueStatus
    QueueStatus (..),

    -- * QueueType
    QueueType (..),

    -- * QuickConnectType
    QuickConnectType (..),

    -- * ReferenceType
    ReferenceType (..),

    -- * SourceType
    SourceType (..),

    -- * Statistic
    Statistic (..),

    -- * StorageType
    StorageType (..),

    -- * Unit
    Unit (..),

    -- * UseCaseType
    UseCaseType (..),

    -- * VoiceRecordingTrack
    VoiceRecordingTrack (..),

    -- * Attribute
    Attribute (..),
    attribute,
    aAttributeType,
    aValue,

    -- * ChatMessage
    ChatMessage (..),
    chatMessage,
    cmContentType,
    cmContent,

    -- * ContactFlow
    ContactFlow (..),
    contactFlow,
    cfARN,
    cfId,
    cfName,
    cfContent,
    cfTags,
    cfDescription,
    cfType,

    -- * ContactFlowSummary
    ContactFlowSummary (..),
    contactFlowSummary,
    cfsARN,
    cfsId,
    cfsContactFlowType,
    cfsName,

    -- * Credentials
    Credentials (..),
    credentials,
    cRefreshTokenExpiration,
    cAccessToken,
    cAccessTokenExpiration,
    cRefreshToken,

    -- * CurrentMetric
    CurrentMetric (..),
    currentMetric,
    cmUnit,
    cmName,

    -- * CurrentMetricData
    CurrentMetricData (..),
    currentMetricData,
    cmdMetric,
    cmdValue,

    -- * CurrentMetricResult
    CurrentMetricResult (..),
    currentMetricResult,
    cmrCollections,
    cmrDimensions,

    -- * Dimensions
    Dimensions (..),
    dimensions,
    dQueue,
    dChannel,

    -- * EncryptionConfig
    EncryptionConfig (..),
    encryptionConfig,
    ecEncryptionType,
    ecKeyId,

    -- * Filters
    Filters (..),
    filters,
    fChannels,
    fQueues,

    -- * HierarchyGroup
    HierarchyGroup (..),
    hierarchyGroup,
    hgLevelId,
    hgARN,
    hgId,
    hgHierarchyPath,
    hgName,

    -- * HierarchyGroupSummary
    HierarchyGroupSummary (..),
    hierarchyGroupSummary,
    hgsARN,
    hgsId,
    hgsName,

    -- * HierarchyLevel
    HierarchyLevel (..),
    hierarchyLevel,
    hlARN,
    hlId,
    hlName,

    -- * HierarchyLevelUpdate
    HierarchyLevelUpdate (..),
    hierarchyLevelUpdate,
    hluName,

    -- * HierarchyPath
    HierarchyPath (..),
    hierarchyPath,
    hpLevelThree,
    hpLevelFour,
    hpLevelTwo,
    hpLevelOne,
    hpLevelFive,

    -- * HierarchyStructure
    HierarchyStructure (..),
    hierarchyStructure,
    hsLevelThree,
    hsLevelFour,
    hsLevelTwo,
    hsLevelOne,
    hsLevelFive,

    -- * HierarchyStructureUpdate
    HierarchyStructureUpdate (..),
    hierarchyStructureUpdate,
    hsuLevelThree,
    hsuLevelFour,
    hsuLevelTwo,
    hsuLevelOne,
    hsuLevelFive,

    -- * HistoricalMetric
    HistoricalMetric (..),
    historicalMetric,
    hmThreshold,
    hmUnit,
    hmName,
    hmStatistic,

    -- * HistoricalMetricData
    HistoricalMetricData (..),
    historicalMetricData,
    hmdMetric,
    hmdValue,

    -- * HistoricalMetricResult
    HistoricalMetricResult (..),
    historicalMetricResult,
    hmrCollections,
    hmrDimensions,

    -- * HoursOfOperation
    HoursOfOperation (..),
    hoursOfOperation,
    hooConfig,
    hooHoursOfOperationARN,
    hooName,
    hooTags,
    hooDescription,
    hooTimeZone,
    hooHoursOfOperationId,

    -- * HoursOfOperationConfig
    HoursOfOperationConfig (..),
    hoursOfOperationConfig,
    hoocDay,
    hoocStartTime,
    hoocEndTime,

    -- * HoursOfOperationSummary
    HoursOfOperationSummary (..),
    hoursOfOperationSummary,
    hoosARN,
    hoosId,
    hoosName,

    -- * HoursOfOperationTimeSlice
    HoursOfOperationTimeSlice (..),
    hoursOfOperationTimeSlice,
    hootsHours,
    hootsMinutes,

    -- * Instance
    Instance (..),
    instance',
    iInstanceAlias,
    iServiceRole,
    iOutboundCallsEnabled,
    iARN,
    iId,
    iInstanceStatus,
    iIdentityManagementType,
    iCreatedTime,
    iInboundCallsEnabled,
    iStatusReason,

    -- * InstanceStatusReason
    InstanceStatusReason (..),
    instanceStatusReason,
    isrMessage,

    -- * InstanceStorageConfig
    InstanceStorageConfig (..),
    instanceStorageConfig,
    iscKinesisStreamConfig,
    iscKinesisFirehoseConfig,
    iscKinesisVideoStreamConfig,
    iscAssociationId,
    iscS3Config,
    iscStorageType,

    -- * InstanceSummary
    InstanceSummary (..),
    instanceSummary,
    isInstanceAlias,
    isServiceRole,
    isOutboundCallsEnabled,
    isARN,
    isId,
    isInstanceStatus,
    isIdentityManagementType,
    isCreatedTime,
    isInboundCallsEnabled,

    -- * IntegrationAssociationSummary
    IntegrationAssociationSummary (..),
    integrationAssociationSummary,
    iasInstanceId,
    iasSourceApplicationName,
    iasIntegrationAssociationARN,
    iasSourceApplicationURL,
    iasIntegrationType,
    iasIntegrationARN,
    iasSourceType,
    iasIntegrationAssociationId,

    -- * KinesisFirehoseConfig
    KinesisFirehoseConfig (..),
    kinesisFirehoseConfig,
    kfcFirehoseARN,

    -- * KinesisStreamConfig
    KinesisStreamConfig (..),
    kinesisStreamConfig,
    kscStreamARN,

    -- * KinesisVideoStreamConfig
    KinesisVideoStreamConfig (..),
    kinesisVideoStreamConfig,
    kvscPrefix,
    kvscRetentionPeriodHours,
    kvscEncryptionConfig,

    -- * LexBot
    LexBot (..),
    lexBot,
    lbName,
    lbLexRegion,

    -- * MediaConcurrency
    MediaConcurrency (..),
    mediaConcurrency,
    mcChannel,
    mcConcurrency,

    -- * OutboundCallerConfig
    OutboundCallerConfig (..),
    outboundCallerConfig,
    occOutboundCallerIdNumberId,
    occOutboundFlowId,
    occOutboundCallerIdName,

    -- * ParticipantDetails
    ParticipantDetails (..),
    participantDetails,
    pdDisplayName,

    -- * PhoneNumberQuickConnectConfig
    PhoneNumberQuickConnectConfig (..),
    phoneNumberQuickConnectConfig,
    pnqccPhoneNumber,

    -- * PhoneNumberSummary
    PhoneNumberSummary (..),
    phoneNumberSummary,
    pnsPhoneNumber,
    pnsARN,
    pnsId,
    pnsPhoneNumberType,
    pnsPhoneNumberCountryCode,

    -- * PromptSummary
    PromptSummary (..),
    promptSummary,
    psARN,
    psId,
    psName,

    -- * Queue
    Queue (..),
    queue,
    qMaxContacts,
    qStatus,
    qQueueId,
    qName,
    qQueueARN,
    qTags,
    qDescription,
    qOutboundCallerConfig,
    qHoursOfOperationId,

    -- * QueueQuickConnectConfig
    QueueQuickConnectConfig (..),
    queueQuickConnectConfig,
    qqccQueueId,
    qqccContactFlowId,

    -- * QueueReference
    QueueReference (..),
    queueReference,
    qrARN,
    qrId,

    -- * QueueSummary
    QueueSummary (..),
    queueSummary,
    qsQueueType,
    qsARN,
    qsId,
    qsName,

    -- * QuickConnect
    QuickConnect (..),
    quickConnect,
    qcQuickConnectId,
    qcName,
    qcTags,
    qcQuickConnectConfig,
    qcQuickConnectARN,
    qcDescription,

    -- * QuickConnectConfig
    QuickConnectConfig (..),
    quickConnectConfig,
    qccUserConfig,
    qccPhoneConfig,
    qccQueueConfig,
    qccQuickConnectType,

    -- * QuickConnectSummary
    QuickConnectSummary (..),
    quickConnectSummary,
    qcsQuickConnectType,
    qcsARN,
    qcsId,
    qcsName,

    -- * Reference
    Reference (..),
    reference,
    rValue,
    rType,

    -- * RoutingProfile
    RoutingProfile (..),
    routingProfile,
    rpInstanceId,
    rpDefaultOutboundQueueId,
    rpRoutingProfileId,
    rpMediaConcurrencies,
    rpName,
    rpTags,
    rpDescription,
    rpRoutingProfileARN,

    -- * RoutingProfileQueueConfig
    RoutingProfileQueueConfig (..),
    routingProfileQueueConfig,
    rpqcQueueReference,
    rpqcPriority,
    rpqcDelay,

    -- * RoutingProfileQueueConfigSummary
    RoutingProfileQueueConfigSummary (..),
    routingProfileQueueConfigSummary,
    rpqcsQueueId,
    rpqcsQueueARN,
    rpqcsQueueName,
    rpqcsPriority,
    rpqcsDelay,
    rpqcsChannel,

    -- * RoutingProfileQueueReference
    RoutingProfileQueueReference (..),
    routingProfileQueueReference,
    rpqrQueueId,
    rpqrChannel,

    -- * RoutingProfileSummary
    RoutingProfileSummary (..),
    routingProfileSummary,
    rpsARN,
    rpsId,
    rpsName,

    -- * S3Config
    S3Config (..),
    s3Config,
    scEncryptionConfig,
    scBucketName,
    scBucketPrefix,

    -- * SecurityKey
    SecurityKey (..),
    securityKey,
    skKey,
    skCreationTime,
    skAssociationId,

    -- * SecurityProfileSummary
    SecurityProfileSummary (..),
    securityProfileSummary,
    spsARN,
    spsId,
    spsName,

    -- * Threshold
    Threshold (..),
    threshold,
    tThresholdValue,
    tComparison,

    -- * UseCase
    UseCase (..),
    useCase,
    ucUseCaseARN,
    ucUseCaseType,
    ucUseCaseId,

    -- * User
    User (..),
    user,
    uSecurityProfileIds,
    uIdentityInfo,
    uARN,
    uId,
    uHierarchyGroupId,
    uDirectoryUserId,
    uRoutingProfileId,
    uTags,
    uPhoneConfig,
    uUsername,

    -- * UserIdentityInfo
    UserIdentityInfo (..),
    userIdentityInfo,
    uiiEmail,
    uiiFirstName,
    uiiLastName,

    -- * UserPhoneConfig
    UserPhoneConfig (..),
    userPhoneConfig,
    upcAutoAccept,
    upcAfterContactWorkTimeLimit,
    upcDeskPhoneNumber,
    upcPhoneType,

    -- * UserQuickConnectConfig
    UserQuickConnectConfig (..),
    userQuickConnectConfig,
    uqccUserId,
    uqccContactFlowId,

    -- * UserSummary
    UserSummary (..),
    userSummary,
    usARN,
    usId,
    usUsername,

    -- * VoiceRecordingConfiguration
    VoiceRecordingConfiguration (..),
    voiceRecordingConfiguration,
    vrcVoiceRecordingTrack,
  )
where

import Network.AWS.Connect.Types.Attribute
import Network.AWS.Connect.Types.Channel
import Network.AWS.Connect.Types.ChatMessage
import Network.AWS.Connect.Types.Comparison
import Network.AWS.Connect.Types.ContactFlow
import Network.AWS.Connect.Types.ContactFlowSummary
import Network.AWS.Connect.Types.ContactFlowType
import Network.AWS.Connect.Types.Credentials
import Network.AWS.Connect.Types.CurrentMetric
import Network.AWS.Connect.Types.CurrentMetricData
import Network.AWS.Connect.Types.CurrentMetricName
import Network.AWS.Connect.Types.CurrentMetricResult
import Network.AWS.Connect.Types.Dimensions
import Network.AWS.Connect.Types.DirectoryType
import Network.AWS.Connect.Types.EncryptionConfig
import Network.AWS.Connect.Types.EncryptionType
import Network.AWS.Connect.Types.Filters
import Network.AWS.Connect.Types.Grouping
import Network.AWS.Connect.Types.HierarchyGroup
import Network.AWS.Connect.Types.HierarchyGroupSummary
import Network.AWS.Connect.Types.HierarchyLevel
import Network.AWS.Connect.Types.HierarchyLevelUpdate
import Network.AWS.Connect.Types.HierarchyPath
import Network.AWS.Connect.Types.HierarchyStructure
import Network.AWS.Connect.Types.HierarchyStructureUpdate
import Network.AWS.Connect.Types.HistoricalMetric
import Network.AWS.Connect.Types.HistoricalMetricData
import Network.AWS.Connect.Types.HistoricalMetricName
import Network.AWS.Connect.Types.HistoricalMetricResult
import Network.AWS.Connect.Types.HoursOfOperation
import Network.AWS.Connect.Types.HoursOfOperationConfig
import Network.AWS.Connect.Types.HoursOfOperationDays
import Network.AWS.Connect.Types.HoursOfOperationSummary
import Network.AWS.Connect.Types.HoursOfOperationTimeSlice
import Network.AWS.Connect.Types.Instance
import Network.AWS.Connect.Types.InstanceAttributeType
import Network.AWS.Connect.Types.InstanceStatus
import Network.AWS.Connect.Types.InstanceStatusReason
import Network.AWS.Connect.Types.InstanceStorageConfig
import Network.AWS.Connect.Types.InstanceStorageResourceType
import Network.AWS.Connect.Types.InstanceSummary
import Network.AWS.Connect.Types.IntegrationAssociationSummary
import Network.AWS.Connect.Types.IntegrationType
import Network.AWS.Connect.Types.KinesisFirehoseConfig
import Network.AWS.Connect.Types.KinesisStreamConfig
import Network.AWS.Connect.Types.KinesisVideoStreamConfig
import Network.AWS.Connect.Types.LexBot
import Network.AWS.Connect.Types.MediaConcurrency
import Network.AWS.Connect.Types.OutboundCallerConfig
import Network.AWS.Connect.Types.ParticipantDetails
import Network.AWS.Connect.Types.PhoneNumberCountryCode
import Network.AWS.Connect.Types.PhoneNumberQuickConnectConfig
import Network.AWS.Connect.Types.PhoneNumberSummary
import Network.AWS.Connect.Types.PhoneNumberType
import Network.AWS.Connect.Types.PhoneType
import Network.AWS.Connect.Types.PromptSummary
import Network.AWS.Connect.Types.Queue
import Network.AWS.Connect.Types.QueueQuickConnectConfig
import Network.AWS.Connect.Types.QueueReference
import Network.AWS.Connect.Types.QueueStatus
import Network.AWS.Connect.Types.QueueSummary
import Network.AWS.Connect.Types.QueueType
import Network.AWS.Connect.Types.QuickConnect
import Network.AWS.Connect.Types.QuickConnectConfig
import Network.AWS.Connect.Types.QuickConnectSummary
import Network.AWS.Connect.Types.QuickConnectType
import Network.AWS.Connect.Types.Reference
import Network.AWS.Connect.Types.ReferenceType
import Network.AWS.Connect.Types.RoutingProfile
import Network.AWS.Connect.Types.RoutingProfileQueueConfig
import Network.AWS.Connect.Types.RoutingProfileQueueConfigSummary
import Network.AWS.Connect.Types.RoutingProfileQueueReference
import Network.AWS.Connect.Types.RoutingProfileSummary
import Network.AWS.Connect.Types.S3Config
import Network.AWS.Connect.Types.SecurityKey
import Network.AWS.Connect.Types.SecurityProfileSummary
import Network.AWS.Connect.Types.SourceType
import Network.AWS.Connect.Types.Statistic
import Network.AWS.Connect.Types.StorageType
import Network.AWS.Connect.Types.Threshold
import Network.AWS.Connect.Types.Unit
import Network.AWS.Connect.Types.UseCase
import Network.AWS.Connect.Types.UseCaseType
import Network.AWS.Connect.Types.User
import Network.AWS.Connect.Types.UserIdentityInfo
import Network.AWS.Connect.Types.UserPhoneConfig
import Network.AWS.Connect.Types.UserQuickConnectConfig
import Network.AWS.Connect.Types.UserSummary
import Network.AWS.Connect.Types.VoiceRecordingConfiguration
import Network.AWS.Connect.Types.VoiceRecordingTrack
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2017-08-08@ of the Amazon Connect Service SDK configuration.
connect :: Service
connect =
  Service
    { _svcAbbrev = "Connect",
      _svcSigner = v4,
      _svcPrefix = "connect",
      _svcVersion = "2017-08-08",
      _svcEndpoint = defaultEndpoint connect,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "Connect",
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

-- | The service quota has been exceeded.
_ServiceQuotaExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceQuotaExceededException =
  _MatchServiceError
    connect
    "ServiceQuotaExceededException"
    . hasStatus 402

-- | The contact is not permitted.
_OutboundContactNotPermittedException :: AsError a => Getting (First ServiceError) a ServiceError
_OutboundContactNotPermittedException =
  _MatchServiceError
    connect
    "OutboundContactNotPermittedException"
    . hasStatus 403

-- | A resource already has that name.
_ResourceConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceConflictException =
  _MatchServiceError
    connect
    "ResourceConflictException"
    . hasStatus 409

-- | The contact flow has not been published.
_ContactFlowNotPublishedException :: AsError a => Getting (First ServiceError) a ServiceError
_ContactFlowNotPublishedException =
  _MatchServiceError
    connect
    "ContactFlowNotPublishedException"
    . hasStatus 404

-- | Request processing failed because of an error or failure with the service.
_InternalServiceException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServiceException =
  _MatchServiceError
    connect
    "InternalServiceException"
    . hasStatus 500

-- | No user with the specified credentials was found in the Amazon Connect instance.
_UserNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_UserNotFoundException =
  _MatchServiceError connect "UserNotFoundException"
    . hasStatus 404

-- | A resource with the specified name already exists.
_DuplicateResourceException :: AsError a => Getting (First ServiceError) a ServiceError
_DuplicateResourceException =
  _MatchServiceError
    connect
    "DuplicateResourceException"
    . hasStatus 409

-- | The throttling limit has been exceeded.
_ThrottlingException :: AsError a => Getting (First ServiceError) a ServiceError
_ThrottlingException =
  _MatchServiceError connect "ThrottlingException"
    . hasStatus 429

-- | The request is not valid.
_InvalidRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRequestException =
  _MatchServiceError
    connect
    "InvalidRequestException"
    . hasStatus 400

-- | One or more of the specified parameters are not valid.
_InvalidParameterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterException =
  _MatchServiceError
    connect
    "InvalidParameterException"
    . hasStatus 400

-- | The contact with the specified ID is not active or does not exist.
_ContactNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ContactNotFoundException =
  _MatchServiceError
    connect
    "ContactNotFoundException"
    . hasStatus 410

-- | The contact flow is not valid.
_InvalidContactFlowException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidContactFlowException =
  _MatchServiceError
    connect
    "InvalidContactFlowException"
    . hasStatus 400

-- | That resource is already in use. Please try another.
_ResourceInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceInUseException =
  _MatchServiceError connect "ResourceInUseException"
    . hasStatus 409

-- | The allowed limit for the resource has been exceeded.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError connect "LimitExceededException"
    . hasStatus 429

-- | Outbound calls to the destination number are not allowed.
_DestinationNotAllowedException :: AsError a => Getting (First ServiceError) a ServiceError
_DestinationNotAllowedException =
  _MatchServiceError
    connect
    "DestinationNotAllowedException"
    . hasStatus 403

-- | The specified resource was not found.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    connect
    "ResourceNotFoundException"
    . hasStatus 404
