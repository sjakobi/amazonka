{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Amazon Connect is a cloud-based contact center solution that you use to set up and manage a customer contact center and provide reliable customer engagement at any scale.
--
--
-- Amazon Connect provides metrics and real-time reporting that enable you to optimize contact routing. You can also resolve customer issues more efficiently by getting customers in touch with the appropriate agents.
--
-- There are limits to the number of Amazon Connect resources that you can create. There are also limits to the number of requests that you can make per second. For more information, see <https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html Amazon Connect Service Quotas> in the /Amazon Connect Administrator Guide/ .
--
-- You can connect programmatically to an AWS service by using an endpoint. For a list of Amazon Connect endpoints, see <https://docs.aws.amazon.com/general/latest/gr/connect_region.html Amazon Connect Endpoints> .
module Network.AWS.Connect
  ( -- * Service Configuration
    connect,

    -- * Errors
    -- $errors

    -- ** ServiceQuotaExceededException
    _ServiceQuotaExceededException,

    -- ** OutboundContactNotPermittedException
    _OutboundContactNotPermittedException,

    -- ** ResourceConflictException
    _ResourceConflictException,

    -- ** ContactFlowNotPublishedException
    _ContactFlowNotPublishedException,

    -- ** InternalServiceException
    _InternalServiceException,

    -- ** UserNotFoundException
    _UserNotFoundException,

    -- ** DuplicateResourceException
    _DuplicateResourceException,

    -- ** ThrottlingException
    _ThrottlingException,

    -- ** InvalidRequestException
    _InvalidRequestException,

    -- ** InvalidParameterException
    _InvalidParameterException,

    -- ** ContactNotFoundException
    _ContactNotFoundException,

    -- ** InvalidContactFlowException
    _InvalidContactFlowException,

    -- ** ResourceInUseException
    _ResourceInUseException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** DestinationNotAllowedException
    _DestinationNotAllowedException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** SuspendContactRecording
    module Network.AWS.Connect.SuspendContactRecording,

    -- ** UpdateQueueName
    module Network.AWS.Connect.UpdateQueueName,

    -- ** CreateQuickConnect
    module Network.AWS.Connect.CreateQuickConnect,

    -- ** UpdateUserRoutingProfile
    module Network.AWS.Connect.UpdateUserRoutingProfile,

    -- ** UpdateUserHierarchyGroupName
    module Network.AWS.Connect.UpdateUserHierarchyGroupName,

    -- ** UpdateContactFlowName
    module Network.AWS.Connect.UpdateContactFlowName,

    -- ** ListSecurityProfiles (Paginated)
    module Network.AWS.Connect.ListSecurityProfiles,

    -- ** DescribeInstance
    module Network.AWS.Connect.DescribeInstance,

    -- ** ListInstanceAttributes (Paginated)
    module Network.AWS.Connect.ListInstanceAttributes,

    -- ** ListLambdaFunctions (Paginated)
    module Network.AWS.Connect.ListLambdaFunctions,

    -- ** UpdateRoutingProfileQueues
    module Network.AWS.Connect.UpdateRoutingProfileQueues,

    -- ** AssociateRoutingProfileQueues
    module Network.AWS.Connect.AssociateRoutingProfileQueues,

    -- ** GetContactAttributes
    module Network.AWS.Connect.GetContactAttributes,

    -- ** ListLexBots (Paginated)
    module Network.AWS.Connect.ListLexBots,

    -- ** AssociateLambdaFunction
    module Network.AWS.Connect.AssociateLambdaFunction,

    -- ** ListApprovedOrigins (Paginated)
    module Network.AWS.Connect.ListApprovedOrigins,

    -- ** AssociateInstanceStorageConfig
    module Network.AWS.Connect.AssociateInstanceStorageConfig,

    -- ** CreateContactFlow
    module Network.AWS.Connect.CreateContactFlow,

    -- ** UpdateUserPhoneConfig
    module Network.AWS.Connect.UpdateUserPhoneConfig,

    -- ** UpdateContactAttributes
    module Network.AWS.Connect.UpdateContactAttributes,

    -- ** ListRoutingProfiles (Paginated)
    module Network.AWS.Connect.ListRoutingProfiles,

    -- ** DeleteUseCase
    module Network.AWS.Connect.DeleteUseCase,

    -- ** DescribeQuickConnect
    module Network.AWS.Connect.DescribeQuickConnect,

    -- ** ListQueueQuickConnects (Paginated)
    module Network.AWS.Connect.ListQueueQuickConnects,

    -- ** CreateRoutingProfile
    module Network.AWS.Connect.CreateRoutingProfile,

    -- ** AssociateApprovedOrigin
    module Network.AWS.Connect.AssociateApprovedOrigin,

    -- ** DisassociateQueueQuickConnects
    module Network.AWS.Connect.DisassociateQueueQuickConnects,

    -- ** UpdateRoutingProfileConcurrency
    module Network.AWS.Connect.UpdateRoutingProfileConcurrency,

    -- ** UpdateQueueOutboundCallerConfig
    module Network.AWS.Connect.UpdateQueueOutboundCallerConfig,

    -- ** DisassociateSecurityKey
    module Network.AWS.Connect.DisassociateSecurityKey,

    -- ** UntagResource
    module Network.AWS.Connect.UntagResource,

    -- ** GetCurrentMetricData
    module Network.AWS.Connect.GetCurrentMetricData,

    -- ** UpdateQuickConnectConfig
    module Network.AWS.Connect.UpdateQuickConnectConfig,

    -- ** ListInstances (Paginated)
    module Network.AWS.Connect.ListInstances,

    -- ** ListQueues (Paginated)
    module Network.AWS.Connect.ListQueues,

    -- ** DeleteInstance
    module Network.AWS.Connect.DeleteInstance,

    -- ** TagResource
    module Network.AWS.Connect.TagResource,

    -- ** StopContact
    module Network.AWS.Connect.StopContact,

    -- ** CreateUserHierarchyGroup
    module Network.AWS.Connect.CreateUserHierarchyGroup,

    -- ** StartContactRecording
    module Network.AWS.Connect.StartContactRecording,

    -- ** CreateUser
    module Network.AWS.Connect.CreateUser,

    -- ** AssociateSecurityKey
    module Network.AWS.Connect.AssociateSecurityKey,

    -- ** AssociateQueueQuickConnects
    module Network.AWS.Connect.AssociateQueueQuickConnects,

    -- ** StopContactRecording
    module Network.AWS.Connect.StopContactRecording,

    -- ** DisassociateApprovedOrigin
    module Network.AWS.Connect.DisassociateApprovedOrigin,

    -- ** UpdateQuickConnectName
    module Network.AWS.Connect.UpdateQuickConnectName,

    -- ** DescribeRoutingProfile
    module Network.AWS.Connect.DescribeRoutingProfile,

    -- ** ListQuickConnects (Paginated)
    module Network.AWS.Connect.ListQuickConnects,

    -- ** DisassociateLexBot
    module Network.AWS.Connect.DisassociateLexBot,

    -- ** DeleteQuickConnect
    module Network.AWS.Connect.DeleteQuickConnect,

    -- ** ListRoutingProfileQueues (Paginated)
    module Network.AWS.Connect.ListRoutingProfileQueues,

    -- ** UpdateUserHierarchy
    module Network.AWS.Connect.UpdateUserHierarchy,

    -- ** DisassociateLambdaFunction
    module Network.AWS.Connect.DisassociateLambdaFunction,

    -- ** UpdateQueueMaxContacts
    module Network.AWS.Connect.UpdateQueueMaxContacts,

    -- ** DescribeInstanceStorageConfig
    module Network.AWS.Connect.DescribeInstanceStorageConfig,

    -- ** UpdateQueueHoursOfOperation
    module Network.AWS.Connect.UpdateQueueHoursOfOperation,

    -- ** DisassociateRoutingProfileQueues
    module Network.AWS.Connect.DisassociateRoutingProfileQueues,

    -- ** DescribeContactFlow
    module Network.AWS.Connect.DescribeContactFlow,

    -- ** UpdateQueueStatus
    module Network.AWS.Connect.UpdateQueueStatus,

    -- ** DescribeQueue
    module Network.AWS.Connect.DescribeQueue,

    -- ** AssociateLexBot
    module Network.AWS.Connect.AssociateLexBot,

    -- ** UpdateInstanceAttribute
    module Network.AWS.Connect.UpdateInstanceAttribute,

    -- ** DescribeUser
    module Network.AWS.Connect.DescribeUser,

    -- ** DescribeUserHierarchyGroup
    module Network.AWS.Connect.DescribeUserHierarchyGroup,

    -- ** ResumeContactRecording
    module Network.AWS.Connect.ResumeContactRecording,

    -- ** UpdateRoutingProfileName
    module Network.AWS.Connect.UpdateRoutingProfileName,

    -- ** StartChatContact
    module Network.AWS.Connect.StartChatContact,

    -- ** DeleteIntegrationAssociation
    module Network.AWS.Connect.DeleteIntegrationAssociation,

    -- ** ListPhoneNumbers (Paginated)
    module Network.AWS.Connect.ListPhoneNumbers,

    -- ** ListIntegrationAssociations (Paginated)
    module Network.AWS.Connect.ListIntegrationAssociations,

    -- ** ListUseCases (Paginated)
    module Network.AWS.Connect.ListUseCases,

    -- ** UpdateUserSecurityProfiles
    module Network.AWS.Connect.UpdateUserSecurityProfiles,

    -- ** DescribeUserHierarchyStructure
    module Network.AWS.Connect.DescribeUserHierarchyStructure,

    -- ** ListHoursOfOperations (Paginated)
    module Network.AWS.Connect.ListHoursOfOperations,

    -- ** CreateUseCase
    module Network.AWS.Connect.CreateUseCase,

    -- ** ListContactFlows (Paginated)
    module Network.AWS.Connect.ListContactFlows,

    -- ** UpdateInstanceStorageConfig
    module Network.AWS.Connect.UpdateInstanceStorageConfig,

    -- ** ListInstanceStorageConfigs (Paginated)
    module Network.AWS.Connect.ListInstanceStorageConfigs,

    -- ** CreateIntegrationAssociation
    module Network.AWS.Connect.CreateIntegrationAssociation,

    -- ** DeleteUserHierarchyGroup
    module Network.AWS.Connect.DeleteUserHierarchyGroup,

    -- ** DeleteUser
    module Network.AWS.Connect.DeleteUser,

    -- ** DisassociateInstanceStorageConfig
    module Network.AWS.Connect.DisassociateInstanceStorageConfig,

    -- ** ListUserHierarchyGroups (Paginated)
    module Network.AWS.Connect.ListUserHierarchyGroups,

    -- ** UpdateUserIdentityInfo
    module Network.AWS.Connect.UpdateUserIdentityInfo,

    -- ** ListUsers (Paginated)
    module Network.AWS.Connect.ListUsers,

    -- ** GetFederationToken
    module Network.AWS.Connect.GetFederationToken,

    -- ** DescribeInstanceAttribute
    module Network.AWS.Connect.DescribeInstanceAttribute,

    -- ** ListSecurityKeys (Paginated)
    module Network.AWS.Connect.ListSecurityKeys,

    -- ** UpdateRoutingProfileDefaultOutboundQueue
    module Network.AWS.Connect.UpdateRoutingProfileDefaultOutboundQueue,

    -- ** CreateQueue
    module Network.AWS.Connect.CreateQueue,

    -- ** CreateInstance
    module Network.AWS.Connect.CreateInstance,

    -- ** StartTaskContact
    module Network.AWS.Connect.StartTaskContact,

    -- ** ListPrompts (Paginated)
    module Network.AWS.Connect.ListPrompts,

    -- ** ListTagsForResource
    module Network.AWS.Connect.ListTagsForResource,

    -- ** StartOutboundVoiceContact
    module Network.AWS.Connect.StartOutboundVoiceContact,

    -- ** UpdateUserHierarchyStructure
    module Network.AWS.Connect.UpdateUserHierarchyStructure,

    -- ** UpdateContactFlowContent
    module Network.AWS.Connect.UpdateContactFlowContent,

    -- ** GetMetricData (Paginated)
    module Network.AWS.Connect.GetMetricData,

    -- ** DescribeHoursOfOperation
    module Network.AWS.Connect.DescribeHoursOfOperation,

    -- * Types

    -- ** Channel
    Channel (..),

    -- ** Comparison
    Comparison (..),

    -- ** ContactFlowType
    ContactFlowType (..),

    -- ** CurrentMetricName
    CurrentMetricName (..),

    -- ** DirectoryType
    DirectoryType (..),

    -- ** EncryptionType
    EncryptionType (..),

    -- ** Grouping
    Grouping (..),

    -- ** HistoricalMetricName
    HistoricalMetricName (..),

    -- ** HoursOfOperationDays
    HoursOfOperationDays (..),

    -- ** InstanceAttributeType
    InstanceAttributeType (..),

    -- ** InstanceStatus
    InstanceStatus (..),

    -- ** InstanceStorageResourceType
    InstanceStorageResourceType (..),

    -- ** IntegrationType
    IntegrationType (..),

    -- ** PhoneNumberCountryCode
    PhoneNumberCountryCode (..),

    -- ** PhoneNumberType
    PhoneNumberType (..),

    -- ** PhoneType
    PhoneType (..),

    -- ** QueueStatus
    QueueStatus (..),

    -- ** QueueType
    QueueType (..),

    -- ** QuickConnectType
    QuickConnectType (..),

    -- ** ReferenceType
    ReferenceType (..),

    -- ** SourceType
    SourceType (..),

    -- ** Statistic
    Statistic (..),

    -- ** StorageType
    StorageType (..),

    -- ** Unit
    Unit (..),

    -- ** UseCaseType
    UseCaseType (..),

    -- ** VoiceRecordingTrack
    VoiceRecordingTrack (..),

    -- ** Attribute
    Attribute,
    attribute,
    aAttributeType,
    aValue,

    -- ** ChatMessage
    ChatMessage,
    chatMessage,
    cmContentType,
    cmContent,

    -- ** ContactFlow
    ContactFlow,
    contactFlow,
    cfARN,
    cfId,
    cfName,
    cfContent,
    cfTags,
    cfDescription,
    cfType,

    -- ** ContactFlowSummary
    ContactFlowSummary,
    contactFlowSummary,
    cfsARN,
    cfsId,
    cfsContactFlowType,
    cfsName,

    -- ** Credentials
    Credentials,
    credentials,
    cRefreshTokenExpiration,
    cAccessToken,
    cAccessTokenExpiration,
    cRefreshToken,

    -- ** CurrentMetric
    CurrentMetric,
    currentMetric,
    cmUnit,
    cmName,

    -- ** CurrentMetricData
    CurrentMetricData,
    currentMetricData,
    cmdMetric,
    cmdValue,

    -- ** CurrentMetricResult
    CurrentMetricResult,
    currentMetricResult,
    cmrCollections,
    cmrDimensions,

    -- ** Dimensions
    Dimensions,
    dimensions,
    dQueue,
    dChannel,

    -- ** EncryptionConfig
    EncryptionConfig,
    encryptionConfig,
    ecEncryptionType,
    ecKeyId,

    -- ** Filters
    Filters,
    filters,
    fChannels,
    fQueues,

    -- ** HierarchyGroup
    HierarchyGroup,
    hierarchyGroup,
    hgLevelId,
    hgARN,
    hgId,
    hgHierarchyPath,
    hgName,

    -- ** HierarchyGroupSummary
    HierarchyGroupSummary,
    hierarchyGroupSummary,
    hgsARN,
    hgsId,
    hgsName,

    -- ** HierarchyLevel
    HierarchyLevel,
    hierarchyLevel,
    hlARN,
    hlId,
    hlName,

    -- ** HierarchyLevelUpdate
    HierarchyLevelUpdate,
    hierarchyLevelUpdate,
    hluName,

    -- ** HierarchyPath
    HierarchyPath,
    hierarchyPath,
    hpLevelThree,
    hpLevelFour,
    hpLevelTwo,
    hpLevelOne,
    hpLevelFive,

    -- ** HierarchyStructure
    HierarchyStructure,
    hierarchyStructure,
    hsLevelThree,
    hsLevelFour,
    hsLevelTwo,
    hsLevelOne,
    hsLevelFive,

    -- ** HierarchyStructureUpdate
    HierarchyStructureUpdate,
    hierarchyStructureUpdate,
    hsuLevelThree,
    hsuLevelFour,
    hsuLevelTwo,
    hsuLevelOne,
    hsuLevelFive,

    -- ** HistoricalMetric
    HistoricalMetric,
    historicalMetric,
    hmThreshold,
    hmUnit,
    hmName,
    hmStatistic,

    -- ** HistoricalMetricData
    HistoricalMetricData,
    historicalMetricData,
    hmdMetric,
    hmdValue,

    -- ** HistoricalMetricResult
    HistoricalMetricResult,
    historicalMetricResult,
    hmrCollections,
    hmrDimensions,

    -- ** HoursOfOperation
    HoursOfOperation,
    hoursOfOperation,
    hooConfig,
    hooHoursOfOperationARN,
    hooName,
    hooTags,
    hooDescription,
    hooTimeZone,
    hooHoursOfOperationId,

    -- ** HoursOfOperationConfig
    HoursOfOperationConfig,
    hoursOfOperationConfig,
    hoocDay,
    hoocStartTime,
    hoocEndTime,

    -- ** HoursOfOperationSummary
    HoursOfOperationSummary,
    hoursOfOperationSummary,
    hoosARN,
    hoosId,
    hoosName,

    -- ** HoursOfOperationTimeSlice
    HoursOfOperationTimeSlice,
    hoursOfOperationTimeSlice,
    hootsHours,
    hootsMinutes,

    -- ** Instance
    Instance,
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

    -- ** InstanceStatusReason
    InstanceStatusReason,
    instanceStatusReason,
    isrMessage,

    -- ** InstanceStorageConfig
    InstanceStorageConfig,
    instanceStorageConfig,
    iscKinesisStreamConfig,
    iscKinesisFirehoseConfig,
    iscKinesisVideoStreamConfig,
    iscAssociationId,
    iscS3Config,
    iscStorageType,

    -- ** InstanceSummary
    InstanceSummary,
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

    -- ** IntegrationAssociationSummary
    IntegrationAssociationSummary,
    integrationAssociationSummary,
    iasInstanceId,
    iasSourceApplicationName,
    iasIntegrationAssociationARN,
    iasSourceApplicationURL,
    iasIntegrationType,
    iasIntegrationARN,
    iasSourceType,
    iasIntegrationAssociationId,

    -- ** KinesisFirehoseConfig
    KinesisFirehoseConfig,
    kinesisFirehoseConfig,
    kfcFirehoseARN,

    -- ** KinesisStreamConfig
    KinesisStreamConfig,
    kinesisStreamConfig,
    kscStreamARN,

    -- ** KinesisVideoStreamConfig
    KinesisVideoStreamConfig,
    kinesisVideoStreamConfig,
    kvscPrefix,
    kvscRetentionPeriodHours,
    kvscEncryptionConfig,

    -- ** LexBot
    LexBot,
    lexBot,
    lbName,
    lbLexRegion,

    -- ** MediaConcurrency
    MediaConcurrency,
    mediaConcurrency,
    mcChannel,
    mcConcurrency,

    -- ** OutboundCallerConfig
    OutboundCallerConfig,
    outboundCallerConfig,
    occOutboundCallerIdNumberId,
    occOutboundFlowId,
    occOutboundCallerIdName,

    -- ** ParticipantDetails
    ParticipantDetails,
    participantDetails,
    pdDisplayName,

    -- ** PhoneNumberQuickConnectConfig
    PhoneNumberQuickConnectConfig,
    phoneNumberQuickConnectConfig,
    pnqccPhoneNumber,

    -- ** PhoneNumberSummary
    PhoneNumberSummary,
    phoneNumberSummary,
    pnsPhoneNumber,
    pnsARN,
    pnsId,
    pnsPhoneNumberType,
    pnsPhoneNumberCountryCode,

    -- ** PromptSummary
    PromptSummary,
    promptSummary,
    psARN,
    psId,
    psName,

    -- ** Queue
    Queue,
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

    -- ** QueueQuickConnectConfig
    QueueQuickConnectConfig,
    queueQuickConnectConfig,
    qqccQueueId,
    qqccContactFlowId,

    -- ** QueueReference
    QueueReference,
    queueReference,
    qrARN,
    qrId,

    -- ** QueueSummary
    QueueSummary,
    queueSummary,
    qsQueueType,
    qsARN,
    qsId,
    qsName,

    -- ** QuickConnect
    QuickConnect,
    quickConnect,
    qcQuickConnectId,
    qcName,
    qcTags,
    qcQuickConnectConfig,
    qcQuickConnectARN,
    qcDescription,

    -- ** QuickConnectConfig
    QuickConnectConfig,
    quickConnectConfig,
    qccUserConfig,
    qccPhoneConfig,
    qccQueueConfig,
    qccQuickConnectType,

    -- ** QuickConnectSummary
    QuickConnectSummary,
    quickConnectSummary,
    qcsQuickConnectType,
    qcsARN,
    qcsId,
    qcsName,

    -- ** Reference
    Reference,
    reference,
    rValue,
    rType,

    -- ** RoutingProfile
    RoutingProfile,
    routingProfile,
    rpInstanceId,
    rpDefaultOutboundQueueId,
    rpRoutingProfileId,
    rpMediaConcurrencies,
    rpName,
    rpTags,
    rpDescription,
    rpRoutingProfileARN,

    -- ** RoutingProfileQueueConfig
    RoutingProfileQueueConfig,
    routingProfileQueueConfig,
    rpqcQueueReference,
    rpqcPriority,
    rpqcDelay,

    -- ** RoutingProfileQueueConfigSummary
    RoutingProfileQueueConfigSummary,
    routingProfileQueueConfigSummary,
    rpqcsQueueId,
    rpqcsQueueARN,
    rpqcsQueueName,
    rpqcsPriority,
    rpqcsDelay,
    rpqcsChannel,

    -- ** RoutingProfileQueueReference
    RoutingProfileQueueReference,
    routingProfileQueueReference,
    rpqrQueueId,
    rpqrChannel,

    -- ** RoutingProfileSummary
    RoutingProfileSummary,
    routingProfileSummary,
    rpsARN,
    rpsId,
    rpsName,

    -- ** S3Config
    S3Config,
    s3Config,
    scEncryptionConfig,
    scBucketName,
    scBucketPrefix,

    -- ** SecurityKey
    SecurityKey,
    securityKey,
    skKey,
    skCreationTime,
    skAssociationId,

    -- ** SecurityProfileSummary
    SecurityProfileSummary,
    securityProfileSummary,
    spsARN,
    spsId,
    spsName,

    -- ** Threshold
    Threshold,
    threshold,
    tThresholdValue,
    tComparison,

    -- ** UseCase
    UseCase,
    useCase,
    ucUseCaseARN,
    ucUseCaseType,
    ucUseCaseId,

    -- ** User
    User,
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

    -- ** UserIdentityInfo
    UserIdentityInfo,
    userIdentityInfo,
    uiiEmail,
    uiiFirstName,
    uiiLastName,

    -- ** UserPhoneConfig
    UserPhoneConfig,
    userPhoneConfig,
    upcAutoAccept,
    upcAfterContactWorkTimeLimit,
    upcDeskPhoneNumber,
    upcPhoneType,

    -- ** UserQuickConnectConfig
    UserQuickConnectConfig,
    userQuickConnectConfig,
    uqccUserId,
    uqccContactFlowId,

    -- ** UserSummary
    UserSummary,
    userSummary,
    usARN,
    usId,
    usUsername,

    -- ** VoiceRecordingConfiguration
    VoiceRecordingConfiguration,
    voiceRecordingConfiguration,
    vrcVoiceRecordingTrack,
  )
where

import Network.AWS.Connect.AssociateApprovedOrigin
import Network.AWS.Connect.AssociateInstanceStorageConfig
import Network.AWS.Connect.AssociateLambdaFunction
import Network.AWS.Connect.AssociateLexBot
import Network.AWS.Connect.AssociateQueueQuickConnects
import Network.AWS.Connect.AssociateRoutingProfileQueues
import Network.AWS.Connect.AssociateSecurityKey
import Network.AWS.Connect.CreateContactFlow
import Network.AWS.Connect.CreateInstance
import Network.AWS.Connect.CreateIntegrationAssociation
import Network.AWS.Connect.CreateQueue
import Network.AWS.Connect.CreateQuickConnect
import Network.AWS.Connect.CreateRoutingProfile
import Network.AWS.Connect.CreateUseCase
import Network.AWS.Connect.CreateUser
import Network.AWS.Connect.CreateUserHierarchyGroup
import Network.AWS.Connect.DeleteInstance
import Network.AWS.Connect.DeleteIntegrationAssociation
import Network.AWS.Connect.DeleteQuickConnect
import Network.AWS.Connect.DeleteUseCase
import Network.AWS.Connect.DeleteUser
import Network.AWS.Connect.DeleteUserHierarchyGroup
import Network.AWS.Connect.DescribeContactFlow
import Network.AWS.Connect.DescribeHoursOfOperation
import Network.AWS.Connect.DescribeInstance
import Network.AWS.Connect.DescribeInstanceAttribute
import Network.AWS.Connect.DescribeInstanceStorageConfig
import Network.AWS.Connect.DescribeQueue
import Network.AWS.Connect.DescribeQuickConnect
import Network.AWS.Connect.DescribeRoutingProfile
import Network.AWS.Connect.DescribeUser
import Network.AWS.Connect.DescribeUserHierarchyGroup
import Network.AWS.Connect.DescribeUserHierarchyStructure
import Network.AWS.Connect.DisassociateApprovedOrigin
import Network.AWS.Connect.DisassociateInstanceStorageConfig
import Network.AWS.Connect.DisassociateLambdaFunction
import Network.AWS.Connect.DisassociateLexBot
import Network.AWS.Connect.DisassociateQueueQuickConnects
import Network.AWS.Connect.DisassociateRoutingProfileQueues
import Network.AWS.Connect.DisassociateSecurityKey
import Network.AWS.Connect.GetContactAttributes
import Network.AWS.Connect.GetCurrentMetricData
import Network.AWS.Connect.GetFederationToken
import Network.AWS.Connect.GetMetricData
import Network.AWS.Connect.ListApprovedOrigins
import Network.AWS.Connect.ListContactFlows
import Network.AWS.Connect.ListHoursOfOperations
import Network.AWS.Connect.ListInstanceAttributes
import Network.AWS.Connect.ListInstanceStorageConfigs
import Network.AWS.Connect.ListInstances
import Network.AWS.Connect.ListIntegrationAssociations
import Network.AWS.Connect.ListLambdaFunctions
import Network.AWS.Connect.ListLexBots
import Network.AWS.Connect.ListPhoneNumbers
import Network.AWS.Connect.ListPrompts
import Network.AWS.Connect.ListQueueQuickConnects
import Network.AWS.Connect.ListQueues
import Network.AWS.Connect.ListQuickConnects
import Network.AWS.Connect.ListRoutingProfileQueues
import Network.AWS.Connect.ListRoutingProfiles
import Network.AWS.Connect.ListSecurityKeys
import Network.AWS.Connect.ListSecurityProfiles
import Network.AWS.Connect.ListTagsForResource
import Network.AWS.Connect.ListUseCases
import Network.AWS.Connect.ListUserHierarchyGroups
import Network.AWS.Connect.ListUsers
import Network.AWS.Connect.ResumeContactRecording
import Network.AWS.Connect.StartChatContact
import Network.AWS.Connect.StartContactRecording
import Network.AWS.Connect.StartOutboundVoiceContact
import Network.AWS.Connect.StartTaskContact
import Network.AWS.Connect.StopContact
import Network.AWS.Connect.StopContactRecording
import Network.AWS.Connect.SuspendContactRecording
import Network.AWS.Connect.TagResource
import Network.AWS.Connect.Types
import Network.AWS.Connect.UntagResource
import Network.AWS.Connect.UpdateContactAttributes
import Network.AWS.Connect.UpdateContactFlowContent
import Network.AWS.Connect.UpdateContactFlowName
import Network.AWS.Connect.UpdateInstanceAttribute
import Network.AWS.Connect.UpdateInstanceStorageConfig
import Network.AWS.Connect.UpdateQueueHoursOfOperation
import Network.AWS.Connect.UpdateQueueMaxContacts
import Network.AWS.Connect.UpdateQueueName
import Network.AWS.Connect.UpdateQueueOutboundCallerConfig
import Network.AWS.Connect.UpdateQueueStatus
import Network.AWS.Connect.UpdateQuickConnectConfig
import Network.AWS.Connect.UpdateQuickConnectName
import Network.AWS.Connect.UpdateRoutingProfileConcurrency
import Network.AWS.Connect.UpdateRoutingProfileDefaultOutboundQueue
import Network.AWS.Connect.UpdateRoutingProfileName
import Network.AWS.Connect.UpdateRoutingProfileQueues
import Network.AWS.Connect.UpdateUserHierarchy
import Network.AWS.Connect.UpdateUserHierarchyGroupName
import Network.AWS.Connect.UpdateUserHierarchyStructure
import Network.AWS.Connect.UpdateUserIdentityInfo
import Network.AWS.Connect.UpdateUserPhoneConfig
import Network.AWS.Connect.UpdateUserRoutingProfile
import Network.AWS.Connect.UpdateUserSecurityProfiles
import Network.AWS.Connect.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Connect'.

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
