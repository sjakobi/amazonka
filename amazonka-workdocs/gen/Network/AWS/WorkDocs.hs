{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The WorkDocs API is designed for the following use cases:
--
--
--     * File Migration: File migration applications are supported for users who want to migrate their files from an on-premises or off-premises file system or service. Users can insert files into a user directory structure, as well as allow for basic metadata changes, such as modifications to the permissions of files.
--
--     * Security: Support security applications are supported for users who have additional security needs, such as antivirus or data loss prevention. The API actions, along with AWS CloudTrail, allow these applications to detect when changes occur in Amazon WorkDocs. Then, the application can take the necessary actions and replace the target file. If the target file violates the policy, the application can also choose to email the user.
--
--     * eDiscovery/Analytics: General administrative applications are supported, such as eDiscovery and analytics. These applications can choose to mimic or record the actions in an Amazon WorkDocs site, along with AWS CloudTrail, to replicate data for eDiscovery, backup, or analytical applications.
--
--
--
-- All Amazon WorkDocs API actions are Amazon authenticated and certificate-signed. They not only require the use of the AWS SDK, but also allow for the exclusive use of IAM users and roles to help facilitate access, trust, and permission policies. By creating a role and allowing an IAM user to access the Amazon WorkDocs site, the IAM user gains full administrative visibility into the entire Amazon WorkDocs site (or as set in the IAM policy). This includes, but is not limited to, the ability to modify file permissions and upload any file to any user. This allows developers to perform the three use cases above, as well as give users the ability to grant access on a selective basis using the IAM model.
module Network.AWS.WorkDocs
  ( -- * Service Configuration
    workDocs,

    -- * Errors
    -- $errors

    -- ** IllegalUserStateException
    _IllegalUserStateException,

    -- ** StorageLimitWillExceedException
    _StorageLimitWillExceedException,

    -- ** CustomMetadataLimitExceededException
    _CustomMetadataLimitExceededException,

    -- ** ConflictingOperationException
    _ConflictingOperationException,

    -- ** DeactivatingLastSystemUserException
    _DeactivatingLastSystemUserException,

    -- ** DraftUploadOutOfSyncException
    _DraftUploadOutOfSyncException,

    -- ** DocumentLockedForCommentsException
    _DocumentLockedForCommentsException,

    -- ** EntityNotExistsException
    _EntityNotExistsException,

    -- ** UnauthorizedOperationException
    _UnauthorizedOperationException,

    -- ** InvalidOperationException
    _InvalidOperationException,

    -- ** StorageLimitExceededException
    _StorageLimitExceededException,

    -- ** ServiceUnavailableException
    _ServiceUnavailableException,

    -- ** UnauthorizedResourceAccessException
    _UnauthorizedResourceAccessException,

    -- ** RequestedEntityTooLargeException
    _RequestedEntityTooLargeException,

    -- ** ProhibitedStateException
    _ProhibitedStateException,

    -- ** EntityAlreadyExistsException
    _EntityAlreadyExistsException,

    -- ** ConcurrentModificationException
    _ConcurrentModificationException,

    -- ** ResourceAlreadyCheckedOutException
    _ResourceAlreadyCheckedOutException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** InvalidPasswordException
    _InvalidPasswordException,

    -- ** FailedDependencyException
    _FailedDependencyException,

    -- ** InvalidCommentOperationException
    _InvalidCommentOperationException,

    -- ** TooManySubscriptionsException
    _TooManySubscriptionsException,

    -- ** TooManyLabelsException
    _TooManyLabelsException,

    -- ** InvalidArgumentException
    _InvalidArgumentException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DeleteFolder
    module Network.AWS.WorkDocs.DeleteFolder,

    -- ** UpdateFolder
    module Network.AWS.WorkDocs.UpdateFolder,

    -- ** DeleteCustomMetadata
    module Network.AWS.WorkDocs.DeleteCustomMetadata,

    -- ** DeleteNotificationSubscription
    module Network.AWS.WorkDocs.DeleteNotificationSubscription,

    -- ** UpdateDocumentVersion
    module Network.AWS.WorkDocs.UpdateDocumentVersion,

    -- ** DeleteLabels
    module Network.AWS.WorkDocs.DeleteLabels,

    -- ** AbortDocumentVersionUpload
    module Network.AWS.WorkDocs.AbortDocumentVersionUpload,

    -- ** DescribeFolderContents (Paginated)
    module Network.AWS.WorkDocs.DescribeFolderContents,

    -- ** CreateLabels
    module Network.AWS.WorkDocs.CreateLabels,

    -- ** DeactivateUser
    module Network.AWS.WorkDocs.DeactivateUser,

    -- ** DescribeRootFolders (Paginated)
    module Network.AWS.WorkDocs.DescribeRootFolders,

    -- ** UpdateDocument
    module Network.AWS.WorkDocs.UpdateDocument,

    -- ** DeleteDocument
    module Network.AWS.WorkDocs.DeleteDocument,

    -- ** GetDocumentVersion
    module Network.AWS.WorkDocs.GetDocumentVersion,

    -- ** DescribeDocumentVersions (Paginated)
    module Network.AWS.WorkDocs.DescribeDocumentVersions,

    -- ** ActivateUser
    module Network.AWS.WorkDocs.ActivateUser,

    -- ** GetFolderPath
    module Network.AWS.WorkDocs.GetFolderPath,

    -- ** CreateUser
    module Network.AWS.WorkDocs.CreateUser,

    -- ** CreateCustomMetadata
    module Network.AWS.WorkDocs.CreateCustomMetadata,

    -- ** DeleteComment
    module Network.AWS.WorkDocs.DeleteComment,

    -- ** CreateFolder
    module Network.AWS.WorkDocs.CreateFolder,

    -- ** CreateNotificationSubscription
    module Network.AWS.WorkDocs.CreateNotificationSubscription,

    -- ** CreateComment
    module Network.AWS.WorkDocs.CreateComment,

    -- ** DescribeResourcePermissions (Paginated)
    module Network.AWS.WorkDocs.DescribeResourcePermissions,

    -- ** RemoveResourcePermission
    module Network.AWS.WorkDocs.RemoveResourcePermission,

    -- ** DescribeUsers (Paginated)
    module Network.AWS.WorkDocs.DescribeUsers,

    -- ** GetResources
    module Network.AWS.WorkDocs.GetResources,

    -- ** GetDocumentPath
    module Network.AWS.WorkDocs.GetDocumentPath,

    -- ** DescribeGroups (Paginated)
    module Network.AWS.WorkDocs.DescribeGroups,

    -- ** GetDocument
    module Network.AWS.WorkDocs.GetDocument,

    -- ** DescribeActivities (Paginated)
    module Network.AWS.WorkDocs.DescribeActivities,

    -- ** GetCurrentUser
    module Network.AWS.WorkDocs.GetCurrentUser,

    -- ** AddResourcePermissions
    module Network.AWS.WorkDocs.AddResourcePermissions,

    -- ** DeleteUser
    module Network.AWS.WorkDocs.DeleteUser,

    -- ** GetFolder
    module Network.AWS.WorkDocs.GetFolder,

    -- ** UpdateUser
    module Network.AWS.WorkDocs.UpdateUser,

    -- ** DescribeNotificationSubscriptions (Paginated)
    module Network.AWS.WorkDocs.DescribeNotificationSubscriptions,

    -- ** RemoveAllResourcePermissions
    module Network.AWS.WorkDocs.RemoveAllResourcePermissions,

    -- ** DeleteFolderContents
    module Network.AWS.WorkDocs.DeleteFolderContents,

    -- ** DescribeComments (Paginated)
    module Network.AWS.WorkDocs.DescribeComments,

    -- ** InitiateDocumentVersionUpload
    module Network.AWS.WorkDocs.InitiateDocumentVersionUpload,

    -- * Types

    -- ** ActivityType
    ActivityType (..),

    -- ** BooleanEnumType
    BooleanEnumType (..),

    -- ** CommentStatusType
    CommentStatusType (..),

    -- ** CommentVisibilityType
    CommentVisibilityType (..),

    -- ** DocumentSourceType
    DocumentSourceType (..),

    -- ** DocumentStatusType
    DocumentStatusType (..),

    -- ** DocumentThumbnailType
    DocumentThumbnailType (..),

    -- ** DocumentVersionStatus
    DocumentVersionStatus (..),

    -- ** FolderContentType
    FolderContentType (..),

    -- ** LocaleType
    LocaleType (..),

    -- ** OrderType
    OrderType (..),

    -- ** PrincipalType
    PrincipalType (..),

    -- ** ResourceCollectionType
    ResourceCollectionType (..),

    -- ** ResourceSortType
    ResourceSortType (..),

    -- ** ResourceStateType
    ResourceStateType (..),

    -- ** ResourceType
    ResourceType (..),

    -- ** RolePermissionType
    RolePermissionType (..),

    -- ** RoleType
    RoleType (..),

    -- ** ShareStatusType
    ShareStatusType (..),

    -- ** StorageType
    StorageType (..),

    -- ** SubscriptionProtocolType
    SubscriptionProtocolType (..),

    -- ** SubscriptionType
    SubscriptionType (..),

    -- ** UserFilterType
    UserFilterType (..),

    -- ** UserSortType
    UserSortType (..),

    -- ** UserStatusType
    UserStatusType (..),

    -- ** UserType
    UserType (..),

    -- ** Activity
    Activity,
    activity,
    aResourceMetadata,
    aOrganizationId,
    aOriginalParent,
    aParticipants,
    aCommentMetadata,
    aTimeStamp,
    aInitiator,
    aType,
    aIsIndirectActivity,

    -- ** Comment
    Comment,
    comment,
    cStatus,
    cCreatedTimestamp,
    cContributor,
    cParentId,
    cRecipientId,
    cVisibility,
    cThreadId,
    cText,
    cCommentId,

    -- ** CommentMetadata
    CommentMetadata,
    commentMetadata,
    cmCommentStatus,
    cmCreatedTimestamp,
    cmContributor,
    cmRecipientId,
    cmCommentId,

    -- ** DocumentMetadata
    DocumentMetadata,
    documentMetadata,
    dmModifiedTimestamp,
    dmParentFolderId,
    dmCreatorId,
    dmCreatedTimestamp,
    dmId,
    dmLabels,
    dmLatestVersionMetadata,
    dmResourceState,

    -- ** DocumentVersionMetadata
    DocumentVersionMetadata,
    documentVersionMetadata,
    dvmModifiedTimestamp,
    dvmStatus,
    dvmCreatorId,
    dvmContentType,
    dvmCreatedTimestamp,
    dvmContentModifiedTimestamp,
    dvmId,
    dvmSource,
    dvmContentCreatedTimestamp,
    dvmName,
    dvmSignature,
    dvmThumbnail,
    dvmSize,

    -- ** FolderMetadata
    FolderMetadata,
    folderMetadata,
    fmModifiedTimestamp,
    fmParentFolderId,
    fmLatestVersionSize,
    fmCreatorId,
    fmCreatedTimestamp,
    fmId,
    fmLabels,
    fmName,
    fmSignature,
    fmResourceState,
    fmSize,

    -- ** GroupMetadata
    GroupMetadata,
    groupMetadata,
    gmId,
    gmName,

    -- ** NotificationOptions
    NotificationOptions,
    notificationOptions,
    noSendEmail,
    noEmailMessage,

    -- ** Participants
    Participants,
    participants,
    pGroups,
    pUsers,

    -- ** PermissionInfo
    PermissionInfo,
    permissionInfo,
    piRole,
    piType,

    -- ** Principal
    Principal,
    principal,
    pId,
    pRoles,
    pType,

    -- ** ResourceMetadata
    ResourceMetadata,
    resourceMetadata,
    rmOriginalName,
    rmId,
    rmVersionId,
    rmName,
    rmParentId,
    rmOwner,
    rmType,

    -- ** ResourcePath
    ResourcePath,
    resourcePath,
    rpComponents,

    -- ** ResourcePathComponent
    ResourcePathComponent,
    resourcePathComponent,
    rpcId,
    rpcName,

    -- ** SharePrincipal
    SharePrincipal,
    sharePrincipal,
    spId,
    spType,
    spRole,

    -- ** ShareResult
    ShareResult,
    shareResult,
    srStatusMessage,
    srStatus,
    srInviteePrincipalId,
    srShareId,
    srPrincipalId,
    srRole,

    -- ** StorageRuleType
    StorageRuleType,
    storageRuleType,
    srtStorageType,
    srtStorageAllocatedInBytes,

    -- ** Subscription
    Subscription,
    subscription,
    sSubscriptionId,
    sProtocol,
    sEndPoint,

    -- ** UploadMetadata
    UploadMetadata,
    uploadMetadata,
    umSignedHeaders,
    umUploadURL,

    -- ** User
    User,
    user,
    uModifiedTimestamp,
    uStatus,
    uOrganizationId,
    uCreatedTimestamp,
    uTimeZoneId,
    uSurname,
    uLocale,
    uId,
    uRootFolderId,
    uGivenName,
    uRecycleBinFolderId,
    uStorage,
    uUsername,
    uType,
    uEmailAddress,

    -- ** UserMetadata
    UserMetadata,
    userMetadata,
    umSurname,
    umId,
    umGivenName,
    umUsername,
    umEmailAddress,

    -- ** UserStorageMetadata
    UserStorageMetadata,
    userStorageMetadata,
    usmStorageRule,
    usmStorageUtilizedInBytes,
  )
where

import Network.AWS.WorkDocs.AbortDocumentVersionUpload
import Network.AWS.WorkDocs.ActivateUser
import Network.AWS.WorkDocs.AddResourcePermissions
import Network.AWS.WorkDocs.CreateComment
import Network.AWS.WorkDocs.CreateCustomMetadata
import Network.AWS.WorkDocs.CreateFolder
import Network.AWS.WorkDocs.CreateLabels
import Network.AWS.WorkDocs.CreateNotificationSubscription
import Network.AWS.WorkDocs.CreateUser
import Network.AWS.WorkDocs.DeactivateUser
import Network.AWS.WorkDocs.DeleteComment
import Network.AWS.WorkDocs.DeleteCustomMetadata
import Network.AWS.WorkDocs.DeleteDocument
import Network.AWS.WorkDocs.DeleteFolder
import Network.AWS.WorkDocs.DeleteFolderContents
import Network.AWS.WorkDocs.DeleteLabels
import Network.AWS.WorkDocs.DeleteNotificationSubscription
import Network.AWS.WorkDocs.DeleteUser
import Network.AWS.WorkDocs.DescribeActivities
import Network.AWS.WorkDocs.DescribeComments
import Network.AWS.WorkDocs.DescribeDocumentVersions
import Network.AWS.WorkDocs.DescribeFolderContents
import Network.AWS.WorkDocs.DescribeGroups
import Network.AWS.WorkDocs.DescribeNotificationSubscriptions
import Network.AWS.WorkDocs.DescribeResourcePermissions
import Network.AWS.WorkDocs.DescribeRootFolders
import Network.AWS.WorkDocs.DescribeUsers
import Network.AWS.WorkDocs.GetCurrentUser
import Network.AWS.WorkDocs.GetDocument
import Network.AWS.WorkDocs.GetDocumentPath
import Network.AWS.WorkDocs.GetDocumentVersion
import Network.AWS.WorkDocs.GetFolder
import Network.AWS.WorkDocs.GetFolderPath
import Network.AWS.WorkDocs.GetResources
import Network.AWS.WorkDocs.InitiateDocumentVersionUpload
import Network.AWS.WorkDocs.RemoveAllResourcePermissions
import Network.AWS.WorkDocs.RemoveResourcePermission
import Network.AWS.WorkDocs.Types
import Network.AWS.WorkDocs.UpdateDocument
import Network.AWS.WorkDocs.UpdateDocumentVersion
import Network.AWS.WorkDocs.UpdateFolder
import Network.AWS.WorkDocs.UpdateUser
import Network.AWS.WorkDocs.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'WorkDocs'.

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
