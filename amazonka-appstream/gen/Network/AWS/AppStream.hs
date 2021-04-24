{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Amazon AppStream 2.0__
--
-- This is the /Amazon AppStream 2.0 API Reference/ . This documentation provides descriptions and syntax for each of the actions and data types in AppStream 2.0. AppStream 2.0 is a fully managed, secure application streaming service that lets you stream desktop applications to users without rewriting applications. AppStream 2.0 manages the AWS resources that are required to host and run your applications, scales automatically, and provides access to your users on demand.
--
-- To learn more about AppStream 2.0, see the following resources:
--
--     * <http://aws.amazon.com/appstream2 Amazon AppStream 2.0 product page>
--
--     * <http://aws.amazon.com/documentation/appstream2 Amazon AppStream 2.0 documentation>
module Network.AWS.AppStream
  ( -- * Service Configuration
    appStream,

    -- * Errors
    -- $errors

    -- ** ResourceNotAvailableException
    _ResourceNotAvailableException,

    -- ** IncompatibleImageException
    _IncompatibleImageException,

    -- ** InvalidParameterCombinationException
    _InvalidParameterCombinationException,

    -- ** ResourceAlreadyExistsException
    _ResourceAlreadyExistsException,

    -- ** InvalidAccountStatusException
    _InvalidAccountStatusException,

    -- ** OperationNotPermittedException
    _OperationNotPermittedException,

    -- ** ConcurrentModificationException
    _ConcurrentModificationException,

    -- ** InvalidRoleException
    _InvalidRoleException,

    -- ** ResourceInUseException
    _ResourceInUseException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** RequestLimitExceededException
    _RequestLimitExceededException,

    -- * Waiters
    -- $waiters

    -- ** FleetStopped
    fleetStopped,

    -- ** FleetStarted
    fleetStarted,

    -- * Operations
    -- $operations

    -- ** DeleteImageBuilder
    module Network.AWS.AppStream.DeleteImageBuilder,

    -- ** ListAssociatedFleets (Paginated)
    module Network.AWS.AppStream.ListAssociatedFleets,

    -- ** BatchAssociateUserStack
    module Network.AWS.AppStream.BatchAssociateUserStack,

    -- ** ListAssociatedStacks (Paginated)
    module Network.AWS.AppStream.ListAssociatedStacks,

    -- ** DeleteUsageReportSubscription
    module Network.AWS.AppStream.DeleteUsageReportSubscription,

    -- ** StopImageBuilder
    module Network.AWS.AppStream.StopImageBuilder,

    -- ** StartFleet
    module Network.AWS.AppStream.StartFleet,

    -- ** StartImageBuilder
    module Network.AWS.AppStream.StartImageBuilder,

    -- ** StopFleet
    module Network.AWS.AppStream.StopFleet,

    -- ** UntagResource
    module Network.AWS.AppStream.UntagResource,

    -- ** EnableUser
    module Network.AWS.AppStream.EnableUser,

    -- ** DescribeSessions (Paginated)
    module Network.AWS.AppStream.DescribeSessions,

    -- ** DescribeFleets (Paginated)
    module Network.AWS.AppStream.DescribeFleets,

    -- ** DescribeStacks (Paginated)
    module Network.AWS.AppStream.DescribeStacks,

    -- ** TagResource
    module Network.AWS.AppStream.TagResource,

    -- ** CreateUser
    module Network.AWS.AppStream.CreateUser,

    -- ** UpdateDirectoryConfig
    module Network.AWS.AppStream.UpdateDirectoryConfig,

    -- ** CreateStack
    module Network.AWS.AppStream.CreateStack,

    -- ** DeleteDirectoryConfig
    module Network.AWS.AppStream.DeleteDirectoryConfig,

    -- ** CopyImage
    module Network.AWS.AppStream.CopyImage,

    -- ** CreateFleet
    module Network.AWS.AppStream.CreateFleet,

    -- ** CreateImageBuilder
    module Network.AWS.AppStream.CreateImageBuilder,

    -- ** AssociateFleet
    module Network.AWS.AppStream.AssociateFleet,

    -- ** CreateDirectoryConfig
    module Network.AWS.AppStream.CreateDirectoryConfig,

    -- ** UpdateFleet
    module Network.AWS.AppStream.UpdateFleet,

    -- ** DeleteStack
    module Network.AWS.AppStream.DeleteStack,

    -- ** DeleteFleet
    module Network.AWS.AppStream.DeleteFleet,

    -- ** DescribeUsers (Paginated)
    module Network.AWS.AppStream.DescribeUsers,

    -- ** UpdateStack
    module Network.AWS.AppStream.UpdateStack,

    -- ** CreateUsageReportSubscription
    module Network.AWS.AppStream.CreateUsageReportSubscription,

    -- ** DisassociateFleet
    module Network.AWS.AppStream.DisassociateFleet,

    -- ** DescribeImages (Paginated)
    module Network.AWS.AppStream.DescribeImages,

    -- ** BatchDisassociateUserStack
    module Network.AWS.AppStream.BatchDisassociateUserStack,

    -- ** DescribeUsageReportSubscriptions
    module Network.AWS.AppStream.DescribeUsageReportSubscriptions,

    -- ** DeleteImage
    module Network.AWS.AppStream.DeleteImage,

    -- ** DeleteImagePermissions
    module Network.AWS.AppStream.DeleteImagePermissions,

    -- ** UpdateImagePermissions
    module Network.AWS.AppStream.UpdateImagePermissions,

    -- ** CreateStreamingURL
    module Network.AWS.AppStream.CreateStreamingURL,

    -- ** DeleteUser
    module Network.AWS.AppStream.DeleteUser,

    -- ** DescribeUserStackAssociations (Paginated)
    module Network.AWS.AppStream.DescribeUserStackAssociations,

    -- ** DescribeImageBuilders (Paginated)
    module Network.AWS.AppStream.DescribeImageBuilders,

    -- ** DescribeDirectoryConfigs (Paginated)
    module Network.AWS.AppStream.DescribeDirectoryConfigs,

    -- ** DisableUser
    module Network.AWS.AppStream.DisableUser,

    -- ** ExpireSession
    module Network.AWS.AppStream.ExpireSession,

    -- ** CreateImageBuilderStreamingURL
    module Network.AWS.AppStream.CreateImageBuilderStreamingURL,

    -- ** ListTagsForResource
    module Network.AWS.AppStream.ListTagsForResource,

    -- ** DescribeImagePermissions
    module Network.AWS.AppStream.DescribeImagePermissions,

    -- * Types

    -- ** AccessEndpointType
    AccessEndpointType (..),

    -- ** Action
    Action (..),

    -- ** AuthenticationType
    AuthenticationType (..),

    -- ** FleetAttribute
    FleetAttribute (..),

    -- ** FleetErrorCode
    FleetErrorCode (..),

    -- ** FleetState
    FleetState (..),

    -- ** FleetType
    FleetType (..),

    -- ** ImageBuilderState
    ImageBuilderState (..),

    -- ** ImageBuilderStateChangeReasonCode
    ImageBuilderStateChangeReasonCode (..),

    -- ** ImageState
    ImageState (..),

    -- ** ImageStateChangeReasonCode
    ImageStateChangeReasonCode (..),

    -- ** MessageAction
    MessageAction (..),

    -- ** Permission
    Permission (..),

    -- ** PlatformType
    PlatformType (..),

    -- ** SessionConnectionState
    SessionConnectionState (..),

    -- ** SessionState
    SessionState (..),

    -- ** StackAttribute
    StackAttribute (..),

    -- ** StackErrorCode
    StackErrorCode (..),

    -- ** StorageConnectorType
    StorageConnectorType (..),

    -- ** StreamView
    StreamView (..),

    -- ** UsageReportExecutionErrorCode
    UsageReportExecutionErrorCode (..),

    -- ** UsageReportSchedule
    UsageReportSchedule (..),

    -- ** UserStackAssociationErrorCode
    UserStackAssociationErrorCode (..),

    -- ** VisibilityType
    VisibilityType (..),

    -- ** AccessEndpoint
    AccessEndpoint,
    accessEndpoint,
    aeVPCeId,
    aeEndpointType,

    -- ** Application
    Application,
    application,
    aIconURL,
    aLaunchPath,
    aEnabled,
    aMetadata,
    aLaunchParameters,
    aName,
    aDisplayName,

    -- ** ApplicationSettings
    ApplicationSettings,
    applicationSettings,
    asSettingsGroup,
    asEnabled,

    -- ** ApplicationSettingsResponse
    ApplicationSettingsResponse,
    applicationSettingsResponse,
    asrEnabled,
    asrSettingsGroup,
    asrS3BucketName,

    -- ** ComputeCapacity
    ComputeCapacity,
    computeCapacity,
    ccDesiredInstances,

    -- ** ComputeCapacityStatus
    ComputeCapacityStatus,
    computeCapacityStatus,
    ccsRunning,
    ccsAvailable,
    ccsInUse,
    ccsDesired,

    -- ** DirectoryConfig
    DirectoryConfig,
    directoryConfig,
    dcServiceAccountCredentials,
    dcCreatedTime,
    dcOrganizationalUnitDistinguishedNames,
    dcDirectoryName,

    -- ** DomainJoinInfo
    DomainJoinInfo,
    domainJoinInfo,
    djiOrganizationalUnitDistinguishedName,
    djiDirectoryName,

    -- ** Fleet
    Fleet,
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

    -- ** FleetError
    FleetError,
    fleetError,
    feErrorMessage,
    feErrorCode,

    -- ** Image
    Image,
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

    -- ** ImageBuilder
    ImageBuilder,
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

    -- ** ImageBuilderStateChangeReason
    ImageBuilderStateChangeReason,
    imageBuilderStateChangeReason,
    ibscrMessage,
    ibscrCode,

    -- ** ImagePermissions
    ImagePermissions,
    imagePermissions,
    ipAllowImageBuilder,
    ipAllowFleet,

    -- ** ImageStateChangeReason
    ImageStateChangeReason,
    imageStateChangeReason,
    iscrMessage,
    iscrCode,

    -- ** LastReportGenerationExecutionError
    LastReportGenerationExecutionError,
    lastReportGenerationExecutionError,
    lrgeeErrorMessage,
    lrgeeErrorCode,

    -- ** NetworkAccessConfiguration
    NetworkAccessConfiguration,
    networkAccessConfiguration,
    nacEniId,
    nacEniPrivateIPAddress,

    -- ** ResourceError
    ResourceError,
    resourceError,
    reErrorTimestamp,
    reErrorMessage,
    reErrorCode,

    -- ** ServiceAccountCredentials
    ServiceAccountCredentials,
    serviceAccountCredentials,
    sacAccountName,
    sacAccountPassword,

    -- ** Session
    Session,
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

    -- ** SharedImagePermissions
    SharedImagePermissions,
    sharedImagePermissions,
    sipSharedAccountId,
    sipImagePermissions,

    -- ** Stack
    Stack,
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

    -- ** StackError
    StackError,
    stackError,
    seErrorMessage,
    seErrorCode,

    -- ** StorageConnector
    StorageConnector,
    storageConnector,
    scDomains,
    scResourceIdentifier,
    scConnectorType,

    -- ** UsageReportSubscription
    UsageReportSubscription,
    usageReportSubscription,
    ursSubscriptionErrors,
    ursLastGeneratedReportDate,
    ursS3BucketName,
    ursSchedule,

    -- ** User
    User,
    user,
    uStatus,
    uARN,
    uEnabled,
    uCreatedTime,
    uUserName,
    uFirstName,
    uLastName,
    uAuthenticationType,

    -- ** UserSetting
    UserSetting,
    userSetting,
    usAction,
    usPermission,

    -- ** UserStackAssociation
    UserStackAssociation,
    userStackAssociation,
    usaSendEmailNotification,
    usaStackName,
    usaUserName,
    usaAuthenticationType,

    -- ** UserStackAssociationError
    UserStackAssociationError,
    userStackAssociationError,
    usaeUserStackAssociation,
    usaeErrorMessage,
    usaeErrorCode,

    -- ** VPCConfig
    VPCConfig,
    vpcConfig,
    vcSecurityGroupIds,
    vcSubnetIds,
  )
where

import Network.AWS.AppStream.AssociateFleet
import Network.AWS.AppStream.BatchAssociateUserStack
import Network.AWS.AppStream.BatchDisassociateUserStack
import Network.AWS.AppStream.CopyImage
import Network.AWS.AppStream.CreateDirectoryConfig
import Network.AWS.AppStream.CreateFleet
import Network.AWS.AppStream.CreateImageBuilder
import Network.AWS.AppStream.CreateImageBuilderStreamingURL
import Network.AWS.AppStream.CreateStack
import Network.AWS.AppStream.CreateStreamingURL
import Network.AWS.AppStream.CreateUsageReportSubscription
import Network.AWS.AppStream.CreateUser
import Network.AWS.AppStream.DeleteDirectoryConfig
import Network.AWS.AppStream.DeleteFleet
import Network.AWS.AppStream.DeleteImage
import Network.AWS.AppStream.DeleteImageBuilder
import Network.AWS.AppStream.DeleteImagePermissions
import Network.AWS.AppStream.DeleteStack
import Network.AWS.AppStream.DeleteUsageReportSubscription
import Network.AWS.AppStream.DeleteUser
import Network.AWS.AppStream.DescribeDirectoryConfigs
import Network.AWS.AppStream.DescribeFleets
import Network.AWS.AppStream.DescribeImageBuilders
import Network.AWS.AppStream.DescribeImagePermissions
import Network.AWS.AppStream.DescribeImages
import Network.AWS.AppStream.DescribeSessions
import Network.AWS.AppStream.DescribeStacks
import Network.AWS.AppStream.DescribeUsageReportSubscriptions
import Network.AWS.AppStream.DescribeUserStackAssociations
import Network.AWS.AppStream.DescribeUsers
import Network.AWS.AppStream.DisableUser
import Network.AWS.AppStream.DisassociateFleet
import Network.AWS.AppStream.EnableUser
import Network.AWS.AppStream.ExpireSession
import Network.AWS.AppStream.ListAssociatedFleets
import Network.AWS.AppStream.ListAssociatedStacks
import Network.AWS.AppStream.ListTagsForResource
import Network.AWS.AppStream.StartFleet
import Network.AWS.AppStream.StartImageBuilder
import Network.AWS.AppStream.StopFleet
import Network.AWS.AppStream.StopImageBuilder
import Network.AWS.AppStream.TagResource
import Network.AWS.AppStream.Types
import Network.AWS.AppStream.UntagResource
import Network.AWS.AppStream.UpdateDirectoryConfig
import Network.AWS.AppStream.UpdateFleet
import Network.AWS.AppStream.UpdateImagePermissions
import Network.AWS.AppStream.UpdateStack
import Network.AWS.AppStream.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'AppStream'.

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
