{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types
  ( -- * Service Configuration
    appStream,

    -- * Errors
    _ResourceNotAvailableException,
    _IncompatibleImageException,
    _InvalidParameterCombinationException,
    _ResourceAlreadyExistsException,
    _InvalidAccountStatusException,
    _OperationNotPermittedException,
    _ConcurrentModificationException,
    _InvalidRoleException,
    _ResourceInUseException,
    _LimitExceededException,
    _ResourceNotFoundException,
    _RequestLimitExceededException,

    -- * AccessEndpointType
    AccessEndpointType (..),

    -- * Action
    Action (..),

    -- * AuthenticationType
    AuthenticationType (..),

    -- * FleetAttribute
    FleetAttribute (..),

    -- * FleetErrorCode
    FleetErrorCode (..),

    -- * FleetState
    FleetState (..),

    -- * FleetType
    FleetType (..),

    -- * ImageBuilderState
    ImageBuilderState (..),

    -- * ImageBuilderStateChangeReasonCode
    ImageBuilderStateChangeReasonCode (..),

    -- * ImageState
    ImageState (..),

    -- * ImageStateChangeReasonCode
    ImageStateChangeReasonCode (..),

    -- * MessageAction
    MessageAction (..),

    -- * Permission
    Permission (..),

    -- * PlatformType
    PlatformType (..),

    -- * SessionConnectionState
    SessionConnectionState (..),

    -- * SessionState
    SessionState (..),

    -- * StackAttribute
    StackAttribute (..),

    -- * StackErrorCode
    StackErrorCode (..),

    -- * StorageConnectorType
    StorageConnectorType (..),

    -- * StreamView
    StreamView (..),

    -- * UsageReportExecutionErrorCode
    UsageReportExecutionErrorCode (..),

    -- * UsageReportSchedule
    UsageReportSchedule (..),

    -- * UserStackAssociationErrorCode
    UserStackAssociationErrorCode (..),

    -- * VisibilityType
    VisibilityType (..),

    -- * AccessEndpoint
    AccessEndpoint (..),
    accessEndpoint,
    aeVPCeId,
    aeEndpointType,

    -- * Application
    Application (..),
    application,
    aIconURL,
    aLaunchPath,
    aEnabled,
    aMetadata,
    aLaunchParameters,
    aName,
    aDisplayName,

    -- * ApplicationSettings
    ApplicationSettings (..),
    applicationSettings,
    asSettingsGroup,
    asEnabled,

    -- * ApplicationSettingsResponse
    ApplicationSettingsResponse (..),
    applicationSettingsResponse,
    asrEnabled,
    asrSettingsGroup,
    asrS3BucketName,

    -- * ComputeCapacity
    ComputeCapacity (..),
    computeCapacity,
    ccDesiredInstances,

    -- * ComputeCapacityStatus
    ComputeCapacityStatus (..),
    computeCapacityStatus,
    ccsRunning,
    ccsAvailable,
    ccsInUse,
    ccsDesired,

    -- * DirectoryConfig
    DirectoryConfig (..),
    directoryConfig,
    dcServiceAccountCredentials,
    dcCreatedTime,
    dcOrganizationalUnitDistinguishedNames,
    dcDirectoryName,

    -- * DomainJoinInfo
    DomainJoinInfo (..),
    domainJoinInfo,
    djiOrganizationalUnitDistinguishedName,
    djiDirectoryName,

    -- * Fleet
    Fleet (..),
    fleet,
    fMaxUserDurationInSeconds,
    fDisconnectTimeoutInSeconds,
    fVPCConfig,
    fIAMRoleARN,
    fDomainJoinInfo,
    fFleetType,
    fIdleDisconnectTimeoutInSeconds,
    fImageName,
    fCreatedTime,
    fStreamView,
    fDescription,
    fDisplayName,
    fEnableDefaultInternetAccess,
    fFleetErrors,
    fImageARN,
    fARN,
    fName,
    fInstanceType,
    fComputeCapacityStatus,
    fState,

    -- * FleetError
    FleetError (..),
    fleetError,
    feErrorMessage,
    feErrorCode,

    -- * Image
    Image (..),
    image,
    iImagePermissions,
    iPlatform,
    iImageBuilderName,
    iARN,
    iStateChangeReason,
    iCreatedTime,
    iState,
    iBaseImageARN,
    iApplications,
    iVisibility,
    iAppstreamAgentVersion,
    iDescription,
    iImageBuilderSupported,
    iDisplayName,
    iPublicBaseImageReleasedDate,
    iName,

    -- * ImageBuilder
    ImageBuilder (..),
    imageBuilder,
    ibPlatform,
    ibVPCConfig,
    ibIAMRoleARN,
    ibAccessEndpoints,
    ibDomainJoinInfo,
    ibInstanceType,
    ibARN,
    ibStateChangeReason,
    ibCreatedTime,
    ibNetworkAccessConfiguration,
    ibState,
    ibAppstreamAgentVersion,
    ibDescription,
    ibDisplayName,
    ibEnableDefaultInternetAccess,
    ibImageBuilderErrors,
    ibImageARN,
    ibName,

    -- * ImageBuilderStateChangeReason
    ImageBuilderStateChangeReason (..),
    imageBuilderStateChangeReason,
    ibscrMessage,
    ibscrCode,

    -- * ImagePermissions
    ImagePermissions (..),
    imagePermissions,
    ipAllowImageBuilder,
    ipAllowFleet,

    -- * ImageStateChangeReason
    ImageStateChangeReason (..),
    imageStateChangeReason,
    iscrMessage,
    iscrCode,

    -- * LastReportGenerationExecutionError
    LastReportGenerationExecutionError (..),
    lastReportGenerationExecutionError,
    lrgeeErrorMessage,
    lrgeeErrorCode,

    -- * NetworkAccessConfiguration
    NetworkAccessConfiguration (..),
    networkAccessConfiguration,
    nacEniId,
    nacEniPrivateIPAddress,

    -- * ResourceError
    ResourceError (..),
    resourceError,
    reErrorTimestamp,
    reErrorMessage,
    reErrorCode,

    -- * ServiceAccountCredentials
    ServiceAccountCredentials (..),
    serviceAccountCredentials,
    sacAccountName,
    sacAccountPassword,

    -- * Session
    Session (..),
    session,
    sConnectionState,
    sStartTime,
    sNetworkAccessConfiguration,
    sAuthenticationType,
    sMaxExpirationTime,
    sId,
    sUserId,
    sStackName,
    sFleetName,
    sState,

    -- * SharedImagePermissions
    SharedImagePermissions (..),
    sharedImagePermissions,
    sipSharedAccountId,
    sipImagePermissions,

    -- * Stack
    Stack (..),
    stack,
    sAccessEndpoints,
    sUserSettings,
    sRedirectURL,
    sARN,
    sCreatedTime,
    sApplicationSettings,
    sStorageConnectors,
    sDescription,
    sEmbedHostDomains,
    sDisplayName,
    sStackErrors,
    sFeedbackURL,
    sName,

    -- * StackError
    StackError (..),
    stackError,
    seErrorMessage,
    seErrorCode,

    -- * StorageConnector
    StorageConnector (..),
    storageConnector,
    scDomains,
    scResourceIdentifier,
    scConnectorType,

    -- * UsageReportSubscription
    UsageReportSubscription (..),
    usageReportSubscription,
    ursSubscriptionErrors,
    ursLastGeneratedReportDate,
    ursS3BucketName,
    ursSchedule,

    -- * User
    User (..),
    user,
    uStatus,
    uARN,
    uEnabled,
    uCreatedTime,
    uUserName,
    uFirstName,
    uLastName,
    uAuthenticationType,

    -- * UserSetting
    UserSetting (..),
    userSetting,
    usAction,
    usPermission,

    -- * UserStackAssociation
    UserStackAssociation (..),
    userStackAssociation,
    usaSendEmailNotification,
    usaStackName,
    usaUserName,
    usaAuthenticationType,

    -- * UserStackAssociationError
    UserStackAssociationError (..),
    userStackAssociationError,
    usaeUserStackAssociation,
    usaeErrorMessage,
    usaeErrorCode,

    -- * VPCConfig
    VPCConfig (..),
    vpcConfig,
    vcSecurityGroupIds,
    vcSubnetIds,
  )
where

import Network.AWS.AppStream.Types.AccessEndpoint
import Network.AWS.AppStream.Types.AccessEndpointType
import Network.AWS.AppStream.Types.Action
import Network.AWS.AppStream.Types.Application
import Network.AWS.AppStream.Types.ApplicationSettings
import Network.AWS.AppStream.Types.ApplicationSettingsResponse
import Network.AWS.AppStream.Types.AuthenticationType
import Network.AWS.AppStream.Types.ComputeCapacity
import Network.AWS.AppStream.Types.ComputeCapacityStatus
import Network.AWS.AppStream.Types.DirectoryConfig
import Network.AWS.AppStream.Types.DomainJoinInfo
import Network.AWS.AppStream.Types.Fleet
import Network.AWS.AppStream.Types.FleetAttribute
import Network.AWS.AppStream.Types.FleetError
import Network.AWS.AppStream.Types.FleetErrorCode
import Network.AWS.AppStream.Types.FleetState
import Network.AWS.AppStream.Types.FleetType
import Network.AWS.AppStream.Types.Image
import Network.AWS.AppStream.Types.ImageBuilder
import Network.AWS.AppStream.Types.ImageBuilderState
import Network.AWS.AppStream.Types.ImageBuilderStateChangeReason
import Network.AWS.AppStream.Types.ImageBuilderStateChangeReasonCode
import Network.AWS.AppStream.Types.ImagePermissions
import Network.AWS.AppStream.Types.ImageState
import Network.AWS.AppStream.Types.ImageStateChangeReason
import Network.AWS.AppStream.Types.ImageStateChangeReasonCode
import Network.AWS.AppStream.Types.LastReportGenerationExecutionError
import Network.AWS.AppStream.Types.MessageAction
import Network.AWS.AppStream.Types.NetworkAccessConfiguration
import Network.AWS.AppStream.Types.Permission
import Network.AWS.AppStream.Types.PlatformType
import Network.AWS.AppStream.Types.ResourceError
import Network.AWS.AppStream.Types.ServiceAccountCredentials
import Network.AWS.AppStream.Types.Session
import Network.AWS.AppStream.Types.SessionConnectionState
import Network.AWS.AppStream.Types.SessionState
import Network.AWS.AppStream.Types.SharedImagePermissions
import Network.AWS.AppStream.Types.Stack
import Network.AWS.AppStream.Types.StackAttribute
import Network.AWS.AppStream.Types.StackError
import Network.AWS.AppStream.Types.StackErrorCode
import Network.AWS.AppStream.Types.StorageConnector
import Network.AWS.AppStream.Types.StorageConnectorType
import Network.AWS.AppStream.Types.StreamView
import Network.AWS.AppStream.Types.UsageReportExecutionErrorCode
import Network.AWS.AppStream.Types.UsageReportSchedule
import Network.AWS.AppStream.Types.UsageReportSubscription
import Network.AWS.AppStream.Types.User
import Network.AWS.AppStream.Types.UserSetting
import Network.AWS.AppStream.Types.UserStackAssociation
import Network.AWS.AppStream.Types.UserStackAssociationError
import Network.AWS.AppStream.Types.UserStackAssociationErrorCode
import Network.AWS.AppStream.Types.VPCConfig
import Network.AWS.AppStream.Types.VisibilityType
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2016-12-01@ of the Amazon AppStream SDK configuration.
appStream :: Service
appStream =
  Service
    { _svcAbbrev = "AppStream",
      _svcSigner = v4,
      _svcPrefix = "appstream2",
      _svcVersion = "2016-12-01",
      _svcEndpoint = defaultEndpoint appStream,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "AppStream",
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

-- | The specified resource exists and is not in use, but isn't available.
_ResourceNotAvailableException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotAvailableException =
  _MatchServiceError
    appStream
    "ResourceNotAvailableException"

-- | The image does not support storage connectors.
_IncompatibleImageException :: AsError a => Getting (First ServiceError) a ServiceError
_IncompatibleImageException =
  _MatchServiceError
    appStream
    "IncompatibleImageException"

-- | Indicates an incorrect combination of parameters, or a missing parameter.
_InvalidParameterCombinationException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterCombinationException =
  _MatchServiceError
    appStream
    "InvalidParameterCombinationException"

-- | The specified resource already exists.
_ResourceAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceAlreadyExistsException =
  _MatchServiceError
    appStream
    "ResourceAlreadyExistsException"

-- | The resource cannot be created because your AWS account is suspended. For assistance, contact AWS Support.
_InvalidAccountStatusException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidAccountStatusException =
  _MatchServiceError
    appStream
    "InvalidAccountStatusException"

-- | The attempted operation is not permitted.
_OperationNotPermittedException :: AsError a => Getting (First ServiceError) a ServiceError
_OperationNotPermittedException =
  _MatchServiceError
    appStream
    "OperationNotPermittedException"

-- | An API error occurred. Wait a few minutes and try again.
_ConcurrentModificationException :: AsError a => Getting (First ServiceError) a ServiceError
_ConcurrentModificationException =
  _MatchServiceError
    appStream
    "ConcurrentModificationException"

-- | The specified role is invalid.
_InvalidRoleException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRoleException =
  _MatchServiceError appStream "InvalidRoleException"

-- | The specified resource is in use.
_ResourceInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceInUseException =
  _MatchServiceError
    appStream
    "ResourceInUseException"

-- | The requested limit exceeds the permitted limit for an account.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    appStream
    "LimitExceededException"

-- | The specified resource was not found.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    appStream
    "ResourceNotFoundException"

-- | AppStream 2.0 can’t process the request right now because the Describe calls from your AWS account are being throttled by Amazon EC2. Try again later.
_RequestLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_RequestLimitExceededException =
  _MatchServiceError
    appStream
    "RequestLimitExceededException"
