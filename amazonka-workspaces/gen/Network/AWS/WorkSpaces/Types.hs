{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types
  ( -- * Service Configuration
    workSpaces,

    -- * Errors
    _ResourceUnavailableException,
    _UnsupportedNetworkConfigurationException,
    _OperationNotSupportedException,
    _ResourceAlreadyExistsException,
    _ResourceLimitExceededException,
    _OperationInProgressException,
    _WorkspacesDefaultRoleNotFoundException,
    _ResourceAssociatedException,
    _InvalidParameterValuesException,
    _ResourceCreationFailedException,
    _UnsupportedWorkspaceConfigurationException,
    _AccessDeniedException,
    _ResourceNotFoundException,
    _InvalidResourceStateException,

    -- * AccessPropertyValue
    AccessPropertyValue (..),

    -- * Application
    Application (..),

    -- * AssociationStatus
    AssociationStatus (..),

    -- * Compute
    Compute (..),

    -- * ConnectionAliasState
    ConnectionAliasState (..),

    -- * ConnectionState
    ConnectionState (..),

    -- * DedicatedTenancyModificationStateEnum
    DedicatedTenancyModificationStateEnum (..),

    -- * DedicatedTenancySupportEnum
    DedicatedTenancySupportEnum (..),

    -- * DedicatedTenancySupportResultEnum
    DedicatedTenancySupportResultEnum (..),

    -- * ImageType
    ImageType (..),

    -- * ModificationResourceEnum
    ModificationResourceEnum (..),

    -- * ModificationStateEnum
    ModificationStateEnum (..),

    -- * OperatingSystemType
    OperatingSystemType (..),

    -- * ReconnectEnum
    ReconnectEnum (..),

    -- * RunningMode
    RunningMode (..),

    -- * TargetWorkspaceState
    TargetWorkspaceState (..),

    -- * Tenancy
    Tenancy (..),

    -- * WorkspaceDirectoryState
    WorkspaceDirectoryState (..),

    -- * WorkspaceDirectoryType
    WorkspaceDirectoryType (..),

    -- * WorkspaceImageIngestionProcess
    WorkspaceImageIngestionProcess (..),

    -- * WorkspaceImageRequiredTenancy
    WorkspaceImageRequiredTenancy (..),

    -- * WorkspaceImageState
    WorkspaceImageState (..),

    -- * WorkspaceState
    WorkspaceState (..),

    -- * AccountModification
    AccountModification (..),
    accountModification,
    amDedicatedTenancySupport,
    amStartTime,
    amDedicatedTenancyManagementCidrRange,
    amModificationState,
    amErrorMessage,
    amErrorCode,

    -- * ClientProperties
    ClientProperties (..),
    clientProperties,
    cpReconnectEnabled,

    -- * ClientPropertiesResult
    ClientPropertiesResult (..),
    clientPropertiesResult,
    cprResourceId,
    cprClientProperties,

    -- * ComputeType
    ComputeType (..),
    computeType,
    ctName,

    -- * ConnectionAlias
    ConnectionAlias (..),
    connectionAlias,
    caState,
    caAliasId,
    caConnectionString,
    caOwnerAccountId,
    caAssociations,

    -- * ConnectionAliasAssociation
    ConnectionAliasAssociation (..),
    connectionAliasAssociation,
    caaResourceId,
    caaConnectionIdentifier,
    caaAssociatedAccountId,
    caaAssociationStatus,

    -- * ConnectionAliasPermission
    ConnectionAliasPermission (..),
    connectionAliasPermission,
    capSharedAccountId,
    capAllowAssociation,

    -- * DefaultWorkspaceCreationProperties
    DefaultWorkspaceCreationProperties (..),
    defaultWorkspaceCreationProperties,
    dwcpEnableMaintenanceMode,
    dwcpDefaultOu,
    dwcpEnableInternetAccess,
    dwcpEnableWorkDocs,
    dwcpCustomSecurityGroupId,
    dwcpUserEnabledAsLocalAdministrator,

    -- * FailedCreateWorkspaceRequest
    FailedCreateWorkspaceRequest (..),
    failedCreateWorkspaceRequest,
    fcwrWorkspaceRequest,
    fcwrErrorMessage,
    fcwrErrorCode,

    -- * FailedWorkspaceChangeRequest
    FailedWorkspaceChangeRequest (..),
    failedWorkspaceChangeRequest,
    fwcrWorkspaceId,
    fwcrErrorMessage,
    fwcrErrorCode,

    -- * IPRuleItem
    IPRuleItem (..),
    ipRuleItem,
    iriRuleDesc,
    iriIpRule,

    -- * ImagePermission
    ImagePermission (..),
    imagePermission,
    ipSharedAccountId,

    -- * ModificationState
    ModificationState (..),
    modificationState,
    msState,
    msResource,

    -- * OperatingSystem
    OperatingSystem (..),
    operatingSystem,
    osType,

    -- * RebootRequest
    RebootRequest (..),
    rebootRequest,
    rWorkspaceId,

    -- * RebuildRequest
    RebuildRequest (..),
    rebuildRequest,
    rrWorkspaceId,

    -- * RootStorage
    RootStorage (..),
    rootStorage,
    rsCapacity,

    -- * SelfservicePermissions
    SelfservicePermissions (..),
    selfservicePermissions,
    spSwitchRunningMode,
    spRestartWorkspace,
    spRebuildWorkspace,
    spIncreaseVolumeSize,
    spChangeComputeType,

    -- * Snapshot
    Snapshot (..),
    snapshot,
    sSnapshotTime,

    -- * StartRequest
    StartRequest (..),
    startRequest,
    sWorkspaceId,

    -- * StopRequest
    StopRequest (..),
    stopRequest,
    srWorkspaceId,

    -- * Tag
    Tag (..),
    tag,
    tagValue,
    tagKey,

    -- * TerminateRequest
    TerminateRequest (..),
    terminateRequest,
    trWorkspaceId,

    -- * UserStorage
    UserStorage (..),
    userStorage,
    usCapacity,

    -- * Workspace
    Workspace (..),
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

    -- * WorkspaceAccessProperties
    WorkspaceAccessProperties (..),
    workspaceAccessProperties,
    wapDeviceTypeOSx,
    wapDeviceTypeWindows,
    wapDeviceTypeAndroid,
    wapDeviceTypeZeroClient,
    wapDeviceTypeWeb,
    wapDeviceTypeIos,
    wapDeviceTypeChromeOS,

    -- * WorkspaceBundle
    WorkspaceBundle (..),
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

    -- * WorkspaceConnectionStatus
    WorkspaceConnectionStatus (..),
    workspaceConnectionStatus,
    wcsConnectionState,
    wcsWorkspaceId,
    wcsLastKnownUserConnectionTimestamp,
    wcsConnectionStateCheckTimestamp,

    -- * WorkspaceCreationProperties
    WorkspaceCreationProperties (..),
    workspaceCreationProperties,
    wcpEnableMaintenanceMode,
    wcpDefaultOu,
    wcpEnableInternetAccess,
    wcpEnableWorkDocs,
    wcpCustomSecurityGroupId,
    wcpUserEnabledAsLocalAdministrator,

    -- * WorkspaceDirectory
    WorkspaceDirectory (..),
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

    -- * WorkspaceImage
    WorkspaceImage (..),
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

    -- * WorkspaceProperties
    WorkspaceProperties (..),
    workspaceProperties,
    wpRootVolumeSizeGib,
    wpRunningMode,
    wpUserVolumeSizeGib,
    wpRunningModeAutoStopTimeoutInMinutes,
    wpComputeTypeName,

    -- * WorkspaceRequest
    WorkspaceRequest (..),
    workspaceRequest,
    wrWorkspaceProperties,
    wrRootVolumeEncryptionEnabled,
    wrUserVolumeEncryptionEnabled,
    wrVolumeEncryptionKey,
    wrTags,
    wrDirectoryId,
    wrUserName,
    wrBundleId,

    -- * WorkspacesIPGroup
    WorkspacesIPGroup (..),
    workspacesIPGroup,
    wigUserRules,
    wigGroupDesc,
    wigGroupName,
    wigGroupId,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4
import Network.AWS.WorkSpaces.Types.AccessPropertyValue
import Network.AWS.WorkSpaces.Types.AccountModification
import Network.AWS.WorkSpaces.Types.Application
import Network.AWS.WorkSpaces.Types.AssociationStatus
import Network.AWS.WorkSpaces.Types.ClientProperties
import Network.AWS.WorkSpaces.Types.ClientPropertiesResult
import Network.AWS.WorkSpaces.Types.Compute
import Network.AWS.WorkSpaces.Types.ComputeType
import Network.AWS.WorkSpaces.Types.ConnectionAlias
import Network.AWS.WorkSpaces.Types.ConnectionAliasAssociation
import Network.AWS.WorkSpaces.Types.ConnectionAliasPermission
import Network.AWS.WorkSpaces.Types.ConnectionAliasState
import Network.AWS.WorkSpaces.Types.ConnectionState
import Network.AWS.WorkSpaces.Types.DedicatedTenancyModificationStateEnum
import Network.AWS.WorkSpaces.Types.DedicatedTenancySupportEnum
import Network.AWS.WorkSpaces.Types.DedicatedTenancySupportResultEnum
import Network.AWS.WorkSpaces.Types.DefaultWorkspaceCreationProperties
import Network.AWS.WorkSpaces.Types.FailedCreateWorkspaceRequest
import Network.AWS.WorkSpaces.Types.FailedWorkspaceChangeRequest
import Network.AWS.WorkSpaces.Types.IPRuleItem
import Network.AWS.WorkSpaces.Types.ImagePermission
import Network.AWS.WorkSpaces.Types.ImageType
import Network.AWS.WorkSpaces.Types.ModificationResourceEnum
import Network.AWS.WorkSpaces.Types.ModificationState
import Network.AWS.WorkSpaces.Types.ModificationStateEnum
import Network.AWS.WorkSpaces.Types.OperatingSystem
import Network.AWS.WorkSpaces.Types.OperatingSystemType
import Network.AWS.WorkSpaces.Types.RebootRequest
import Network.AWS.WorkSpaces.Types.RebuildRequest
import Network.AWS.WorkSpaces.Types.ReconnectEnum
import Network.AWS.WorkSpaces.Types.RootStorage
import Network.AWS.WorkSpaces.Types.RunningMode
import Network.AWS.WorkSpaces.Types.SelfservicePermissions
import Network.AWS.WorkSpaces.Types.Snapshot
import Network.AWS.WorkSpaces.Types.StartRequest
import Network.AWS.WorkSpaces.Types.StopRequest
import Network.AWS.WorkSpaces.Types.Tag
import Network.AWS.WorkSpaces.Types.TargetWorkspaceState
import Network.AWS.WorkSpaces.Types.Tenancy
import Network.AWS.WorkSpaces.Types.TerminateRequest
import Network.AWS.WorkSpaces.Types.UserStorage
import Network.AWS.WorkSpaces.Types.Workspace
import Network.AWS.WorkSpaces.Types.WorkspaceAccessProperties
import Network.AWS.WorkSpaces.Types.WorkspaceBundle
import Network.AWS.WorkSpaces.Types.WorkspaceConnectionStatus
import Network.AWS.WorkSpaces.Types.WorkspaceCreationProperties
import Network.AWS.WorkSpaces.Types.WorkspaceDirectory
import Network.AWS.WorkSpaces.Types.WorkspaceDirectoryState
import Network.AWS.WorkSpaces.Types.WorkspaceDirectoryType
import Network.AWS.WorkSpaces.Types.WorkspaceImage
import Network.AWS.WorkSpaces.Types.WorkspaceImageIngestionProcess
import Network.AWS.WorkSpaces.Types.WorkspaceImageRequiredTenancy
import Network.AWS.WorkSpaces.Types.WorkspaceImageState
import Network.AWS.WorkSpaces.Types.WorkspaceProperties
import Network.AWS.WorkSpaces.Types.WorkspaceRequest
import Network.AWS.WorkSpaces.Types.WorkspaceState
import Network.AWS.WorkSpaces.Types.WorkspacesIPGroup

-- | API version @2015-04-08@ of the Amazon WorkSpaces SDK configuration.
workSpaces :: Service
workSpaces =
  Service
    { _svcAbbrev = "WorkSpaces",
      _svcSigner = v4,
      _svcPrefix = "workspaces",
      _svcVersion = "2015-04-08",
      _svcEndpoint = defaultEndpoint workSpaces,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "WorkSpaces",
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

-- | The specified resource is not available.
_ResourceUnavailableException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceUnavailableException =
  _MatchServiceError
    workSpaces
    "ResourceUnavailableException"

-- | The configuration of this network is not supported for this operation, or your network configuration conflicts with the Amazon WorkSpaces management network IP range. For more information, see <https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-vpc.html Configure a VPC for Amazon WorkSpaces> .
_UnsupportedNetworkConfigurationException :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedNetworkConfigurationException =
  _MatchServiceError
    workSpaces
    "UnsupportedNetworkConfigurationException"

-- | This operation is not supported.
_OperationNotSupportedException :: AsError a => Getting (First ServiceError) a ServiceError
_OperationNotSupportedException =
  _MatchServiceError
    workSpaces
    "OperationNotSupportedException"

-- | The specified resource already exists.
_ResourceAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceAlreadyExistsException =
  _MatchServiceError
    workSpaces
    "ResourceAlreadyExistsException"

-- | Your resource limits have been exceeded.
_ResourceLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceLimitExceededException =
  _MatchServiceError
    workSpaces
    "ResourceLimitExceededException"

-- | The properties of this WorkSpace are currently being modified. Try again in a moment.
_OperationInProgressException :: AsError a => Getting (First ServiceError) a ServiceError
_OperationInProgressException =
  _MatchServiceError
    workSpaces
    "OperationInProgressException"

-- | The workspaces_DefaultRole role could not be found. If this is the first time you are registering a directory, you will need to create the workspaces_DefaultRole role before you can register a directory. For more information, see <https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-access-control.html#create-default-role Creating the workspaces_DefaultRole Role> .
_WorkspacesDefaultRoleNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_WorkspacesDefaultRoleNotFoundException =
  _MatchServiceError
    workSpaces
    "WorkspacesDefaultRoleNotFoundException"

-- | The resource is associated with a directory.
_ResourceAssociatedException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceAssociatedException =
  _MatchServiceError
    workSpaces
    "ResourceAssociatedException"

-- | One or more parameter values are not valid.
_InvalidParameterValuesException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterValuesException =
  _MatchServiceError
    workSpaces
    "InvalidParameterValuesException"

-- | The resource could not be created.
_ResourceCreationFailedException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceCreationFailedException =
  _MatchServiceError
    workSpaces
    "ResourceCreationFailedException"

-- | The configuration of this WorkSpace is not supported for this operation. For more information, see <https://docs.aws.amazon.com/workspaces/latest/adminguide/required-service-components.html Required Configuration and Service Components for WorkSpaces > .
_UnsupportedWorkspaceConfigurationException :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedWorkspaceConfigurationException =
  _MatchServiceError
    workSpaces
    "UnsupportedWorkspaceConfigurationException"

-- | The user is not authorized to access a resource.
_AccessDeniedException :: AsError a => Getting (First ServiceError) a ServiceError
_AccessDeniedException =
  _MatchServiceError
    workSpaces
    "AccessDeniedException"

-- | The resource could not be found.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    workSpaces
    "ResourceNotFoundException"

-- | The state of the resource is not valid for this operation.
_InvalidResourceStateException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidResourceStateException =
  _MatchServiceError
    workSpaces
    "InvalidResourceStateException"
