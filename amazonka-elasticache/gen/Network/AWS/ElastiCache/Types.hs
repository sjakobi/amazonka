{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types
  ( -- * Service Configuration
    elastiCache,

    -- * Errors
    _SubnetInUse,
    _CacheSubnetGroupQuotaExceededFault,
    _InvalidVPCNetworkStateFault,
    _CacheClusterNotFoundFault,
    _InvalidReplicationGroupStateFault,
    _SubnetNotAllowedFault,
    _CacheSubnetGroupAlreadyExistsFault,
    _TestFailoverNotAvailableFault,
    _GlobalReplicationGroupAlreadyExistsFault,
    _SnapshotFeatureNotSupportedFault,
    _UserGroupQuotaExceededFault,
    _InvalidKMSKeyFault,
    _InvalidCacheSecurityGroupStateFault,
    _ReservedCacheNodeNotFoundFault,
    _ServiceLinkedRoleNotFoundFault,
    _APICallRateForCustomerExceededFault,
    _InvalidCacheParameterGroupStateFault,
    _UserQuotaExceededFault,
    _NoOperationFault,
    _InvalidParameterCombinationException,
    _CacheParameterGroupAlreadyExistsFault,
    _SnapshotQuotaExceededFault,
    _TagNotFoundFault,
    _CacheSubnetQuotaExceededFault,
    _SnapshotAlreadyExistsFault,
    _NodeQuotaForCustomerExceededFault,
    _UserNotFoundFault,
    _InsufficientCacheClusterCapacityFault,
    _InvalidUserStateFault,
    _ServiceUpdateNotFoundFault,
    _SnapshotNotFoundFault,
    _UserGroupAlreadyExistsFault,
    _InvalidUserGroupStateFault,
    _InvalidCacheClusterStateFault,
    _UserGroupNotFoundFault,
    _NodeGroupsPerReplicationGroupQuotaExceededFault,
    _ReplicationGroupAlreadyExistsFault,
    _AuthorizationAlreadyExistsFault,
    _ReservedCacheNodeQuotaExceededFault,
    _InvalidParameterValueException,
    _CacheSecurityGroupNotFoundFault,
    _ReservedCacheNodeAlreadyExistsFault,
    _CacheSubnetGroupInUse,
    _InvalidGlobalReplicationGroupStateFault,
    _GlobalReplicationGroupNotFoundFault,
    _CacheSubnetGroupNotFoundFault,
    _CacheSecurityGroupAlreadyExistsFault,
    _InvalidARNFault,
    _NodeGroupNotFoundFault,
    _NodeQuotaForClusterExceededFault,
    _ReplicationGroupAlreadyUnderMigrationFault,
    _DefaultUserRequired,
    _CacheParameterGroupNotFoundFault,
    _DuplicateUserNameFault,
    _InvalidSnapshotStateFault,
    _ReplicationGroupNotUnderMigrationFault,
    _UserAlreadyExistsFault,
    _DefaultUserAssociatedToUserGroupFault,
    _CacheParameterGroupQuotaExceededFault,
    _AuthorizationNotFoundFault,
    _ReservedCacheNodesOfferingNotFoundFault,
    _InvalidSubnet,
    _ClusterQuotaForCustomerExceededFault,
    _ReplicationGroupNotFoundFault,
    _CacheClusterAlreadyExistsFault,
    _TagQuotaPerResourceExceeded,
    _CacheSecurityGroupQuotaExceededFault,

    -- * AZMode
    AZMode (..),

    -- * AuthTokenUpdateStatus
    AuthTokenUpdateStatus (..),

    -- * AuthTokenUpdateStrategyType
    AuthTokenUpdateStrategyType (..),

    -- * AuthenticationType
    AuthenticationType (..),

    -- * AutomaticFailoverStatus
    AutomaticFailoverStatus (..),

    -- * ChangeType
    ChangeType (..),

    -- * MultiAZStatus
    MultiAZStatus (..),

    -- * NodeUpdateInitiatedBy
    NodeUpdateInitiatedBy (..),

    -- * NodeUpdateStatus
    NodeUpdateStatus (..),

    -- * OutpostMode
    OutpostMode (..),

    -- * PendingAutomaticFailoverStatus
    PendingAutomaticFailoverStatus (..),

    -- * ServiceUpdateSeverity
    ServiceUpdateSeverity (..),

    -- * ServiceUpdateStatus
    ServiceUpdateStatus (..),

    -- * ServiceUpdateType
    ServiceUpdateType (..),

    -- * SlaMet
    SlaMet (..),

    -- * SourceType
    SourceType (..),

    -- * UpdateActionStatus
    UpdateActionStatus (..),

    -- * Authentication
    Authentication (..),
    authentication,
    aPasswordCount,
    aType,

    -- * AvailabilityZone
    AvailabilityZone (..),
    availabilityZone,
    azName,

    -- * CacheCluster
    CacheCluster (..),
    cacheCluster,
    ccCacheNodes,
    ccCacheClusterCreateTime,
    ccNumCacheNodes,
    ccCacheSecurityGroups,
    ccReplicationGroupId,
    ccCacheClusterId,
    ccSnapshotWindow,
    ccARN,
    ccNotificationConfiguration,
    ccSnapshotRetentionLimit,
    ccCacheParameterGroup,
    ccSecurityGroups,
    ccPreferredAvailabilityZone,
    ccAtRestEncryptionEnabled,
    ccCacheSubnetGroupName,
    ccEngineVersion,
    ccPreferredMaintenanceWindow,
    ccCacheNodeType,
    ccAuthTokenLastModifiedDate,
    ccClientDownloadLandingPage,
    ccEngine,
    ccPreferredOutpostARN,
    ccAuthTokenEnabled,
    ccPendingModifiedValues,
    ccConfigurationEndpoint,
    ccTransitEncryptionEnabled,
    ccAutoMinorVersionUpgrade,
    ccCacheClusterStatus,

    -- * CacheEngineVersion
    CacheEngineVersion (..),
    cacheEngineVersion,
    cevCacheEngineDescription,
    cevCacheEngineVersionDescription,
    cevEngineVersion,
    cevCacheParameterGroupFamily,
    cevEngine,

    -- * CacheNode
    CacheNode (..),
    cacheNode,
    cnCustomerAvailabilityZone,
    cnCacheNodeStatus,
    cnCacheNodeCreateTime,
    cnParameterGroupStatus,
    cnCustomerOutpostARN,
    cnSourceCacheNodeId,
    cnCacheNodeId,
    cnEndpoint,

    -- * CacheNodeTypeSpecificParameter
    CacheNodeTypeSpecificParameter (..),
    cacheNodeTypeSpecificParameter,
    cntspChangeType,
    cntspAllowedValues,
    cntspSource,
    cntspCacheNodeTypeSpecificValues,
    cntspParameterName,
    cntspDescription,
    cntspDataType,
    cntspIsModifiable,
    cntspMinimumEngineVersion,

    -- * CacheNodeTypeSpecificValue
    CacheNodeTypeSpecificValue (..),
    cacheNodeTypeSpecificValue,
    cntsvCacheNodeType,
    cntsvValue,

    -- * CacheNodeUpdateStatus
    CacheNodeUpdateStatus (..),
    cacheNodeUpdateStatus,
    cnusNodeUpdateStatusModifiedDate,
    cnusNodeUpdateStatus,
    cnusNodeUpdateInitiatedBy,
    cnusNodeUpdateInitiatedDate,
    cnusCacheNodeId,
    cnusNodeDeletionDate,
    cnusNodeUpdateStartDate,
    cnusNodeUpdateEndDate,

    -- * CacheParameterGroup
    CacheParameterGroup (..),
    cacheParameterGroup,
    cpgIsGlobal,
    cpgARN,
    cpgCacheParameterGroupName,
    cpgCacheParameterGroupFamily,
    cpgDescription,

    -- * CacheParameterGroupNameMessage
    CacheParameterGroupNameMessage (..),
    cacheParameterGroupNameMessage,
    cpgnmCacheParameterGroupName,

    -- * CacheParameterGroupStatus
    CacheParameterGroupStatus (..),
    cacheParameterGroupStatus,
    cpgsCacheParameterGroupName,
    cpgsParameterApplyStatus,
    cpgsCacheNodeIdsToReboot,

    -- * CacheSecurityGroup
    CacheSecurityGroup (..),
    cacheSecurityGroup,
    csgOwnerId,
    csgARN,
    csgCacheSecurityGroupName,
    csgEC2SecurityGroups,
    csgDescription,

    -- * CacheSecurityGroupMembership
    CacheSecurityGroupMembership (..),
    cacheSecurityGroupMembership,
    csgmStatus,
    csgmCacheSecurityGroupName,

    -- * CacheSubnetGroup
    CacheSubnetGroup (..),
    cacheSubnetGroup,
    cARN,
    cCacheSubnetGroupName,
    cCacheSubnetGroupDescription,
    cSubnets,
    cVPCId,

    -- * ConfigureShard
    ConfigureShard (..),
    configureShard,
    csPreferredAvailabilityZones,
    csPreferredOutpostARNs,
    csNodeGroupId,
    csNewReplicaCount,

    -- * CustomerNodeEndpoint
    CustomerNodeEndpoint (..),
    customerNodeEndpoint,
    cneAddress,
    cnePort,

    -- * EC2SecurityGroup
    EC2SecurityGroup (..),
    ec2SecurityGroup,
    esgStatus,
    esgEC2SecurityGroupOwnerId,
    esgEC2SecurityGroupName,

    -- * Endpoint
    Endpoint (..),
    endpoint,
    eAddress,
    ePort,

    -- * EngineDefaults
    EngineDefaults (..),
    engineDefaults,
    edCacheNodeTypeSpecificParameters,
    edCacheParameterGroupFamily,
    edParameters,
    edMarker,

    -- * Event
    Event (..),
    event,
    eMessage,
    eDate,
    eSourceIdentifier,
    eSourceType,

    -- * Filter
    Filter (..),
    filter',
    fName,
    fValues,

    -- * GlobalNodeGroup
    GlobalNodeGroup (..),
    globalNodeGroup,
    gngGlobalNodeGroupId,
    gngSlots,

    -- * GlobalReplicationGroup
    GlobalReplicationGroup (..),
    globalReplicationGroup,
    grgClusterEnabled,
    grgStatus,
    grgARN,
    grgGlobalReplicationGroupId,
    grgAtRestEncryptionEnabled,
    grgGlobalNodeGroups,
    grgEngineVersion,
    grgCacheNodeType,
    grgGlobalReplicationGroupDescription,
    grgEngine,
    grgAuthTokenEnabled,
    grgMembers,
    grgTransitEncryptionEnabled,

    -- * GlobalReplicationGroupInfo
    GlobalReplicationGroupInfo (..),
    globalReplicationGroupInfo,
    grgiGlobalReplicationGroupMemberRole,
    grgiGlobalReplicationGroupId,

    -- * GlobalReplicationGroupMember
    GlobalReplicationGroupMember (..),
    globalReplicationGroupMember,
    grgmStatus,
    grgmAutomaticFailover,
    grgmReplicationGroupId,
    grgmReplicationGroupRegion,
    grgmRole,

    -- * NodeGroup
    NodeGroup (..),
    nodeGroup,
    ngStatus,
    ngReaderEndpoint,
    ngNodeGroupId,
    ngPrimaryEndpoint,
    ngSlots,
    ngNodeGroupMembers,

    -- * NodeGroupConfiguration
    NodeGroupConfiguration (..),
    nodeGroupConfiguration,
    ngcPrimaryOutpostARN,
    ngcReplicaCount,
    ngcReplicaOutpostARNs,
    ngcNodeGroupId,
    ngcSlots,
    ngcReplicaAvailabilityZones,
    ngcPrimaryAvailabilityZone,

    -- * NodeGroupMember
    NodeGroupMember (..),
    nodeGroupMember,
    ngmCacheClusterId,
    ngmPreferredAvailabilityZone,
    ngmReadEndpoint,
    ngmCacheNodeId,
    ngmPreferredOutpostARN,
    ngmCurrentRole,

    -- * NodeGroupMemberUpdateStatus
    NodeGroupMemberUpdateStatus (..),
    nodeGroupMemberUpdateStatus,
    ngmusCacheClusterId,
    ngmusNodeUpdateStatusModifiedDate,
    ngmusNodeUpdateStatus,
    ngmusNodeUpdateInitiatedBy,
    ngmusNodeUpdateInitiatedDate,
    ngmusCacheNodeId,
    ngmusNodeDeletionDate,
    ngmusNodeUpdateStartDate,
    ngmusNodeUpdateEndDate,

    -- * NodeGroupUpdateStatus
    NodeGroupUpdateStatus (..),
    nodeGroupUpdateStatus,
    ngusNodeGroupId,
    ngusNodeGroupMemberUpdateStatus,

    -- * NodeSnapshot
    NodeSnapshot (..),
    nodeSnapshot,
    nsNodeGroupConfiguration,
    nsCacheSize,
    nsCacheClusterId,
    nsSnapshotCreateTime,
    nsCacheNodeCreateTime,
    nsNodeGroupId,
    nsCacheNodeId,

    -- * NotificationConfiguration
    NotificationConfiguration (..),
    notificationConfiguration,
    ncTopicStatus,
    ncTopicARN,

    -- * Parameter
    Parameter (..),
    parameter,
    pChangeType,
    pAllowedValues,
    pSource,
    pParameterValue,
    pParameterName,
    pDescription,
    pDataType,
    pIsModifiable,
    pMinimumEngineVersion,

    -- * ParameterNameValue
    ParameterNameValue (..),
    parameterNameValue,
    pnvParameterValue,
    pnvParameterName,

    -- * PendingModifiedValues
    PendingModifiedValues (..),
    pendingModifiedValues,
    pmvNumCacheNodes,
    pmvCacheNodeIdsToRemove,
    pmvAuthTokenStatus,
    pmvEngineVersion,
    pmvCacheNodeType,

    -- * ProcessedUpdateAction
    ProcessedUpdateAction (..),
    processedUpdateAction,
    puaReplicationGroupId,
    puaUpdateActionStatus,
    puaCacheClusterId,
    puaServiceUpdateName,

    -- * RecurringCharge
    RecurringCharge (..),
    recurringCharge,
    rcRecurringChargeFrequency,
    rcRecurringChargeAmount,

    -- * RegionalConfiguration
    RegionalConfiguration (..),
    regionalConfiguration,
    rcReplicationGroupId,
    rcReplicationGroupRegion,
    rcReshardingConfiguration,

    -- * ReplicationGroup
    ReplicationGroup (..),
    replicationGroup,
    rgClusterEnabled,
    rgStatus,
    rgNodeGroups,
    rgAutomaticFailover,
    rgMemberClustersOutpostARNs,
    rgMemberClusters,
    rgGlobalReplicationGroupInfo,
    rgReplicationGroupId,
    rgUserGroupIds,
    rgSnapshotWindow,
    rgARN,
    rgSnapshotRetentionLimit,
    rgMultiAZ,
    rgAtRestEncryptionEnabled,
    rgKMSKeyId,
    rgSnapshottingClusterId,
    rgCacheNodeType,
    rgAuthTokenLastModifiedDate,
    rgAuthTokenEnabled,
    rgDescription,
    rgPendingModifiedValues,
    rgConfigurationEndpoint,
    rgTransitEncryptionEnabled,

    -- * ReplicationGroupPendingModifiedValues
    ReplicationGroupPendingModifiedValues (..),
    replicationGroupPendingModifiedValues,
    rgpmvResharding,
    rgpmvPrimaryClusterId,
    rgpmvAuthTokenStatus,
    rgpmvUserGroups,
    rgpmvAutomaticFailoverStatus,

    -- * ReservedCacheNode
    ReservedCacheNode (..),
    reservedCacheNode,
    rcnReservedCacheNodesOfferingId,
    rcnDuration,
    rcnStartTime,
    rcnState,
    rcnCacheNodeCount,
    rcnCacheNodeType,
    rcnFixedPrice,
    rcnUsagePrice,
    rcnOfferingType,
    rcnRecurringCharges,
    rcnProductDescription,
    rcnReservedCacheNodeId,
    rcnReservationARN,

    -- * ReservedCacheNodesOffering
    ReservedCacheNodesOffering (..),
    reservedCacheNodesOffering,
    rcnoReservedCacheNodesOfferingId,
    rcnoDuration,
    rcnoCacheNodeType,
    rcnoFixedPrice,
    rcnoUsagePrice,
    rcnoOfferingType,
    rcnoRecurringCharges,
    rcnoProductDescription,

    -- * ReshardingConfiguration
    ReshardingConfiguration (..),
    reshardingConfiguration,
    rcPreferredAvailabilityZones,
    rcNodeGroupId,

    -- * ReshardingStatus
    ReshardingStatus (..),
    reshardingStatus,
    rsSlotMigration,

    -- * SecurityGroupMembership
    SecurityGroupMembership (..),
    securityGroupMembership,
    sgmStatus,
    sgmSecurityGroupId,

    -- * ServiceUpdate
    ServiceUpdate (..),
    serviceUpdate,
    suServiceUpdateSeverity,
    suAutoUpdateAfterRecommendedApplyByDate,
    suServiceUpdateReleaseDate,
    suServiceUpdateStatus,
    suServiceUpdateRecommendedApplyByDate,
    suServiceUpdateEndDate,
    suEngineVersion,
    suServiceUpdateType,
    suEstimatedUpdateTime,
    suEngine,
    suServiceUpdateName,
    suServiceUpdateDescription,

    -- * SlotMigration
    SlotMigration (..),
    slotMigration,
    smProgressPercentage,

    -- * Snapshot
    Snapshot (..),
    snapshot,
    sCacheClusterCreateTime,
    sNodeSnapshots,
    sAutomaticFailover,
    sNumCacheNodes,
    sReplicationGroupId,
    sCacheClusterId,
    sSnapshotWindow,
    sSnapshotStatus,
    sARN,
    sReplicationGroupDescription,
    sCacheParameterGroupName,
    sSnapshotRetentionLimit,
    sNumNodeGroups,
    sPreferredAvailabilityZone,
    sKMSKeyId,
    sCacheSubnetGroupName,
    sEngineVersion,
    sPreferredMaintenanceWindow,
    sCacheNodeType,
    sTopicARN,
    sPort,
    sSnapshotSource,
    sEngine,
    sPreferredOutpostARN,
    sSnapshotName,
    sVPCId,
    sAutoMinorVersionUpgrade,

    -- * Subnet
    Subnet (..),
    subnet,
    sSubnetIdentifier,
    sSubnetAvailabilityZone,
    sSubnetOutpost,

    -- * SubnetOutpost
    SubnetOutpost (..),
    subnetOutpost,
    soSubnetOutpostARN,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * TagListMessage
    TagListMessage (..),
    tagListMessage,
    tlmTagList,

    -- * TimeRangeFilter
    TimeRangeFilter (..),
    timeRangeFilter,
    trfStartTime,
    trfEndTime,

    -- * UnprocessedUpdateAction
    UnprocessedUpdateAction (..),
    unprocessedUpdateAction,
    uuaReplicationGroupId,
    uuaCacheClusterId,
    uuaErrorType,
    uuaErrorMessage,
    uuaServiceUpdateName,

    -- * UpdateAction
    UpdateAction (..),
    updateAction,
    uaServiceUpdateSeverity,
    uaServiceUpdateReleaseDate,
    uaReplicationGroupId,
    uaUpdateActionStatus,
    uaCacheClusterId,
    uaServiceUpdateStatus,
    uaSlaMet,
    uaUpdateActionAvailableDate,
    uaNodeGroupUpdateStatus,
    uaServiceUpdateRecommendedApplyByDate,
    uaServiceUpdateType,
    uaCacheNodeUpdateStatus,
    uaNodesUpdated,
    uaEstimatedUpdateTime,
    uaUpdateActionStatusModifiedDate,
    uaEngine,
    uaServiceUpdateName,

    -- * UpdateActionResultsMessage
    UpdateActionResultsMessage (..),
    updateActionResultsMessage,
    uarmProcessedUpdateActions,
    uarmUnprocessedUpdateActions,

    -- * User
    User (..),
    user,
    uStatus,
    uAccessString,
    uUserGroupIds,
    uAuthentication,
    uARN,
    uUserId,
    uEngine,
    uUserName,

    -- * UserGroup
    UserGroup (..),
    userGroup,
    ugStatus,
    ugReplicationGroups,
    ugARN,
    ugUserIds,
    ugEngine,
    ugUserGroupId,
    ugPendingChanges,

    -- * UserGroupPendingChanges
    UserGroupPendingChanges (..),
    userGroupPendingChanges,
    ugpcUserIdsToRemove,
    ugpcUserIdsToAdd,

    -- * UserGroupsUpdateStatus
    UserGroupsUpdateStatus (..),
    userGroupsUpdateStatus,
    ugusUserGroupIdsToRemove,
    ugusUserGroupIdsToAdd,
  )
where

import Network.AWS.ElastiCache.Types.AZMode
import Network.AWS.ElastiCache.Types.AuthTokenUpdateStatus
import Network.AWS.ElastiCache.Types.AuthTokenUpdateStrategyType
import Network.AWS.ElastiCache.Types.Authentication
import Network.AWS.ElastiCache.Types.AuthenticationType
import Network.AWS.ElastiCache.Types.AutomaticFailoverStatus
import Network.AWS.ElastiCache.Types.AvailabilityZone
import Network.AWS.ElastiCache.Types.CacheCluster
import Network.AWS.ElastiCache.Types.CacheEngineVersion
import Network.AWS.ElastiCache.Types.CacheNode
import Network.AWS.ElastiCache.Types.CacheNodeTypeSpecificParameter
import Network.AWS.ElastiCache.Types.CacheNodeTypeSpecificValue
import Network.AWS.ElastiCache.Types.CacheNodeUpdateStatus
import Network.AWS.ElastiCache.Types.CacheParameterGroup
import Network.AWS.ElastiCache.Types.CacheParameterGroupNameMessage
import Network.AWS.ElastiCache.Types.CacheParameterGroupStatus
import Network.AWS.ElastiCache.Types.CacheSecurityGroup
import Network.AWS.ElastiCache.Types.CacheSecurityGroupMembership
import Network.AWS.ElastiCache.Types.CacheSubnetGroup
import Network.AWS.ElastiCache.Types.ChangeType
import Network.AWS.ElastiCache.Types.ConfigureShard
import Network.AWS.ElastiCache.Types.CustomerNodeEndpoint
import Network.AWS.ElastiCache.Types.EC2SecurityGroup
import Network.AWS.ElastiCache.Types.Endpoint
import Network.AWS.ElastiCache.Types.EngineDefaults
import Network.AWS.ElastiCache.Types.Event
import Network.AWS.ElastiCache.Types.Filter
import Network.AWS.ElastiCache.Types.GlobalNodeGroup
import Network.AWS.ElastiCache.Types.GlobalReplicationGroup
import Network.AWS.ElastiCache.Types.GlobalReplicationGroupInfo
import Network.AWS.ElastiCache.Types.GlobalReplicationGroupMember
import Network.AWS.ElastiCache.Types.MultiAZStatus
import Network.AWS.ElastiCache.Types.NodeGroup
import Network.AWS.ElastiCache.Types.NodeGroupConfiguration
import Network.AWS.ElastiCache.Types.NodeGroupMember
import Network.AWS.ElastiCache.Types.NodeGroupMemberUpdateStatus
import Network.AWS.ElastiCache.Types.NodeGroupUpdateStatus
import Network.AWS.ElastiCache.Types.NodeSnapshot
import Network.AWS.ElastiCache.Types.NodeUpdateInitiatedBy
import Network.AWS.ElastiCache.Types.NodeUpdateStatus
import Network.AWS.ElastiCache.Types.NotificationConfiguration
import Network.AWS.ElastiCache.Types.OutpostMode
import Network.AWS.ElastiCache.Types.Parameter
import Network.AWS.ElastiCache.Types.ParameterNameValue
import Network.AWS.ElastiCache.Types.PendingAutomaticFailoverStatus
import Network.AWS.ElastiCache.Types.PendingModifiedValues
import Network.AWS.ElastiCache.Types.ProcessedUpdateAction
import Network.AWS.ElastiCache.Types.RecurringCharge
import Network.AWS.ElastiCache.Types.RegionalConfiguration
import Network.AWS.ElastiCache.Types.ReplicationGroup
import Network.AWS.ElastiCache.Types.ReplicationGroupPendingModifiedValues
import Network.AWS.ElastiCache.Types.ReservedCacheNode
import Network.AWS.ElastiCache.Types.ReservedCacheNodesOffering
import Network.AWS.ElastiCache.Types.ReshardingConfiguration
import Network.AWS.ElastiCache.Types.ReshardingStatus
import Network.AWS.ElastiCache.Types.SecurityGroupMembership
import Network.AWS.ElastiCache.Types.ServiceUpdate
import Network.AWS.ElastiCache.Types.ServiceUpdateSeverity
import Network.AWS.ElastiCache.Types.ServiceUpdateStatus
import Network.AWS.ElastiCache.Types.ServiceUpdateType
import Network.AWS.ElastiCache.Types.SlaMet
import Network.AWS.ElastiCache.Types.SlotMigration
import Network.AWS.ElastiCache.Types.Snapshot
import Network.AWS.ElastiCache.Types.SourceType
import Network.AWS.ElastiCache.Types.Subnet
import Network.AWS.ElastiCache.Types.SubnetOutpost
import Network.AWS.ElastiCache.Types.Tag
import Network.AWS.ElastiCache.Types.TagListMessage
import Network.AWS.ElastiCache.Types.TimeRangeFilter
import Network.AWS.ElastiCache.Types.UnprocessedUpdateAction
import Network.AWS.ElastiCache.Types.UpdateAction
import Network.AWS.ElastiCache.Types.UpdateActionResultsMessage
import Network.AWS.ElastiCache.Types.UpdateActionStatus
import Network.AWS.ElastiCache.Types.User
import Network.AWS.ElastiCache.Types.UserGroup
import Network.AWS.ElastiCache.Types.UserGroupPendingChanges
import Network.AWS.ElastiCache.Types.UserGroupsUpdateStatus
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2015-02-02@ of the Amazon ElastiCache SDK configuration.
elastiCache :: Service
elastiCache =
  Service
    { _svcAbbrev = "ElastiCache",
      _svcSigner = v4,
      _svcPrefix = "elasticache",
      _svcVersion = "2015-02-02",
      _svcEndpoint = defaultEndpoint elastiCache,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseXMLError "ElastiCache",
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

-- | The requested subnet is being used by another cache subnet group.
_SubnetInUse :: AsError a => Getting (First ServiceError) a ServiceError
_SubnetInUse =
  _MatchServiceError elastiCache "SubnetInUse"
    . hasStatus 400

-- | The request cannot be processed because it would exceed the allowed number of cache subnet groups.
_CacheSubnetGroupQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_CacheSubnetGroupQuotaExceededFault =
  _MatchServiceError
    elastiCache
    "CacheSubnetGroupQuotaExceeded"
    . hasStatus 400

-- | The VPC network is in an invalid state.
_InvalidVPCNetworkStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidVPCNetworkStateFault =
  _MatchServiceError
    elastiCache
    "InvalidVPCNetworkStateFault"
    . hasStatus 400

-- | The requested cluster ID does not refer to an existing cluster.
_CacheClusterNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_CacheClusterNotFoundFault =
  _MatchServiceError
    elastiCache
    "CacheClusterNotFound"
    . hasStatus 404

-- | The requested replication group is not in the @available@ state.
_InvalidReplicationGroupStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidReplicationGroupStateFault =
  _MatchServiceError
    elastiCache
    "InvalidReplicationGroupState"
    . hasStatus 400

-- | At least one subnet ID does not match the other subnet IDs. This mismatch typically occurs when a user sets one subnet ID to a regional Availability Zone and a different one to an outpost. Or when a user sets the subnet ID to an Outpost when not subscribed on this service.
_SubnetNotAllowedFault :: AsError a => Getting (First ServiceError) a ServiceError
_SubnetNotAllowedFault =
  _MatchServiceError
    elastiCache
    "SubnetNotAllowedFault"
    . hasStatus 400

-- | The requested cache subnet group name is already in use by an existing cache subnet group.
_CacheSubnetGroupAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_CacheSubnetGroupAlreadyExistsFault =
  _MatchServiceError
    elastiCache
    "CacheSubnetGroupAlreadyExists"
    . hasStatus 400

-- | The @TestFailover@ action is not available.
_TestFailoverNotAvailableFault :: AsError a => Getting (First ServiceError) a ServiceError
_TestFailoverNotAvailableFault =
  _MatchServiceError
    elastiCache
    "TestFailoverNotAvailableFault"
    . hasStatus 400

-- | The Global Datastore name already exists.
_GlobalReplicationGroupAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_GlobalReplicationGroupAlreadyExistsFault =
  _MatchServiceError
    elastiCache
    "GlobalReplicationGroupAlreadyExistsFault"
    . hasStatus 400

-- | You attempted one of the following operations:
--
--
--     * Creating a snapshot of a Redis cluster running on a @cache.t1.micro@ cache node.
--
--     * Creating a snapshot of a cluster that is running Memcached rather than Redis.
--
--
--
-- Neither of these are supported by ElastiCache.
_SnapshotFeatureNotSupportedFault :: AsError a => Getting (First ServiceError) a ServiceError
_SnapshotFeatureNotSupportedFault =
  _MatchServiceError
    elastiCache
    "SnapshotFeatureNotSupportedFault"
    . hasStatus 400

-- | The number of users exceeds the user group limit.
_UserGroupQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_UserGroupQuotaExceededFault =
  _MatchServiceError
    elastiCache
    "UserGroupQuotaExceeded"
    . hasStatus 400

-- | The KMS key supplied is not valid.
_InvalidKMSKeyFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidKMSKeyFault =
  _MatchServiceError elastiCache "InvalidKMSKeyFault"
    . hasStatus 400

-- | The current state of the cache security group does not allow deletion.
_InvalidCacheSecurityGroupStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidCacheSecurityGroupStateFault =
  _MatchServiceError
    elastiCache
    "InvalidCacheSecurityGroupState"
    . hasStatus 400

-- | The requested reserved cache node was not found.
_ReservedCacheNodeNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_ReservedCacheNodeNotFoundFault =
  _MatchServiceError
    elastiCache
    "ReservedCacheNodeNotFound"
    . hasStatus 404

-- | The specified service linked role (SLR) was not found.
_ServiceLinkedRoleNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceLinkedRoleNotFoundFault =
  _MatchServiceError
    elastiCache
    "ServiceLinkedRoleNotFoundFault"
    . hasStatus 400

-- | The customer has exceeded the allowed rate of API calls.
_APICallRateForCustomerExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_APICallRateForCustomerExceededFault =
  _MatchServiceError
    elastiCache
    "APICallRateForCustomerExceeded"
    . hasStatus 400

-- | The current state of the cache parameter group does not allow the requested operation to occur.
_InvalidCacheParameterGroupStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidCacheParameterGroupStateFault =
  _MatchServiceError
    elastiCache
    "InvalidCacheParameterGroupState"
    . hasStatus 400

-- | The quota of users has been exceeded.
_UserQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_UserQuotaExceededFault =
  _MatchServiceError elastiCache "UserQuotaExceeded"
    . hasStatus 400

-- | The operation was not performed because no changes were required.
_NoOperationFault :: AsError a => Getting (First ServiceError) a ServiceError
_NoOperationFault =
  _MatchServiceError elastiCache "NoOperationFault"
    . hasStatus 400

-- | Two or more incompatible parameters were specified.
_InvalidParameterCombinationException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterCombinationException =
  _MatchServiceError
    elastiCache
    "InvalidParameterCombination"
    . hasStatus 400

-- | A cache parameter group with the requested name already exists.
_CacheParameterGroupAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_CacheParameterGroupAlreadyExistsFault =
  _MatchServiceError
    elastiCache
    "CacheParameterGroupAlreadyExists"
    . hasStatus 400

-- | The request cannot be processed because it would exceed the maximum number of snapshots.
_SnapshotQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_SnapshotQuotaExceededFault =
  _MatchServiceError
    elastiCache
    "SnapshotQuotaExceededFault"
    . hasStatus 400

-- | The requested tag was not found on this resource.
_TagNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_TagNotFoundFault =
  _MatchServiceError elastiCache "TagNotFound"
    . hasStatus 404

-- | The request cannot be processed because it would exceed the allowed number of subnets in a cache subnet group.
_CacheSubnetQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_CacheSubnetQuotaExceededFault =
  _MatchServiceError
    elastiCache
    "CacheSubnetQuotaExceededFault"
    . hasStatus 400

-- | You already have a snapshot with the given name.
_SnapshotAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_SnapshotAlreadyExistsFault =
  _MatchServiceError
    elastiCache
    "SnapshotAlreadyExistsFault"
    . hasStatus 400

-- | The request cannot be processed because it would exceed the allowed number of cache nodes per customer.
_NodeQuotaForCustomerExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_NodeQuotaForCustomerExceededFault =
  _MatchServiceError
    elastiCache
    "NodeQuotaForCustomerExceeded"
    . hasStatus 400

-- | The user does not exist or could not be found.
_UserNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_UserNotFoundFault =
  _MatchServiceError elastiCache "UserNotFound"
    . hasStatus 404

-- | The requested cache node type is not available in the specified Availability Zone. For more information, see <http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ErrorMessages.html#ErrorMessages.INSUFFICIENT_CACHE_CLUSTER_CAPACITY InsufficientCacheClusterCapacity> in the ElastiCache User Guide.
_InsufficientCacheClusterCapacityFault :: AsError a => Getting (First ServiceError) a ServiceError
_InsufficientCacheClusterCapacityFault =
  _MatchServiceError
    elastiCache
    "InsufficientCacheClusterCapacity"
    . hasStatus 400

-- | The user is not in active state.
_InvalidUserStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidUserStateFault =
  _MatchServiceError elastiCache "InvalidUserState"
    . hasStatus 400

-- | The service update doesn't exist
_ServiceUpdateNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceUpdateNotFoundFault =
  _MatchServiceError
    elastiCache
    "ServiceUpdateNotFoundFault"
    . hasStatus 404

-- | The requested snapshot name does not refer to an existing snapshot.
_SnapshotNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_SnapshotNotFoundFault =
  _MatchServiceError
    elastiCache
    "SnapshotNotFoundFault"
    . hasStatus 404

-- | The user group with this ID already exists.
_UserGroupAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_UserGroupAlreadyExistsFault =
  _MatchServiceError
    elastiCache
    "UserGroupAlreadyExists"
    . hasStatus 400

-- | The user group is not in an active state.
_InvalidUserGroupStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidUserGroupStateFault =
  _MatchServiceError
    elastiCache
    "InvalidUserGroupState"
    . hasStatus 400

-- | The requested cluster is not in the @available@ state.
_InvalidCacheClusterStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidCacheClusterStateFault =
  _MatchServiceError
    elastiCache
    "InvalidCacheClusterState"
    . hasStatus 400

-- | The user group was not found or does not exist
_UserGroupNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_UserGroupNotFoundFault =
  _MatchServiceError elastiCache "UserGroupNotFound"
    . hasStatus 404

-- | The request cannot be processed because it would exceed the maximum allowed number of node groups (shards) in a single replication group. The default maximum is 90
_NodeGroupsPerReplicationGroupQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_NodeGroupsPerReplicationGroupQuotaExceededFault =
  _MatchServiceError
    elastiCache
    "NodeGroupsPerReplicationGroupQuotaExceeded"
    . hasStatus 400

-- | The specified replication group already exists.
_ReplicationGroupAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_ReplicationGroupAlreadyExistsFault =
  _MatchServiceError
    elastiCache
    "ReplicationGroupAlreadyExists"
    . hasStatus 400

-- | The specified Amazon EC2 security group is already authorized for the specified cache security group.
_AuthorizationAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_AuthorizationAlreadyExistsFault =
  _MatchServiceError
    elastiCache
    "AuthorizationAlreadyExists"
    . hasStatus 400

-- | The request cannot be processed because it would exceed the user's cache node quota.
_ReservedCacheNodeQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_ReservedCacheNodeQuotaExceededFault =
  _MatchServiceError
    elastiCache
    "ReservedCacheNodeQuotaExceeded"
    . hasStatus 400

-- | The value for a parameter is invalid.
_InvalidParameterValueException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterValueException =
  _MatchServiceError
    elastiCache
    "InvalidParameterValue"
    . hasStatus 400

-- | The requested cache security group name does not refer to an existing cache security group.
_CacheSecurityGroupNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_CacheSecurityGroupNotFoundFault =
  _MatchServiceError
    elastiCache
    "CacheSecurityGroupNotFound"
    . hasStatus 404

-- | You already have a reservation with the given identifier.
_ReservedCacheNodeAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_ReservedCacheNodeAlreadyExistsFault =
  _MatchServiceError
    elastiCache
    "ReservedCacheNodeAlreadyExists"
    . hasStatus 404

-- | The requested cache subnet group is currently in use.
_CacheSubnetGroupInUse :: AsError a => Getting (First ServiceError) a ServiceError
_CacheSubnetGroupInUse =
  _MatchServiceError
    elastiCache
    "CacheSubnetGroupInUse"
    . hasStatus 400

-- | The Global Datastore is not available or in primary-only state.
_InvalidGlobalReplicationGroupStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidGlobalReplicationGroupStateFault =
  _MatchServiceError
    elastiCache
    "InvalidGlobalReplicationGroupState"
    . hasStatus 400

-- | The Global Datastore does not exist
_GlobalReplicationGroupNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_GlobalReplicationGroupNotFoundFault =
  _MatchServiceError
    elastiCache
    "GlobalReplicationGroupNotFoundFault"
    . hasStatus 404

-- | The requested cache subnet group name does not refer to an existing cache subnet group.
_CacheSubnetGroupNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_CacheSubnetGroupNotFoundFault =
  _MatchServiceError
    elastiCache
    "CacheSubnetGroupNotFoundFault"
    . hasStatus 400

-- | A cache security group with the specified name already exists.
_CacheSecurityGroupAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_CacheSecurityGroupAlreadyExistsFault =
  _MatchServiceError
    elastiCache
    "CacheSecurityGroupAlreadyExists"
    . hasStatus 400

-- | The requested Amazon Resource Name (ARN) does not refer to an existing resource.
_InvalidARNFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidARNFault =
  _MatchServiceError elastiCache "InvalidARN"
    . hasStatus 400

-- | The node group specified by the @NodeGroupId@ parameter could not be found. Please verify that the node group exists and that you spelled the @NodeGroupId@ value correctly.
_NodeGroupNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_NodeGroupNotFoundFault =
  _MatchServiceError
    elastiCache
    "NodeGroupNotFoundFault"
    . hasStatus 404

-- | The request cannot be processed because it would exceed the allowed number of cache nodes in a single cluster.
_NodeQuotaForClusterExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_NodeQuotaForClusterExceededFault =
  _MatchServiceError
    elastiCache
    "NodeQuotaForClusterExceeded"
    . hasStatus 400

-- | The targeted replication group is not available.
_ReplicationGroupAlreadyUnderMigrationFault :: AsError a => Getting (First ServiceError) a ServiceError
_ReplicationGroupAlreadyUnderMigrationFault =
  _MatchServiceError
    elastiCache
    "ReplicationGroupAlreadyUnderMigrationFault"
    . hasStatus 400

-- | You must add default user to a user group.
_DefaultUserRequired :: AsError a => Getting (First ServiceError) a ServiceError
_DefaultUserRequired =
  _MatchServiceError
    elastiCache
    "DefaultUserRequired"
    . hasStatus 400

-- | The requested cache parameter group name does not refer to an existing cache parameter group.
_CacheParameterGroupNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_CacheParameterGroupNotFoundFault =
  _MatchServiceError
    elastiCache
    "CacheParameterGroupNotFound"
    . hasStatus 404

-- | A user with this username already exists.
_DuplicateUserNameFault :: AsError a => Getting (First ServiceError) a ServiceError
_DuplicateUserNameFault =
  _MatchServiceError elastiCache "DuplicateUserName"
    . hasStatus 400

-- | The current state of the snapshot does not allow the requested operation to occur.
_InvalidSnapshotStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidSnapshotStateFault =
  _MatchServiceError
    elastiCache
    "InvalidSnapshotState"
    . hasStatus 400

-- | The designated replication group is not available for data migration.
_ReplicationGroupNotUnderMigrationFault :: AsError a => Getting (First ServiceError) a ServiceError
_ReplicationGroupNotUnderMigrationFault =
  _MatchServiceError
    elastiCache
    "ReplicationGroupNotUnderMigrationFault"
    . hasStatus 400

-- | A user with this ID already exists.
_UserAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_UserAlreadyExistsFault =
  _MatchServiceError elastiCache "UserAlreadyExists"
    . hasStatus 400

-- |
_DefaultUserAssociatedToUserGroupFault :: AsError a => Getting (First ServiceError) a ServiceError
_DefaultUserAssociatedToUserGroupFault =
  _MatchServiceError
    elastiCache
    "DefaultUserAssociatedToUserGroup"
    . hasStatus 400

-- | The request cannot be processed because it would exceed the maximum number of cache security groups.
_CacheParameterGroupQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_CacheParameterGroupQuotaExceededFault =
  _MatchServiceError
    elastiCache
    "CacheParameterGroupQuotaExceeded"
    . hasStatus 400

-- | The specified Amazon EC2 security group is not authorized for the specified cache security group.
_AuthorizationNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_AuthorizationNotFoundFault =
  _MatchServiceError
    elastiCache
    "AuthorizationNotFound"
    . hasStatus 404

-- | The requested cache node offering does not exist.
_ReservedCacheNodesOfferingNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_ReservedCacheNodesOfferingNotFoundFault =
  _MatchServiceError
    elastiCache
    "ReservedCacheNodesOfferingNotFound"
    . hasStatus 404

-- | An invalid subnet identifier was specified.
_InvalidSubnet :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidSubnet =
  _MatchServiceError elastiCache "InvalidSubnet"
    . hasStatus 400

-- | The request cannot be processed because it would exceed the allowed number of clusters per customer.
_ClusterQuotaForCustomerExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterQuotaForCustomerExceededFault =
  _MatchServiceError
    elastiCache
    "ClusterQuotaForCustomerExceeded"
    . hasStatus 400

-- | The specified replication group does not exist.
_ReplicationGroupNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_ReplicationGroupNotFoundFault =
  _MatchServiceError
    elastiCache
    "ReplicationGroupNotFoundFault"
    . hasStatus 404

-- | You already have a cluster with the given identifier.
_CacheClusterAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_CacheClusterAlreadyExistsFault =
  _MatchServiceError
    elastiCache
    "CacheClusterAlreadyExists"
    . hasStatus 400

-- | The request cannot be processed because it would cause the resource to have more than the allowed number of tags. The maximum number of tags permitted on a resource is 50.
_TagQuotaPerResourceExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_TagQuotaPerResourceExceeded =
  _MatchServiceError
    elastiCache
    "TagQuotaPerResourceExceeded"
    . hasStatus 400

-- | The request cannot be processed because it would exceed the allowed number of cache security groups.
_CacheSecurityGroupQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_CacheSecurityGroupQuotaExceededFault =
  _MatchServiceError
    elastiCache
    "QuotaExceeded.CacheSecurityGroup"
    . hasStatus 400
