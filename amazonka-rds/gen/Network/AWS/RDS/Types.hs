{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _DBInstanceRoleAlreadyExistsFault,
    _ReservedDBInstanceAlreadyExistsFault,
    _DBParameterGroupQuotaExceededFault,
    _InsufficientDBClusterCapacityFault,
    _InvalidVPCNetworkStateFault,
    _ProvisionedIopsNotAvailableInAZFault,
    _DBClusterRoleQuotaExceededFault,
    _CertificateNotFoundFault,
    _DBClusterRoleAlreadyExistsFault,
    _InstallationMediaAlreadyExistsFault,
    _DBParameterGroupAlreadyExistsFault,
    _InsufficientDBInstanceCapacityFault,
    _SubscriptionAlreadyExistFault,
    _DBInstanceRoleQuotaExceededFault,
    _ReservedDBInstanceQuotaExceededFault,
    _ReservedDBInstancesOfferingNotFoundFault,
    _DBClusterSnapshotNotFoundFault,
    _DBInstanceAutomatedBackupNotFoundFault,
    _SNSNoAuthorizationFault,
    _InvalidDBSubnetGroupStateFault,
    _DBSubnetGroupAlreadyExistsFault,
    _DBClusterEndpointNotFoundFault,
    _DBSnapshotAlreadyExistsFault,
    _DBUpgradeDependencyFailureFault,
    _InvalidDBInstanceAutomatedBackupStateFault,
    _ResourceNotFoundFault,
    _SNSTopicArnNotFoundFault,
    _InvalidRestoreFault,
    _InvalidEventSubscriptionStateFault,
    _DBClusterEndpointAlreadyExistsFault,
    _InvalidDBInstanceStateFault,
    _DBClusterParameterGroupNotFoundFault,
    _KMSKeyNotAccessibleFault,
    _DBProxyNotFoundFault,
    _InvalidDBClusterEndpointStateFault,
    _SnapshotQuotaExceededFault,
    _InvalidExportOnlyFault,
    _InsufficientStorageClusterCapacityFault,
    _DBInstanceAutomatedBackupQuotaExceededFault,
    _StorageTypeNotSupportedFault,
    _IamRoleNotFoundFault,
    _EventSubscriptionQuotaExceededFault,
    _DBClusterEndpointQuotaExceededFault,
    _InvalidGlobalClusterStateFault,
    _DBProxyQuotaExceededFault,
    _DBSubnetGroupNotAllowedFault,
    _ExportTaskAlreadyExistsFault,
    _DBProxyTargetGroupNotFoundFault,
    _GlobalClusterAlreadyExistsFault,
    _DBProxyTargetNotFoundFault,
    _SharedSnapshotQuotaExceededFault,
    _ReservedDBInstanceNotFoundFault,
    _DBSubnetQuotaExceededFault,
    _DBInstanceRoleNotFoundFault,
    _BackupPolicyNotFoundFault,
    _IamRoleMissingPermissionsFault,
    _DBProxyTargetAlreadyRegisteredFault,
    _AuthorizationAlreadyExistsFault,
    _InvalidDBParameterGroupStateFault,
    _SNSInvalidTopicFault,
    _SourceNotFoundFault,
    _PointInTimeRestoreNotEnabledFault,
    _InvalidDBClusterSnapshotStateFault,
    _DBClusterSnapshotAlreadyExistsFault,
    _AuthorizationQuotaExceededFault,
    _InstallationMediaNotFoundFault,
    _DBParameterGroupNotFoundFault,
    _DBClusterRoleNotFoundFault,
    _DBSubnetGroupDoesNotCoverEnoughAZs,
    _InvalidDBSubnetStateFault,
    _DomainNotFoundFault,
    _InvalidDBSubnetGroupFault,
    _SubnetAlreadyInUse,
    _DBClusterBacktrackNotFoundFault,
    _DBProxyAlreadyExistsFault,
    _DBSecurityGroupNotSupportedFault,
    _StorageQuotaExceededFault,
    _InstanceQuotaExceededFault,
    _InvalidDBSnapshotStateFault,
    _DBInstanceNotFoundFault,
    _InvalidDBProxyStateFault,
    _GlobalClusterQuotaExceededFault,
    _DBSecurityGroupNotFoundFault,
    _DBSecurityGroupAlreadyExistsFault,
    _DBInstanceAlreadyExistsFault,
    _OptionGroupQuotaExceededFault,
    _InvalidDBSecurityGroupStateFault,
    _DBSnapshotNotFoundFault,
    _DBSubnetGroupNotFoundFault,
    _DBClusterQuotaExceededFault,
    _InvalidDBClusterCapacityFault,
    _CustomAvailabilityZoneQuotaExceededFault,
    _ExportTaskNotFoundFault,
    _InsufficientAvailableIPsInSubnetFault,
    _DBSecurityGroupQuotaExceededFault,
    _InvalidDBClusterStateFault,
    _OptionGroupAlreadyExistsFault,
    _CustomAvailabilityZoneAlreadyExistsFault,
    _DBClusterAlreadyExistsFault,
    _InvalidOptionGroupStateFault,
    _GlobalClusterNotFoundFault,
    _InvalidS3BucketFault,
    _InvalidExportSourceStateFault,
    _DBClusterNotFoundFault,
    _CustomAvailabilityZoneNotFoundFault,
    _DBSubnetGroupQuotaExceededFault,
    _OptionGroupNotFoundFault,
    _DBLogFileNotFoundFault,
    _InvalidExportTaskStateFault,
    _SubscriptionCategoryNotFoundFault,
    _AuthorizationNotFoundFault,
    _InvalidSubnet,
    _SubscriptionNotFoundFault,

    -- * ActivityStreamMode
    ActivityStreamMode (..),

    -- * ActivityStreamStatus
    ActivityStreamStatus (..),

    -- * ApplyMethod
    ApplyMethod (..),

    -- * AuthScheme
    AuthScheme (..),

    -- * DBProxyStatus
    DBProxyStatus (..),

    -- * EngineFamily
    EngineFamily (..),

    -- * FailoverStatus
    FailoverStatus (..),

    -- * IAMAuthMode
    IAMAuthMode (..),

    -- * ReplicaMode
    ReplicaMode (..),

    -- * SourceType
    SourceType (..),

    -- * TargetHealthReason
    TargetHealthReason (..),

    -- * TargetState
    TargetState (..),

    -- * TargetType
    TargetType (..),

    -- * WriteForwardingStatus
    WriteForwardingStatus (..),

    -- * AccountQuota
    AccountQuota (..),
    newAccountQuota,

    -- * AvailabilityZone
    AvailabilityZone (..),
    newAvailabilityZone,

    -- * AvailableProcessorFeature
    AvailableProcessorFeature (..),
    newAvailableProcessorFeature,

    -- * Certificate
    Certificate (..),
    newCertificate,

    -- * CharacterSet
    CharacterSet (..),
    newCharacterSet,

    -- * CloudwatchLogsExportConfiguration
    CloudwatchLogsExportConfiguration (..),
    newCloudwatchLogsExportConfiguration,

    -- * ClusterPendingModifiedValues
    ClusterPendingModifiedValues (..),
    newClusterPendingModifiedValues,

    -- * ConnectionPoolConfiguration
    ConnectionPoolConfiguration (..),
    newConnectionPoolConfiguration,

    -- * ConnectionPoolConfigurationInfo
    ConnectionPoolConfigurationInfo (..),
    newConnectionPoolConfigurationInfo,

    -- * CustomAvailabilityZone
    CustomAvailabilityZone (..),
    newCustomAvailabilityZone,

    -- * DBCluster
    DBCluster (..),
    newDBCluster,

    -- * DBClusterBacktrack
    DBClusterBacktrack (..),
    newDBClusterBacktrack,

    -- * DBClusterEndpoint
    DBClusterEndpoint (..),
    newDBClusterEndpoint,

    -- * DBClusterMember
    DBClusterMember (..),
    newDBClusterMember,

    -- * DBClusterOptionGroupStatus
    DBClusterOptionGroupStatus (..),
    newDBClusterOptionGroupStatus,

    -- * DBClusterParameterGroup
    DBClusterParameterGroup (..),
    newDBClusterParameterGroup,

    -- * DBClusterParameterGroupNameMessage
    DBClusterParameterGroupNameMessage (..),
    newDBClusterParameterGroupNameMessage,

    -- * DBClusterRole
    DBClusterRole (..),
    newDBClusterRole,

    -- * DBClusterSnapshot
    DBClusterSnapshot (..),
    newDBClusterSnapshot,

    -- * DBClusterSnapshotAttribute
    DBClusterSnapshotAttribute (..),
    newDBClusterSnapshotAttribute,

    -- * DBClusterSnapshotAttributesResult
    DBClusterSnapshotAttributesResult (..),
    newDBClusterSnapshotAttributesResult,

    -- * DBEngineVersion
    DBEngineVersion (..),
    newDBEngineVersion,

    -- * DBInstance
    DBInstance (..),
    newDBInstance,

    -- * DBInstanceAutomatedBackup
    DBInstanceAutomatedBackup (..),
    newDBInstanceAutomatedBackup,

    -- * DBInstanceAutomatedBackupsReplication
    DBInstanceAutomatedBackupsReplication (..),
    newDBInstanceAutomatedBackupsReplication,

    -- * DBInstanceRole
    DBInstanceRole (..),
    newDBInstanceRole,

    -- * DBInstanceStatusInfo
    DBInstanceStatusInfo (..),
    newDBInstanceStatusInfo,

    -- * DBParameterGroup
    DBParameterGroup (..),
    newDBParameterGroup,

    -- * DBParameterGroupNameMessage
    DBParameterGroupNameMessage (..),
    newDBParameterGroupNameMessage,

    -- * DBParameterGroupStatus
    DBParameterGroupStatus (..),
    newDBParameterGroupStatus,

    -- * DBProxy
    DBProxy (..),
    newDBProxy,

    -- * DBProxyTarget
    DBProxyTarget (..),
    newDBProxyTarget,

    -- * DBProxyTargetGroup
    DBProxyTargetGroup (..),
    newDBProxyTargetGroup,

    -- * DBSecurityGroup
    DBSecurityGroup (..),
    newDBSecurityGroup,

    -- * DBSecurityGroupMembership
    DBSecurityGroupMembership (..),
    newDBSecurityGroupMembership,

    -- * DBSnapshot
    DBSnapshot (..),
    newDBSnapshot,

    -- * DBSnapshotAttribute
    DBSnapshotAttribute (..),
    newDBSnapshotAttribute,

    -- * DBSnapshotAttributesResult
    DBSnapshotAttributesResult (..),
    newDBSnapshotAttributesResult,

    -- * DBSubnetGroup
    DBSubnetGroup (..),
    newDBSubnetGroup,

    -- * DescribeDBLogFilesDetails
    DescribeDBLogFilesDetails (..),
    newDescribeDBLogFilesDetails,

    -- * DomainMembership
    DomainMembership (..),
    newDomainMembership,

    -- * DoubleRange
    DoubleRange (..),
    newDoubleRange,

    -- * EC2SecurityGroup
    EC2SecurityGroup (..),
    newEC2SecurityGroup,

    -- * Endpoint
    Endpoint (..),
    newEndpoint,

    -- * EngineDefaults
    EngineDefaults (..),
    newEngineDefaults,

    -- * Event
    Event (..),
    newEvent,

    -- * EventCategoriesMap
    EventCategoriesMap (..),
    newEventCategoriesMap,

    -- * EventSubscription
    EventSubscription (..),
    newEventSubscription,

    -- * ExportTask
    ExportTask (..),
    newExportTask,

    -- * FailoverState
    FailoverState (..),
    newFailoverState,

    -- * Filter
    Filter (..),
    newFilter,

    -- * GlobalCluster
    GlobalCluster (..),
    newGlobalCluster,

    -- * GlobalClusterMember
    GlobalClusterMember (..),
    newGlobalClusterMember,

    -- * IPRange
    IPRange (..),
    newIPRange,

    -- * InstallationMedia
    InstallationMedia (..),
    newInstallationMedia,

    -- * InstallationMediaFailureCause
    InstallationMediaFailureCause (..),
    newInstallationMediaFailureCause,

    -- * MinimumEngineVersionPerAllowedValue
    MinimumEngineVersionPerAllowedValue (..),
    newMinimumEngineVersionPerAllowedValue,

    -- * Option
    Option (..),
    newOption,

    -- * OptionConfiguration
    OptionConfiguration (..),
    newOptionConfiguration,

    -- * OptionGroup
    OptionGroup (..),
    newOptionGroup,

    -- * OptionGroupMembership
    OptionGroupMembership (..),
    newOptionGroupMembership,

    -- * OptionGroupOption
    OptionGroupOption (..),
    newOptionGroupOption,

    -- * OptionGroupOptionSetting
    OptionGroupOptionSetting (..),
    newOptionGroupOptionSetting,

    -- * OptionSetting
    OptionSetting (..),
    newOptionSetting,

    -- * OptionVersion
    OptionVersion (..),
    newOptionVersion,

    -- * OrderableDBInstanceOption
    OrderableDBInstanceOption (..),
    newOrderableDBInstanceOption,

    -- * Outpost
    Outpost (..),
    newOutpost,

    -- * Parameter
    Parameter (..),
    newParameter,

    -- * PendingCloudwatchLogsExports
    PendingCloudwatchLogsExports (..),
    newPendingCloudwatchLogsExports,

    -- * PendingMaintenanceAction
    PendingMaintenanceAction (..),
    newPendingMaintenanceAction,

    -- * PendingModifiedValues
    PendingModifiedValues (..),
    newPendingModifiedValues,

    -- * ProcessorFeature
    ProcessorFeature (..),
    newProcessorFeature,

    -- * Range
    Range (..),
    newRange,

    -- * RecurringCharge
    RecurringCharge (..),
    newRecurringCharge,

    -- * ReservedDBInstance
    ReservedDBInstance (..),
    newReservedDBInstance,

    -- * ReservedDBInstancesOffering
    ReservedDBInstancesOffering (..),
    newReservedDBInstancesOffering,

    -- * ResourcePendingMaintenanceActions
    ResourcePendingMaintenanceActions (..),
    newResourcePendingMaintenanceActions,

    -- * RestoreWindow
    RestoreWindow (..),
    newRestoreWindow,

    -- * ScalingConfiguration
    ScalingConfiguration (..),
    newScalingConfiguration,

    -- * ScalingConfigurationInfo
    ScalingConfigurationInfo (..),
    newScalingConfigurationInfo,

    -- * SourceRegion
    SourceRegion (..),
    newSourceRegion,

    -- * Subnet
    Subnet (..),
    newSubnet,

    -- * Tag
    Tag (..),
    newTag,

    -- * TargetHealth
    TargetHealth (..),
    newTargetHealth,

    -- * Timezone
    Timezone (..),
    newTimezone,

    -- * UpgradeTarget
    UpgradeTarget (..),
    newUpgradeTarget,

    -- * UserAuthConfig
    UserAuthConfig (..),
    newUserAuthConfig,

    -- * UserAuthConfigInfo
    UserAuthConfigInfo (..),
    newUserAuthConfigInfo,

    -- * ValidDBInstanceModificationsMessage
    ValidDBInstanceModificationsMessage (..),
    newValidDBInstanceModificationsMessage,

    -- * ValidStorageOptions
    ValidStorageOptions (..),
    newValidStorageOptions,

    -- * VpcSecurityGroupMembership
    VpcSecurityGroupMembership (..),
    newVpcSecurityGroupMembership,

    -- * VpnDetails
    VpnDetails (..),
    newVpnDetails,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types.AccountQuota
import Network.AWS.RDS.Types.ActivityStreamMode
import Network.AWS.RDS.Types.ActivityStreamStatus
import Network.AWS.RDS.Types.ApplyMethod
import Network.AWS.RDS.Types.AuthScheme
import Network.AWS.RDS.Types.AvailabilityZone
import Network.AWS.RDS.Types.AvailableProcessorFeature
import Network.AWS.RDS.Types.Certificate
import Network.AWS.RDS.Types.CharacterSet
import Network.AWS.RDS.Types.CloudwatchLogsExportConfiguration
import Network.AWS.RDS.Types.ClusterPendingModifiedValues
import Network.AWS.RDS.Types.ConnectionPoolConfiguration
import Network.AWS.RDS.Types.ConnectionPoolConfigurationInfo
import Network.AWS.RDS.Types.CustomAvailabilityZone
import Network.AWS.RDS.Types.DBCluster
import Network.AWS.RDS.Types.DBClusterBacktrack
import Network.AWS.RDS.Types.DBClusterEndpoint
import Network.AWS.RDS.Types.DBClusterMember
import Network.AWS.RDS.Types.DBClusterOptionGroupStatus
import Network.AWS.RDS.Types.DBClusterParameterGroup
import Network.AWS.RDS.Types.DBClusterParameterGroupNameMessage
import Network.AWS.RDS.Types.DBClusterRole
import Network.AWS.RDS.Types.DBClusterSnapshot
import Network.AWS.RDS.Types.DBClusterSnapshotAttribute
import Network.AWS.RDS.Types.DBClusterSnapshotAttributesResult
import Network.AWS.RDS.Types.DBEngineVersion
import Network.AWS.RDS.Types.DBInstance
import Network.AWS.RDS.Types.DBInstanceAutomatedBackup
import Network.AWS.RDS.Types.DBInstanceAutomatedBackupsReplication
import Network.AWS.RDS.Types.DBInstanceRole
import Network.AWS.RDS.Types.DBInstanceStatusInfo
import Network.AWS.RDS.Types.DBParameterGroup
import Network.AWS.RDS.Types.DBParameterGroupNameMessage
import Network.AWS.RDS.Types.DBParameterGroupStatus
import Network.AWS.RDS.Types.DBProxy
import Network.AWS.RDS.Types.DBProxyStatus
import Network.AWS.RDS.Types.DBProxyTarget
import Network.AWS.RDS.Types.DBProxyTargetGroup
import Network.AWS.RDS.Types.DBSecurityGroup
import Network.AWS.RDS.Types.DBSecurityGroupMembership
import Network.AWS.RDS.Types.DBSnapshot
import Network.AWS.RDS.Types.DBSnapshotAttribute
import Network.AWS.RDS.Types.DBSnapshotAttributesResult
import Network.AWS.RDS.Types.DBSubnetGroup
import Network.AWS.RDS.Types.DescribeDBLogFilesDetails
import Network.AWS.RDS.Types.DomainMembership
import Network.AWS.RDS.Types.DoubleRange
import Network.AWS.RDS.Types.EC2SecurityGroup
import Network.AWS.RDS.Types.Endpoint
import Network.AWS.RDS.Types.EngineDefaults
import Network.AWS.RDS.Types.EngineFamily
import Network.AWS.RDS.Types.Event
import Network.AWS.RDS.Types.EventCategoriesMap
import Network.AWS.RDS.Types.EventSubscription
import Network.AWS.RDS.Types.ExportTask
import Network.AWS.RDS.Types.FailoverState
import Network.AWS.RDS.Types.FailoverStatus
import Network.AWS.RDS.Types.Filter
import Network.AWS.RDS.Types.GlobalCluster
import Network.AWS.RDS.Types.GlobalClusterMember
import Network.AWS.RDS.Types.IAMAuthMode
import Network.AWS.RDS.Types.IPRange
import Network.AWS.RDS.Types.InstallationMedia
import Network.AWS.RDS.Types.InstallationMediaFailureCause
import Network.AWS.RDS.Types.MinimumEngineVersionPerAllowedValue
import Network.AWS.RDS.Types.Option
import Network.AWS.RDS.Types.OptionConfiguration
import Network.AWS.RDS.Types.OptionGroup
import Network.AWS.RDS.Types.OptionGroupMembership
import Network.AWS.RDS.Types.OptionGroupOption
import Network.AWS.RDS.Types.OptionGroupOptionSetting
import Network.AWS.RDS.Types.OptionSetting
import Network.AWS.RDS.Types.OptionVersion
import Network.AWS.RDS.Types.OrderableDBInstanceOption
import Network.AWS.RDS.Types.Outpost
import Network.AWS.RDS.Types.Parameter
import Network.AWS.RDS.Types.PendingCloudwatchLogsExports
import Network.AWS.RDS.Types.PendingMaintenanceAction
import Network.AWS.RDS.Types.PendingModifiedValues
import Network.AWS.RDS.Types.ProcessorFeature
import Network.AWS.RDS.Types.Range
import Network.AWS.RDS.Types.RecurringCharge
import Network.AWS.RDS.Types.ReplicaMode
import Network.AWS.RDS.Types.ReservedDBInstance
import Network.AWS.RDS.Types.ReservedDBInstancesOffering
import Network.AWS.RDS.Types.ResourcePendingMaintenanceActions
import Network.AWS.RDS.Types.RestoreWindow
import Network.AWS.RDS.Types.ScalingConfiguration
import Network.AWS.RDS.Types.ScalingConfigurationInfo
import Network.AWS.RDS.Types.SourceRegion
import Network.AWS.RDS.Types.SourceType
import Network.AWS.RDS.Types.Subnet
import Network.AWS.RDS.Types.Tag
import Network.AWS.RDS.Types.TargetHealth
import Network.AWS.RDS.Types.TargetHealthReason
import Network.AWS.RDS.Types.TargetState
import Network.AWS.RDS.Types.TargetType
import Network.AWS.RDS.Types.Timezone
import Network.AWS.RDS.Types.UpgradeTarget
import Network.AWS.RDS.Types.UserAuthConfig
import Network.AWS.RDS.Types.UserAuthConfigInfo
import Network.AWS.RDS.Types.ValidDBInstanceModificationsMessage
import Network.AWS.RDS.Types.ValidStorageOptions
import Network.AWS.RDS.Types.VpcSecurityGroupMembership
import Network.AWS.RDS.Types.VpnDetails
import Network.AWS.RDS.Types.WriteForwardingStatus
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2014-10-31@ of the Amazon Relational Database Service SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "RDS",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "rds",
      Prelude._svcVersion = "2014-10-31",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError = Prelude.parseXMLError "RDS",
      Prelude._svcRetry = retry
    }
  where
    retry =
      Prelude.Exponential
        { Prelude._retryBase = 5.0e-2,
          Prelude._retryGrowth = 2,
          Prelude._retryAttempts = 5,
          Prelude._retryCheck = check
        }
    check e
      | Lens.has (Prelude.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Prelude.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Lens.has (Prelude.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Prelude.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Prelude.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Prelude.hasCode "RequestThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has
          ( Prelude.hasCode "ThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has (Prelude.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Lens.has (Prelude.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has
          ( Prelude.hasCode "ThrottlingException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has
          ( Prelude.hasCode "Throttling"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Prelude.otherwise = Prelude.Nothing

-- | The specified @RoleArn@ or @FeatureName@ value is already associated
-- with the DB instance.
_DBInstanceRoleAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBInstanceRoleAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "DBInstanceRoleAlreadyExists"
    Prelude.. Prelude.hasStatus 400

-- | User already has a reservation with the given identifier.
_ReservedDBInstanceAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ReservedDBInstanceAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "ReservedDBInstanceAlreadyExists"
    Prelude.. Prelude.hasStatus 404

-- | The request would result in the user exceeding the allowed number of DB
-- parameter groups.
_DBParameterGroupQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBParameterGroupQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "DBParameterGroupQuotaExceeded"
    Prelude.. Prelude.hasStatus 400

-- | The DB cluster doesn\'t have enough capacity for the current operation.
_InsufficientDBClusterCapacityFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InsufficientDBClusterCapacityFault =
  Prelude._MatchServiceError
    defaultService
    "InsufficientDBClusterCapacityFault"
    Prelude.. Prelude.hasStatus 403

-- | The DB subnet group doesn\'t cover all Availability Zones after it\'s
-- created because of users\' change.
_InvalidVPCNetworkStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidVPCNetworkStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidVPCNetworkStateFault"
    Prelude.. Prelude.hasStatus 400

-- | Provisioned IOPS not available in the specified Availability Zone.
_ProvisionedIopsNotAvailableInAZFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ProvisionedIopsNotAvailableInAZFault =
  Prelude._MatchServiceError
    defaultService
    "ProvisionedIopsNotAvailableInAZFault"
    Prelude.. Prelude.hasStatus 400

-- | You have exceeded the maximum number of IAM roles that can be associated
-- with the specified DB cluster.
_DBClusterRoleQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBClusterRoleQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "DBClusterRoleQuotaExceeded"
    Prelude.. Prelude.hasStatus 400

-- | @CertificateIdentifier@ doesn\'t refer to an existing certificate.
_CertificateNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CertificateNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "CertificateNotFound"
    Prelude.. Prelude.hasStatus 404

-- | The specified IAM role Amazon Resource Name (ARN) is already associated
-- with the specified DB cluster.
_DBClusterRoleAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBClusterRoleAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "DBClusterRoleAlreadyExists"
    Prelude.. Prelude.hasStatus 400

-- | The specified installation medium has already been imported.
_InstallationMediaAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InstallationMediaAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "InstallationMediaAlreadyExists"
    Prelude.. Prelude.hasStatus 400

-- | A DB parameter group with the same name exists.
_DBParameterGroupAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBParameterGroupAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "DBParameterGroupAlreadyExists"
    Prelude.. Prelude.hasStatus 400

-- | The specified DB instance class isn\'t available in the specified
-- Availability Zone.
_InsufficientDBInstanceCapacityFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InsufficientDBInstanceCapacityFault =
  Prelude._MatchServiceError
    defaultService
    "InsufficientDBInstanceCapacity"
    Prelude.. Prelude.hasStatus 400

-- | The supplied subscription name already exists.
_SubscriptionAlreadyExistFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SubscriptionAlreadyExistFault =
  Prelude._MatchServiceError
    defaultService
    "SubscriptionAlreadyExist"
    Prelude.. Prelude.hasStatus 400

-- | You can\'t associate any more AWS Identity and Access Management (IAM)
-- roles with the DB instance because the quota has been reached.
_DBInstanceRoleQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBInstanceRoleQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "DBInstanceRoleQuotaExceeded"
    Prelude.. Prelude.hasStatus 400

-- | Request would exceed the user\'s DB Instance quota.
_ReservedDBInstanceQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ReservedDBInstanceQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "ReservedDBInstanceQuotaExceeded"
    Prelude.. Prelude.hasStatus 400

-- | Specified offering does not exist.
_ReservedDBInstancesOfferingNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ReservedDBInstancesOfferingNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "ReservedDBInstancesOfferingNotFound"
    Prelude.. Prelude.hasStatus 404

-- | @DBClusterSnapshotIdentifier@ doesn\'t refer to an existing DB cluster
-- snapshot.
_DBClusterSnapshotNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBClusterSnapshotNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "DBClusterSnapshotNotFoundFault"
    Prelude.. Prelude.hasStatus 404

-- | No automated backup for this DB instance was found.
_DBInstanceAutomatedBackupNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBInstanceAutomatedBackupNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "DBInstanceAutomatedBackupNotFound"
    Prelude.. Prelude.hasStatus 404

-- | You do not have permission to publish to the SNS topic ARN.
_SNSNoAuthorizationFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SNSNoAuthorizationFault =
  Prelude._MatchServiceError
    defaultService
    "SNSNoAuthorization"
    Prelude.. Prelude.hasStatus 400

-- | The DB subnet group cannot be deleted because it\'s in use.
_InvalidDBSubnetGroupStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidDBSubnetGroupStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidDBSubnetGroupStateFault"
    Prelude.. Prelude.hasStatus 400

-- | @DBSubnetGroupName@ is already used by an existing DB subnet group.
_DBSubnetGroupAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBSubnetGroupAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "DBSubnetGroupAlreadyExists"
    Prelude.. Prelude.hasStatus 400

-- | The specified custom endpoint doesn\'t exist.
_DBClusterEndpointNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBClusterEndpointNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "DBClusterEndpointNotFoundFault"
    Prelude.. Prelude.hasStatus 400

-- | @DBSnapshotIdentifier@ is already used by an existing snapshot.
_DBSnapshotAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBSnapshotAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "DBSnapshotAlreadyExists"
    Prelude.. Prelude.hasStatus 400

-- | The DB upgrade failed because a resource the DB depends on can\'t be
-- modified.
_DBUpgradeDependencyFailureFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBUpgradeDependencyFailureFault =
  Prelude._MatchServiceError
    defaultService
    "DBUpgradeDependencyFailure"
    Prelude.. Prelude.hasStatus 400

-- | The automated backup is in an invalid state. For example, this automated
-- backup is associated with an active instance.
_InvalidDBInstanceAutomatedBackupStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidDBInstanceAutomatedBackupStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidDBInstanceAutomatedBackupState"
    Prelude.. Prelude.hasStatus 400

-- | The specified resource ID was not found.
_ResourceNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFoundFault"
    Prelude.. Prelude.hasStatus 404

-- | The SNS topic ARN does not exist.
_SNSTopicArnNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SNSTopicArnNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "SNSTopicArnNotFound"
    Prelude.. Prelude.hasStatus 404

-- | Cannot restore from VPC backup to non-VPC DB instance.
_InvalidRestoreFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidRestoreFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidRestoreFault"
    Prelude.. Prelude.hasStatus 400

-- | This error can occur if someone else is modifying a subscription. You
-- should retry the action.
_InvalidEventSubscriptionStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidEventSubscriptionStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidEventSubscriptionState"
    Prelude.. Prelude.hasStatus 400

-- | The specified custom endpoint can\'t be created because it already
-- exists.
_DBClusterEndpointAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBClusterEndpointAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "DBClusterEndpointAlreadyExistsFault"
    Prelude.. Prelude.hasStatus 400

-- | The DB instance isn\'t in a valid state.
_InvalidDBInstanceStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidDBInstanceStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidDBInstanceState"
    Prelude.. Prelude.hasStatus 400

-- | @DBClusterParameterGroupName@ doesn\'t refer to an existing DB cluster
-- parameter group.
_DBClusterParameterGroupNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBClusterParameterGroupNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "DBClusterParameterGroupNotFound"
    Prelude.. Prelude.hasStatus 404

-- | An error occurred accessing an AWS KMS key.
_KMSKeyNotAccessibleFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_KMSKeyNotAccessibleFault =
  Prelude._MatchServiceError
    defaultService
    "KMSKeyNotAccessibleFault"
    Prelude.. Prelude.hasStatus 400

-- | The specified proxy name doesn\'t correspond to a proxy owned by your
-- AWS account in the specified AWS Region.
_DBProxyNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBProxyNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "DBProxyNotFoundFault"
    Prelude.. Prelude.hasStatus 404

-- | The requested operation can\'t be performed on the endpoint while the
-- endpoint is in this state.
_InvalidDBClusterEndpointStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidDBClusterEndpointStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidDBClusterEndpointStateFault"
    Prelude.. Prelude.hasStatus 400

-- | The request would result in the user exceeding the allowed number of DB
-- snapshots.
_SnapshotQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SnapshotQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "SnapshotQuotaExceeded"
    Prelude.. Prelude.hasStatus 400

-- | The export is invalid for exporting to an Amazon S3 bucket.
_InvalidExportOnlyFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidExportOnlyFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidExportOnly"
    Prelude.. Prelude.hasStatus 400

-- | There is insufficient storage available for the current action. You
-- might be able to resolve this error by updating your subnet group to use
-- different Availability Zones that have more storage available.
_InsufficientStorageClusterCapacityFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InsufficientStorageClusterCapacityFault =
  Prelude._MatchServiceError
    defaultService
    "InsufficientStorageClusterCapacity"
    Prelude.. Prelude.hasStatus 400

-- | The quota for retained automated backups was exceeded. This prevents you
-- from retaining any additional automated backups. The retained automated
-- backups quota is the same as your DB Instance quota.
_DBInstanceAutomatedBackupQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBInstanceAutomatedBackupQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "DBInstanceAutomatedBackupQuotaExceeded"
    Prelude.. Prelude.hasStatus 400

-- | Storage of the @StorageType@ specified can\'t be associated with the DB
-- instance.
_StorageTypeNotSupportedFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_StorageTypeNotSupportedFault =
  Prelude._MatchServiceError
    defaultService
    "StorageTypeNotSupported"
    Prelude.. Prelude.hasStatus 400

-- | The IAM role is missing for exporting to an Amazon S3 bucket.
_IamRoleNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_IamRoleNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "IamRoleNotFound"
    Prelude.. Prelude.hasStatus 404

-- | You have reached the maximum number of event subscriptions.
_EventSubscriptionQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_EventSubscriptionQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "EventSubscriptionQuotaExceeded"
    Prelude.. Prelude.hasStatus 400

-- | The cluster already has the maximum number of custom endpoints.
_DBClusterEndpointQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBClusterEndpointQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "DBClusterEndpointQuotaExceededFault"
    Prelude.. Prelude.hasStatus 403

-- | The global cluster is in an invalid state and can\'t perform the
-- requested operation.
_InvalidGlobalClusterStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidGlobalClusterStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidGlobalClusterStateFault"
    Prelude.. Prelude.hasStatus 400

-- | Your AWS account already has the maximum number of proxies in the
-- specified AWS Region.
_DBProxyQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBProxyQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "DBProxyQuotaExceededFault"
    Prelude.. Prelude.hasStatus 400

-- | The DBSubnetGroup shouldn\'t be specified while creating read replicas
-- that lie in the same region as the source instance.
_DBSubnetGroupNotAllowedFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBSubnetGroupNotAllowedFault =
  Prelude._MatchServiceError
    defaultService
    "DBSubnetGroupNotAllowedFault"
    Prelude.. Prelude.hasStatus 400

-- | You can\'t start an export task that\'s already running.
_ExportTaskAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ExportTaskAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "ExportTaskAlreadyExists"
    Prelude.. Prelude.hasStatus 400

-- | The specified target group isn\'t available for a proxy owned by your
-- AWS account in the specified AWS Region.
_DBProxyTargetGroupNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBProxyTargetGroupNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "DBProxyTargetGroupNotFoundFault"
    Prelude.. Prelude.hasStatus 404

-- | The @GlobalClusterIdentifier@ already exists. Choose a new global
-- database identifier (unique name) to create a new global database
-- cluster.
_GlobalClusterAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_GlobalClusterAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "GlobalClusterAlreadyExistsFault"
    Prelude.. Prelude.hasStatus 400

-- | The specified RDS DB instance or Aurora DB cluster isn\'t available for
-- a proxy owned by your AWS account in the specified AWS Region.
_DBProxyTargetNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBProxyTargetNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "DBProxyTargetNotFoundFault"
    Prelude.. Prelude.hasStatus 404

-- | You have exceeded the maximum number of accounts that you can share a
-- manual DB snapshot with.
_SharedSnapshotQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SharedSnapshotQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "SharedSnapshotQuotaExceeded"
    Prelude.. Prelude.hasStatus 400

-- | The specified reserved DB Instance not found.
_ReservedDBInstanceNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ReservedDBInstanceNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "ReservedDBInstanceNotFound"
    Prelude.. Prelude.hasStatus 404

-- | The request would result in the user exceeding the allowed number of
-- subnets in a DB subnet groups.
_DBSubnetQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBSubnetQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "DBSubnetQuotaExceededFault"
    Prelude.. Prelude.hasStatus 400

-- | The specified @RoleArn@ value doesn\'t match the specified feature for
-- the DB instance.
_DBInstanceRoleNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBInstanceRoleNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "DBInstanceRoleNotFound"
    Prelude.. Prelude.hasStatus 404

-- | Prism for BackupPolicyNotFoundFault' errors.
_BackupPolicyNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_BackupPolicyNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "BackupPolicyNotFoundFault"
    Prelude.. Prelude.hasStatus 404

-- | The IAM role requires additional permissions to export to an Amazon S3
-- bucket.
_IamRoleMissingPermissionsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_IamRoleMissingPermissionsFault =
  Prelude._MatchServiceError
    defaultService
    "IamRoleMissingPermissions"
    Prelude.. Prelude.hasStatus 400

-- | The proxy is already associated with the specified RDS DB instance or
-- Aurora DB cluster.
_DBProxyTargetAlreadyRegisteredFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBProxyTargetAlreadyRegisteredFault =
  Prelude._MatchServiceError
    defaultService
    "DBProxyTargetAlreadyRegisteredFault"
    Prelude.. Prelude.hasStatus 400

-- | The specified CIDR IP range or Amazon EC2 security group is already
-- authorized for the specified DB security group.
_AuthorizationAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AuthorizationAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "AuthorizationAlreadyExists"
    Prelude.. Prelude.hasStatus 400

-- | The DB parameter group is in use or is in an invalid state. If you are
-- attempting to delete the parameter group, you can\'t delete it when the
-- parameter group is in this state.
_InvalidDBParameterGroupStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidDBParameterGroupStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidDBParameterGroupState"
    Prelude.. Prelude.hasStatus 400

-- | SNS has responded that there is a problem with the SND topic specified.
_SNSInvalidTopicFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SNSInvalidTopicFault =
  Prelude._MatchServiceError
    defaultService
    "SNSInvalidTopic"
    Prelude.. Prelude.hasStatus 400

-- | The requested source could not be found.
_SourceNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SourceNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "SourceNotFound"
    Prelude.. Prelude.hasStatus 404

-- | @SourceDBInstanceIdentifier@ refers to a DB instance with
-- @BackupRetentionPeriod@ equal to 0.
_PointInTimeRestoreNotEnabledFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PointInTimeRestoreNotEnabledFault =
  Prelude._MatchServiceError
    defaultService
    "PointInTimeRestoreNotEnabled"
    Prelude.. Prelude.hasStatus 400

-- | The supplied value isn\'t a valid DB cluster snapshot state.
_InvalidDBClusterSnapshotStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidDBClusterSnapshotStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidDBClusterSnapshotStateFault"
    Prelude.. Prelude.hasStatus 400

-- | The user already has a DB cluster snapshot with the given identifier.
_DBClusterSnapshotAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBClusterSnapshotAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "DBClusterSnapshotAlreadyExistsFault"
    Prelude.. Prelude.hasStatus 400

-- | The DB security group authorization quota has been reached.
_AuthorizationQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AuthorizationQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "AuthorizationQuotaExceeded"
    Prelude.. Prelude.hasStatus 400

-- | @InstallationMediaID@ doesn\'t refer to an existing installation medium.
_InstallationMediaNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InstallationMediaNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "InstallationMediaNotFound"
    Prelude.. Prelude.hasStatus 404

-- | @DBParameterGroupName@ doesn\'t refer to an existing DB parameter group.
_DBParameterGroupNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBParameterGroupNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "DBParameterGroupNotFound"
    Prelude.. Prelude.hasStatus 404

-- | The specified IAM role Amazon Resource Name (ARN) isn\'t associated with
-- the specified DB cluster.
_DBClusterRoleNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBClusterRoleNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "DBClusterRoleNotFound"
    Prelude.. Prelude.hasStatus 404

-- | Subnets in the DB subnet group should cover at least two Availability
-- Zones unless there is only one Availability Zone.
_DBSubnetGroupDoesNotCoverEnoughAZs :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBSubnetGroupDoesNotCoverEnoughAZs =
  Prelude._MatchServiceError
    defaultService
    "DBSubnetGroupDoesNotCoverEnoughAZs"
    Prelude.. Prelude.hasStatus 400

-- | The DB subnet isn\'t in the /available/ state.
_InvalidDBSubnetStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidDBSubnetStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidDBSubnetStateFault"
    Prelude.. Prelude.hasStatus 400

-- | @Domain@ doesn\'t refer to an existing Active Directory domain.
_DomainNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DomainNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "DomainNotFoundFault"
    Prelude.. Prelude.hasStatus 404

-- | The DBSubnetGroup doesn\'t belong to the same VPC as that of an existing
-- cross-region read replica of the same source instance.
_InvalidDBSubnetGroupFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidDBSubnetGroupFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidDBSubnetGroupFault"
    Prelude.. Prelude.hasStatus 400

-- | The DB subnet is already in use in the Availability Zone.
_SubnetAlreadyInUse :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SubnetAlreadyInUse =
  Prelude._MatchServiceError
    defaultService
    "SubnetAlreadyInUse"
    Prelude.. Prelude.hasStatus 400

-- | @BacktrackIdentifier@ doesn\'t refer to an existing backtrack.
_DBClusterBacktrackNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBClusterBacktrackNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "DBClusterBacktrackNotFoundFault"
    Prelude.. Prelude.hasStatus 404

-- | The specified proxy name must be unique for all proxies owned by your
-- AWS account in the specified AWS Region.
_DBProxyAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBProxyAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "DBProxyTargetExistsFault"
    Prelude.. Prelude.hasStatus 400

-- | A DB security group isn\'t allowed for this action.
_DBSecurityGroupNotSupportedFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBSecurityGroupNotSupportedFault =
  Prelude._MatchServiceError
    defaultService
    "DBSecurityGroupNotSupported"
    Prelude.. Prelude.hasStatus 400

-- | The request would result in the user exceeding the allowed amount of
-- storage available across all DB instances.
_StorageQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_StorageQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "StorageQuotaExceeded"
    Prelude.. Prelude.hasStatus 400

-- | The request would result in the user exceeding the allowed number of DB
-- instances.
_InstanceQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InstanceQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "InstanceQuotaExceeded"
    Prelude.. Prelude.hasStatus 400

-- | The state of the DB snapshot doesn\'t allow deletion.
_InvalidDBSnapshotStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidDBSnapshotStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidDBSnapshotState"
    Prelude.. Prelude.hasStatus 400

-- | @DBInstanceIdentifier@ doesn\'t refer to an existing DB instance.
_DBInstanceNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBInstanceNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "DBInstanceNotFound"
    Prelude.. Prelude.hasStatus 404

-- | The requested operation can\'t be performed while the proxy is in this
-- state.
_InvalidDBProxyStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidDBProxyStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidDBProxyStateFault"
    Prelude.. Prelude.hasStatus 400

-- | The number of global database clusters for this account is already at
-- the maximum allowed.
_GlobalClusterQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_GlobalClusterQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "GlobalClusterQuotaExceededFault"
    Prelude.. Prelude.hasStatus 400

-- | @DBSecurityGroupName@ doesn\'t refer to an existing DB security group.
_DBSecurityGroupNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBSecurityGroupNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "DBSecurityGroupNotFound"
    Prelude.. Prelude.hasStatus 404

-- | A DB security group with the name specified in @DBSecurityGroupName@
-- already exists.
_DBSecurityGroupAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBSecurityGroupAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "DBSecurityGroupAlreadyExists"
    Prelude.. Prelude.hasStatus 400

-- | The user already has a DB instance with the given identifier.
_DBInstanceAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBInstanceAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "DBInstanceAlreadyExists"
    Prelude.. Prelude.hasStatus 400

-- | The quota of 20 option groups was exceeded for this AWS account.
_OptionGroupQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OptionGroupQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "OptionGroupQuotaExceededFault"
    Prelude.. Prelude.hasStatus 400

-- | The state of the DB security group doesn\'t allow deletion.
_InvalidDBSecurityGroupStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidDBSecurityGroupStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidDBSecurityGroupState"
    Prelude.. Prelude.hasStatus 400

-- | @DBSnapshotIdentifier@ doesn\'t refer to an existing DB snapshot.
_DBSnapshotNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBSnapshotNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "DBSnapshotNotFound"
    Prelude.. Prelude.hasStatus 404

-- | @DBSubnetGroupName@ doesn\'t refer to an existing DB subnet group.
_DBSubnetGroupNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBSubnetGroupNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "DBSubnetGroupNotFoundFault"
    Prelude.. Prelude.hasStatus 404

-- | The user attempted to create a new DB cluster and the user has already
-- reached the maximum allowed DB cluster quota.
_DBClusterQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBClusterQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "DBClusterQuotaExceededFault"
    Prelude.. Prelude.hasStatus 403

-- | @Capacity@ isn\'t a valid Aurora Serverless DB cluster capacity. Valid
-- capacity values are @2@, @4@, @8@, @16@, @32@, @64@, @128@, and @256@.
_InvalidDBClusterCapacityFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidDBClusterCapacityFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidDBClusterCapacityFault"
    Prelude.. Prelude.hasStatus 400

-- | You have exceeded the maximum number of custom Availability Zones.
_CustomAvailabilityZoneQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CustomAvailabilityZoneQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "CustomAvailabilityZoneQuotaExceeded"
    Prelude.. Prelude.hasStatus 400

-- | The export task doesn\'t exist.
_ExportTaskNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ExportTaskNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "ExportTaskNotFound"
    Prelude.. Prelude.hasStatus 404

-- | The requested operation can\'t be performed because there aren\'t enough
-- available IP addresses in the proxy\'s subnets. Add more CIDR blocks to
-- the VPC or remove IP address that aren\'t required from the subnets.
_InsufficientAvailableIPsInSubnetFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InsufficientAvailableIPsInSubnetFault =
  Prelude._MatchServiceError
    defaultService
    "InsufficientAvailableIPsInSubnetFault"
    Prelude.. Prelude.hasStatus 400

-- | The request would result in the user exceeding the allowed number of DB
-- security groups.
_DBSecurityGroupQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBSecurityGroupQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "QuotaExceeded.DBSecurityGroup"
    Prelude.. Prelude.hasStatus 400

-- | The requested operation can\'t be performed while the cluster is in this
-- state.
_InvalidDBClusterStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidDBClusterStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidDBClusterStateFault"
    Prelude.. Prelude.hasStatus 400

-- | The option group you are trying to create already exists.
_OptionGroupAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OptionGroupAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "OptionGroupAlreadyExistsFault"
    Prelude.. Prelude.hasStatus 400

-- | @CustomAvailabilityZoneName@ is already used by an existing custom
-- Availability Zone.
_CustomAvailabilityZoneAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CustomAvailabilityZoneAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "CustomAvailabilityZoneAlreadyExists"
    Prelude.. Prelude.hasStatus 400

-- | The user already has a DB cluster with the given identifier.
_DBClusterAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBClusterAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "DBClusterAlreadyExistsFault"
    Prelude.. Prelude.hasStatus 400

-- | The option group isn\'t in the /available/ state.
_InvalidOptionGroupStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidOptionGroupStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidOptionGroupStateFault"
    Prelude.. Prelude.hasStatus 400

-- | The @GlobalClusterIdentifier@ doesn\'t refer to an existing global
-- database cluster.
_GlobalClusterNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_GlobalClusterNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "GlobalClusterNotFoundFault"
    Prelude.. Prelude.hasStatus 404

-- | The specified Amazon S3 bucket name can\'t be found or Amazon RDS isn\'t
-- authorized to access the specified Amazon S3 bucket. Verify the
-- __SourceS3BucketName__ and __S3IngestionRoleArn__ values and try again.
_InvalidS3BucketFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidS3BucketFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidS3BucketFault"
    Prelude.. Prelude.hasStatus 400

-- | The state of the export snapshot is invalid for exporting to an Amazon
-- S3 bucket.
_InvalidExportSourceStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidExportSourceStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidExportSourceState"
    Prelude.. Prelude.hasStatus 400

-- | @DBClusterIdentifier@ doesn\'t refer to an existing DB cluster.
_DBClusterNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBClusterNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "DBClusterNotFoundFault"
    Prelude.. Prelude.hasStatus 404

-- | @CustomAvailabilityZoneId@ doesn\'t refer to an existing custom
-- Availability Zone identifier.
_CustomAvailabilityZoneNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CustomAvailabilityZoneNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "CustomAvailabilityZoneNotFound"
    Prelude.. Prelude.hasStatus 404

-- | The request would result in the user exceeding the allowed number of DB
-- subnet groups.
_DBSubnetGroupQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBSubnetGroupQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "DBSubnetGroupQuotaExceeded"
    Prelude.. Prelude.hasStatus 400

-- | The specified option group could not be found.
_OptionGroupNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OptionGroupNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "OptionGroupNotFoundFault"
    Prelude.. Prelude.hasStatus 404

-- | @LogFileName@ doesn\'t refer to an existing DB log file.
_DBLogFileNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DBLogFileNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "DBLogFileNotFoundFault"
    Prelude.. Prelude.hasStatus 404

-- | You can\'t cancel an export task that has completed.
_InvalidExportTaskStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidExportTaskStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidExportTaskStateFault"
    Prelude.. Prelude.hasStatus 400

-- | The supplied category does not exist.
_SubscriptionCategoryNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SubscriptionCategoryNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "SubscriptionCategoryNotFound"
    Prelude.. Prelude.hasStatus 404

-- | The specified CIDR IP range or Amazon EC2 security group might not be
-- authorized for the specified DB security group.
--
-- Or, RDS might not be authorized to perform necessary actions using IAM
-- on your behalf.
_AuthorizationNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AuthorizationNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "AuthorizationNotFound"
    Prelude.. Prelude.hasStatus 404

-- | The requested subnet is invalid, or multiple subnets were requested that
-- are not all in a common VPC.
_InvalidSubnet :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidSubnet =
  Prelude._MatchServiceError
    defaultService
    "InvalidSubnet"
    Prelude.. Prelude.hasStatus 400

-- | The subscription name does not exist.
_SubscriptionNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SubscriptionNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "SubscriptionNotFound"
    Prelude.. Prelude.hasStatus 404
