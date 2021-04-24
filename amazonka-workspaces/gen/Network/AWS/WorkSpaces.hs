{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Amazon WorkSpaces Service__
--
-- Amazon WorkSpaces enables you to provision virtual, cloud-based Microsoft Windows and Amazon Linux desktops for your users.
module Network.AWS.WorkSpaces
  ( -- * Service Configuration
    workSpaces,

    -- * Errors
    -- $errors

    -- ** ResourceUnavailableException
    _ResourceUnavailableException,

    -- ** UnsupportedNetworkConfigurationException
    _UnsupportedNetworkConfigurationException,

    -- ** OperationNotSupportedException
    _OperationNotSupportedException,

    -- ** ResourceAlreadyExistsException
    _ResourceAlreadyExistsException,

    -- ** ResourceLimitExceededException
    _ResourceLimitExceededException,

    -- ** OperationInProgressException
    _OperationInProgressException,

    -- ** WorkspacesDefaultRoleNotFoundException
    _WorkspacesDefaultRoleNotFoundException,

    -- ** ResourceAssociatedException
    _ResourceAssociatedException,

    -- ** InvalidParameterValuesException
    _InvalidParameterValuesException,

    -- ** ResourceCreationFailedException
    _ResourceCreationFailedException,

    -- ** UnsupportedWorkspaceConfigurationException
    _UnsupportedWorkspaceConfigurationException,

    -- ** AccessDeniedException
    _AccessDeniedException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** InvalidResourceStateException
    _InvalidResourceStateException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DescribeWorkspaceDirectories (Paginated)
    module Network.AWS.WorkSpaces.DescribeWorkspaceDirectories,

    -- ** TerminateWorkspaces
    module Network.AWS.WorkSpaces.TerminateWorkspaces,

    -- ** DisassociateIPGroups
    module Network.AWS.WorkSpaces.DisassociateIPGroups,

    -- ** DescribeWorkspaceBundles (Paginated)
    module Network.AWS.WorkSpaces.DescribeWorkspaceBundles,

    -- ** AuthorizeIPRules
    module Network.AWS.WorkSpaces.AuthorizeIPRules,

    -- ** ImportWorkspaceImage
    module Network.AWS.WorkSpaces.ImportWorkspaceImage,

    -- ** DeleteIPGroup
    module Network.AWS.WorkSpaces.DeleteIPGroup,

    -- ** DeregisterWorkspaceDirectory
    module Network.AWS.WorkSpaces.DeregisterWorkspaceDirectory,

    -- ** AssociateConnectionAlias
    module Network.AWS.WorkSpaces.AssociateConnectionAlias,

    -- ** DescribeTags
    module Network.AWS.WorkSpaces.DescribeTags,

    -- ** CreateConnectionAlias
    module Network.AWS.WorkSpaces.CreateConnectionAlias,

    -- ** MigrateWorkspace
    module Network.AWS.WorkSpaces.MigrateWorkspace,

    -- ** ModifyAccount
    module Network.AWS.WorkSpaces.ModifyAccount,

    -- ** DescribeWorkspacesConnectionStatus (Paginated)
    module Network.AWS.WorkSpaces.DescribeWorkspacesConnectionStatus,

    -- ** ModifySelfservicePermissions
    module Network.AWS.WorkSpaces.ModifySelfservicePermissions,

    -- ** UpdateRulesOfIPGroup
    module Network.AWS.WorkSpaces.UpdateRulesOfIPGroup,

    -- ** DescribeConnectionAliases
    module Network.AWS.WorkSpaces.DescribeConnectionAliases,

    -- ** DeleteWorkspaceImage
    module Network.AWS.WorkSpaces.DeleteWorkspaceImage,

    -- ** DeleteTags
    module Network.AWS.WorkSpaces.DeleteTags,

    -- ** ListAvailableManagementCidrRanges (Paginated)
    module Network.AWS.WorkSpaces.ListAvailableManagementCidrRanges,

    -- ** ModifyWorkspaceCreationProperties
    module Network.AWS.WorkSpaces.ModifyWorkspaceCreationProperties,

    -- ** DescribeClientProperties
    module Network.AWS.WorkSpaces.DescribeClientProperties,

    -- ** ModifyWorkspaceState
    module Network.AWS.WorkSpaces.ModifyWorkspaceState,

    -- ** UpdateConnectionAliasPermission
    module Network.AWS.WorkSpaces.UpdateConnectionAliasPermission,

    -- ** CopyWorkspaceImage
    module Network.AWS.WorkSpaces.CopyWorkspaceImage,

    -- ** DescribeWorkspaceImagePermissions
    module Network.AWS.WorkSpaces.DescribeWorkspaceImagePermissions,

    -- ** RebuildWorkspaces
    module Network.AWS.WorkSpaces.RebuildWorkspaces,

    -- ** RebootWorkspaces
    module Network.AWS.WorkSpaces.RebootWorkspaces,

    -- ** DescribeWorkspaceSnapshots
    module Network.AWS.WorkSpaces.DescribeWorkspaceSnapshots,

    -- ** DescribeAccount
    module Network.AWS.WorkSpaces.DescribeAccount,

    -- ** ModifyWorkspaceProperties
    module Network.AWS.WorkSpaces.ModifyWorkspaceProperties,

    -- ** RevokeIPRules
    module Network.AWS.WorkSpaces.RevokeIPRules,

    -- ** DescribeWorkspaceImages (Paginated)
    module Network.AWS.WorkSpaces.DescribeWorkspaceImages,

    -- ** DescribeAccountModifications (Paginated)
    module Network.AWS.WorkSpaces.DescribeAccountModifications,

    -- ** DeleteConnectionAlias
    module Network.AWS.WorkSpaces.DeleteConnectionAlias,

    -- ** AssociateIPGroups
    module Network.AWS.WorkSpaces.AssociateIPGroups,

    -- ** StopWorkspaces
    module Network.AWS.WorkSpaces.StopWorkspaces,

    -- ** StartWorkspaces
    module Network.AWS.WorkSpaces.StartWorkspaces,

    -- ** DescribeWorkspaces (Paginated)
    module Network.AWS.WorkSpaces.DescribeWorkspaces,

    -- ** UpdateWorkspaceImagePermission
    module Network.AWS.WorkSpaces.UpdateWorkspaceImagePermission,

    -- ** ModifyClientProperties
    module Network.AWS.WorkSpaces.ModifyClientProperties,

    -- ** ModifyWorkspaceAccessProperties
    module Network.AWS.WorkSpaces.ModifyWorkspaceAccessProperties,

    -- ** DescribeIPGroups (Paginated)
    module Network.AWS.WorkSpaces.DescribeIPGroups,

    -- ** RestoreWorkspace
    module Network.AWS.WorkSpaces.RestoreWorkspace,

    -- ** CreateTags
    module Network.AWS.WorkSpaces.CreateTags,

    -- ** DescribeConnectionAliasPermissions
    module Network.AWS.WorkSpaces.DescribeConnectionAliasPermissions,

    -- ** RegisterWorkspaceDirectory
    module Network.AWS.WorkSpaces.RegisterWorkspaceDirectory,

    -- ** CreateWorkspaces
    module Network.AWS.WorkSpaces.CreateWorkspaces,

    -- ** CreateIPGroup
    module Network.AWS.WorkSpaces.CreateIPGroup,

    -- ** DisassociateConnectionAlias
    module Network.AWS.WorkSpaces.DisassociateConnectionAlias,

    -- * Types

    -- ** AccessPropertyValue
    AccessPropertyValue (..),

    -- ** Application
    Application (..),

    -- ** AssociationStatus
    AssociationStatus (..),

    -- ** Compute
    Compute (..),

    -- ** ConnectionAliasState
    ConnectionAliasState (..),

    -- ** ConnectionState
    ConnectionState (..),

    -- ** DedicatedTenancyModificationStateEnum
    DedicatedTenancyModificationStateEnum (..),

    -- ** DedicatedTenancySupportEnum
    DedicatedTenancySupportEnum (..),

    -- ** DedicatedTenancySupportResultEnum
    DedicatedTenancySupportResultEnum (..),

    -- ** ImageType
    ImageType (..),

    -- ** ModificationResourceEnum
    ModificationResourceEnum (..),

    -- ** ModificationStateEnum
    ModificationStateEnum (..),

    -- ** OperatingSystemType
    OperatingSystemType (..),

    -- ** ReconnectEnum
    ReconnectEnum (..),

    -- ** RunningMode
    RunningMode (..),

    -- ** TargetWorkspaceState
    TargetWorkspaceState (..),

    -- ** Tenancy
    Tenancy (..),

    -- ** WorkspaceDirectoryState
    WorkspaceDirectoryState (..),

    -- ** WorkspaceDirectoryType
    WorkspaceDirectoryType (..),

    -- ** WorkspaceImageIngestionProcess
    WorkspaceImageIngestionProcess (..),

    -- ** WorkspaceImageRequiredTenancy
    WorkspaceImageRequiredTenancy (..),

    -- ** WorkspaceImageState
    WorkspaceImageState (..),

    -- ** WorkspaceState
    WorkspaceState (..),

    -- ** AccountModification
    AccountModification,
    accountModification,
    amDedicatedTenancySupport,
    amStartTime,
    amDedicatedTenancyManagementCidrRange,
    amModificationState,
    amErrorMessage,
    amErrorCode,

    -- ** ClientProperties
    ClientProperties,
    clientProperties,
    cpReconnectEnabled,

    -- ** ClientPropertiesResult
    ClientPropertiesResult,
    clientPropertiesResult,
    cprResourceId,
    cprClientProperties,

    -- ** ComputeType
    ComputeType,
    computeType,
    ctName,

    -- ** ConnectionAlias
    ConnectionAlias,
    connectionAlias,
    caState,
    caAliasId,
    caConnectionString,
    caOwnerAccountId,
    caAssociations,

    -- ** ConnectionAliasAssociation
    ConnectionAliasAssociation,
    connectionAliasAssociation,
    caaResourceId,
    caaConnectionIdentifier,
    caaAssociatedAccountId,
    caaAssociationStatus,

    -- ** ConnectionAliasPermission
    ConnectionAliasPermission,
    connectionAliasPermission,
    capSharedAccountId,
    capAllowAssociation,

    -- ** DefaultWorkspaceCreationProperties
    DefaultWorkspaceCreationProperties,
    defaultWorkspaceCreationProperties,
    dwcpEnableMaintenanceMode,
    dwcpDefaultOu,
    dwcpEnableInternetAccess,
    dwcpEnableWorkDocs,
    dwcpCustomSecurityGroupId,
    dwcpUserEnabledAsLocalAdministrator,

    -- ** FailedCreateWorkspaceRequest
    FailedCreateWorkspaceRequest,
    failedCreateWorkspaceRequest,
    fcwrWorkspaceRequest,
    fcwrErrorMessage,
    fcwrErrorCode,

    -- ** FailedWorkspaceChangeRequest
    FailedWorkspaceChangeRequest,
    failedWorkspaceChangeRequest,
    fwcrWorkspaceId,
    fwcrErrorMessage,
    fwcrErrorCode,

    -- ** IPRuleItem
    IPRuleItem,
    ipRuleItem,
    iriRuleDesc,
    iriIpRule,

    -- ** ImagePermission
    ImagePermission,
    imagePermission,
    ipSharedAccountId,

    -- ** ModificationState
    ModificationState,
    modificationState,
    msState,
    msResource,

    -- ** OperatingSystem
    OperatingSystem,
    operatingSystem,
    osType,

    -- ** RebootRequest
    RebootRequest,
    rebootRequest,
    rWorkspaceId,

    -- ** RebuildRequest
    RebuildRequest,
    rebuildRequest,
    rrWorkspaceId,

    -- ** RootStorage
    RootStorage,
    rootStorage,
    rsCapacity,

    -- ** SelfservicePermissions
    SelfservicePermissions,
    selfservicePermissions,
    spSwitchRunningMode,
    spRestartWorkspace,
    spRebuildWorkspace,
    spIncreaseVolumeSize,
    spChangeComputeType,

    -- ** Snapshot
    Snapshot,
    snapshot,
    sSnapshotTime,

    -- ** StartRequest
    StartRequest,
    startRequest,
    sWorkspaceId,

    -- ** StopRequest
    StopRequest,
    stopRequest,
    srWorkspaceId,

    -- ** Tag
    Tag,
    tag,
    tagValue,
    tagKey,

    -- ** TerminateRequest
    TerminateRequest,
    terminateRequest,
    trWorkspaceId,

    -- ** UserStorage
    UserStorage,
    userStorage,
    usCapacity,

    -- ** Workspace
    Workspace,
    workspace,
    wWorkspaceProperties,
    wRootVolumeEncryptionEnabled,
    wBundleId,
    wUserVolumeEncryptionEnabled,
    wVolumeEncryptionKey,
    wWorkspaceId,
    wModificationStates,
    wIPAddress,
    wState,
    wDirectoryId,
    wUserName,
    wSubnetId,
    wErrorMessage,
    wComputerName,
    wErrorCode,

    -- ** WorkspaceAccessProperties
    WorkspaceAccessProperties,
    workspaceAccessProperties,
    wapDeviceTypeOSx,
    wapDeviceTypeWindows,
    wapDeviceTypeAndroid,
    wapDeviceTypeZeroClient,
    wapDeviceTypeWeb,
    wapDeviceTypeIos,
    wapDeviceTypeChromeOS,

    -- ** WorkspaceBundle
    WorkspaceBundle,
    workspaceBundle,
    wbRootStorage,
    wbBundleId,
    wbUserStorage,
    wbImageId,
    wbName,
    wbOwner,
    wbDescription,
    wbComputeType,
    wbLastUpdatedTime,

    -- ** WorkspaceConnectionStatus
    WorkspaceConnectionStatus,
    workspaceConnectionStatus,
    wcsConnectionState,
    wcsWorkspaceId,
    wcsLastKnownUserConnectionTimestamp,
    wcsConnectionStateCheckTimestamp,

    -- ** WorkspaceCreationProperties
    WorkspaceCreationProperties,
    workspaceCreationProperties,
    wcpEnableMaintenanceMode,
    wcpDefaultOu,
    wcpEnableInternetAccess,
    wcpEnableWorkDocs,
    wcpCustomSecurityGroupId,
    wcpUserEnabledAsLocalAdministrator,

    -- ** WorkspaceDirectory
    WorkspaceDirectory,
    workspaceDirectory,
    wdRegistrationCode,
    wdWorkspaceSecurityGroupId,
    wdAlias,
    wdIpGroupIds,
    wdWorkspaceAccessProperties,
    wdSubnetIds,
    wdTenancy,
    wdCustomerUserName,
    wdState,
    wdIAMRoleId,
    wdDirectoryId,
    wdSelfservicePermissions,
    wdDirectoryType,
    wdDirectoryName,
    wdDNSIPAddresses,
    wdWorkspaceCreationProperties,

    -- ** WorkspaceImage
    WorkspaceImage,
    workspaceImage,
    wiImageId,
    wiState,
    wiName,
    wiDescription,
    wiErrorMessage,
    wiRequiredTenancy,
    wiOperatingSystem,
    wiCreated,
    wiOwnerAccountId,
    wiErrorCode,

    -- ** WorkspaceProperties
    WorkspaceProperties,
    workspaceProperties,
    wpRootVolumeSizeGib,
    wpRunningMode,
    wpUserVolumeSizeGib,
    wpRunningModeAutoStopTimeoutInMinutes,
    wpComputeTypeName,

    -- ** WorkspaceRequest
    WorkspaceRequest,
    workspaceRequest,
    wrWorkspaceProperties,
    wrRootVolumeEncryptionEnabled,
    wrUserVolumeEncryptionEnabled,
    wrVolumeEncryptionKey,
    wrTags,
    wrDirectoryId,
    wrUserName,
    wrBundleId,

    -- ** WorkspacesIPGroup
    WorkspacesIPGroup,
    workspacesIPGroup,
    wigUserRules,
    wigGroupDesc,
    wigGroupName,
    wigGroupId,
  )
where

import Network.AWS.WorkSpaces.AssociateConnectionAlias
import Network.AWS.WorkSpaces.AssociateIPGroups
import Network.AWS.WorkSpaces.AuthorizeIPRules
import Network.AWS.WorkSpaces.CopyWorkspaceImage
import Network.AWS.WorkSpaces.CreateConnectionAlias
import Network.AWS.WorkSpaces.CreateIPGroup
import Network.AWS.WorkSpaces.CreateTags
import Network.AWS.WorkSpaces.CreateWorkspaces
import Network.AWS.WorkSpaces.DeleteConnectionAlias
import Network.AWS.WorkSpaces.DeleteIPGroup
import Network.AWS.WorkSpaces.DeleteTags
import Network.AWS.WorkSpaces.DeleteWorkspaceImage
import Network.AWS.WorkSpaces.DeregisterWorkspaceDirectory
import Network.AWS.WorkSpaces.DescribeAccount
import Network.AWS.WorkSpaces.DescribeAccountModifications
import Network.AWS.WorkSpaces.DescribeClientProperties
import Network.AWS.WorkSpaces.DescribeConnectionAliasPermissions
import Network.AWS.WorkSpaces.DescribeConnectionAliases
import Network.AWS.WorkSpaces.DescribeIPGroups
import Network.AWS.WorkSpaces.DescribeTags
import Network.AWS.WorkSpaces.DescribeWorkspaceBundles
import Network.AWS.WorkSpaces.DescribeWorkspaceDirectories
import Network.AWS.WorkSpaces.DescribeWorkspaceImagePermissions
import Network.AWS.WorkSpaces.DescribeWorkspaceImages
import Network.AWS.WorkSpaces.DescribeWorkspaceSnapshots
import Network.AWS.WorkSpaces.DescribeWorkspaces
import Network.AWS.WorkSpaces.DescribeWorkspacesConnectionStatus
import Network.AWS.WorkSpaces.DisassociateConnectionAlias
import Network.AWS.WorkSpaces.DisassociateIPGroups
import Network.AWS.WorkSpaces.ImportWorkspaceImage
import Network.AWS.WorkSpaces.ListAvailableManagementCidrRanges
import Network.AWS.WorkSpaces.MigrateWorkspace
import Network.AWS.WorkSpaces.ModifyAccount
import Network.AWS.WorkSpaces.ModifyClientProperties
import Network.AWS.WorkSpaces.ModifySelfservicePermissions
import Network.AWS.WorkSpaces.ModifyWorkspaceAccessProperties
import Network.AWS.WorkSpaces.ModifyWorkspaceCreationProperties
import Network.AWS.WorkSpaces.ModifyWorkspaceProperties
import Network.AWS.WorkSpaces.ModifyWorkspaceState
import Network.AWS.WorkSpaces.RebootWorkspaces
import Network.AWS.WorkSpaces.RebuildWorkspaces
import Network.AWS.WorkSpaces.RegisterWorkspaceDirectory
import Network.AWS.WorkSpaces.RestoreWorkspace
import Network.AWS.WorkSpaces.RevokeIPRules
import Network.AWS.WorkSpaces.StartWorkspaces
import Network.AWS.WorkSpaces.StopWorkspaces
import Network.AWS.WorkSpaces.TerminateWorkspaces
import Network.AWS.WorkSpaces.Types
import Network.AWS.WorkSpaces.UpdateConnectionAliasPermission
import Network.AWS.WorkSpaces.UpdateRulesOfIPGroup
import Network.AWS.WorkSpaces.UpdateWorkspaceImagePermission
import Network.AWS.WorkSpaces.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'WorkSpaces'.

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
