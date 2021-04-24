{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Amazon ElastiCache__
--
-- Amazon ElastiCache is a web service that makes it easier to set up, operate, and scale a distributed cache in the cloud.
--
-- With ElastiCache, customers get all of the benefits of a high-performance, in-memory cache with less of the administrative burden involved in launching and managing a distributed cache. The service makes setup, scaling, and cluster failure handling much simpler than in a self-managed cache deployment.
--
-- In addition, through integration with Amazon CloudWatch, customers get enhanced visibility into the key performance statistics associated with their cache and can receive alarms if a part of their cache runs hot.
module Network.AWS.ElastiCache
  ( -- * Service Configuration
    elastiCache,

    -- * Errors
    -- $errors

    -- ** SubnetInUse
    _SubnetInUse,

    -- ** CacheSubnetGroupQuotaExceededFault
    _CacheSubnetGroupQuotaExceededFault,

    -- ** InvalidVPCNetworkStateFault
    _InvalidVPCNetworkStateFault,

    -- ** CacheClusterNotFoundFault
    _CacheClusterNotFoundFault,

    -- ** InvalidReplicationGroupStateFault
    _InvalidReplicationGroupStateFault,

    -- ** SubnetNotAllowedFault
    _SubnetNotAllowedFault,

    -- ** CacheSubnetGroupAlreadyExistsFault
    _CacheSubnetGroupAlreadyExistsFault,

    -- ** TestFailoverNotAvailableFault
    _TestFailoverNotAvailableFault,

    -- ** GlobalReplicationGroupAlreadyExistsFault
    _GlobalReplicationGroupAlreadyExistsFault,

    -- ** SnapshotFeatureNotSupportedFault
    _SnapshotFeatureNotSupportedFault,

    -- ** UserGroupQuotaExceededFault
    _UserGroupQuotaExceededFault,

    -- ** InvalidKMSKeyFault
    _InvalidKMSKeyFault,

    -- ** InvalidCacheSecurityGroupStateFault
    _InvalidCacheSecurityGroupStateFault,

    -- ** ReservedCacheNodeNotFoundFault
    _ReservedCacheNodeNotFoundFault,

    -- ** ServiceLinkedRoleNotFoundFault
    _ServiceLinkedRoleNotFoundFault,

    -- ** APICallRateForCustomerExceededFault
    _APICallRateForCustomerExceededFault,

    -- ** InvalidCacheParameterGroupStateFault
    _InvalidCacheParameterGroupStateFault,

    -- ** UserQuotaExceededFault
    _UserQuotaExceededFault,

    -- ** NoOperationFault
    _NoOperationFault,

    -- ** InvalidParameterCombinationException
    _InvalidParameterCombinationException,

    -- ** CacheParameterGroupAlreadyExistsFault
    _CacheParameterGroupAlreadyExistsFault,

    -- ** SnapshotQuotaExceededFault
    _SnapshotQuotaExceededFault,

    -- ** TagNotFoundFault
    _TagNotFoundFault,

    -- ** CacheSubnetQuotaExceededFault
    _CacheSubnetQuotaExceededFault,

    -- ** SnapshotAlreadyExistsFault
    _SnapshotAlreadyExistsFault,

    -- ** NodeQuotaForCustomerExceededFault
    _NodeQuotaForCustomerExceededFault,

    -- ** UserNotFoundFault
    _UserNotFoundFault,

    -- ** InsufficientCacheClusterCapacityFault
    _InsufficientCacheClusterCapacityFault,

    -- ** InvalidUserStateFault
    _InvalidUserStateFault,

    -- ** ServiceUpdateNotFoundFault
    _ServiceUpdateNotFoundFault,

    -- ** SnapshotNotFoundFault
    _SnapshotNotFoundFault,

    -- ** UserGroupAlreadyExistsFault
    _UserGroupAlreadyExistsFault,

    -- ** InvalidUserGroupStateFault
    _InvalidUserGroupStateFault,

    -- ** InvalidCacheClusterStateFault
    _InvalidCacheClusterStateFault,

    -- ** UserGroupNotFoundFault
    _UserGroupNotFoundFault,

    -- ** NodeGroupsPerReplicationGroupQuotaExceededFault
    _NodeGroupsPerReplicationGroupQuotaExceededFault,

    -- ** ReplicationGroupAlreadyExistsFault
    _ReplicationGroupAlreadyExistsFault,

    -- ** AuthorizationAlreadyExistsFault
    _AuthorizationAlreadyExistsFault,

    -- ** ReservedCacheNodeQuotaExceededFault
    _ReservedCacheNodeQuotaExceededFault,

    -- ** InvalidParameterValueException
    _InvalidParameterValueException,

    -- ** CacheSecurityGroupNotFoundFault
    _CacheSecurityGroupNotFoundFault,

    -- ** ReservedCacheNodeAlreadyExistsFault
    _ReservedCacheNodeAlreadyExistsFault,

    -- ** CacheSubnetGroupInUse
    _CacheSubnetGroupInUse,

    -- ** InvalidGlobalReplicationGroupStateFault
    _InvalidGlobalReplicationGroupStateFault,

    -- ** GlobalReplicationGroupNotFoundFault
    _GlobalReplicationGroupNotFoundFault,

    -- ** CacheSubnetGroupNotFoundFault
    _CacheSubnetGroupNotFoundFault,

    -- ** CacheSecurityGroupAlreadyExistsFault
    _CacheSecurityGroupAlreadyExistsFault,

    -- ** InvalidARNFault
    _InvalidARNFault,

    -- ** NodeGroupNotFoundFault
    _NodeGroupNotFoundFault,

    -- ** NodeQuotaForClusterExceededFault
    _NodeQuotaForClusterExceededFault,

    -- ** ReplicationGroupAlreadyUnderMigrationFault
    _ReplicationGroupAlreadyUnderMigrationFault,

    -- ** DefaultUserRequired
    _DefaultUserRequired,

    -- ** CacheParameterGroupNotFoundFault
    _CacheParameterGroupNotFoundFault,

    -- ** DuplicateUserNameFault
    _DuplicateUserNameFault,

    -- ** InvalidSnapshotStateFault
    _InvalidSnapshotStateFault,

    -- ** ReplicationGroupNotUnderMigrationFault
    _ReplicationGroupNotUnderMigrationFault,

    -- ** UserAlreadyExistsFault
    _UserAlreadyExistsFault,

    -- ** DefaultUserAssociatedToUserGroupFault
    _DefaultUserAssociatedToUserGroupFault,

    -- ** CacheParameterGroupQuotaExceededFault
    _CacheParameterGroupQuotaExceededFault,

    -- ** AuthorizationNotFoundFault
    _AuthorizationNotFoundFault,

    -- ** ReservedCacheNodesOfferingNotFoundFault
    _ReservedCacheNodesOfferingNotFoundFault,

    -- ** InvalidSubnet
    _InvalidSubnet,

    -- ** ClusterQuotaForCustomerExceededFault
    _ClusterQuotaForCustomerExceededFault,

    -- ** ReplicationGroupNotFoundFault
    _ReplicationGroupNotFoundFault,

    -- ** CacheClusterAlreadyExistsFault
    _CacheClusterAlreadyExistsFault,

    -- ** TagQuotaPerResourceExceeded
    _TagQuotaPerResourceExceeded,

    -- ** CacheSecurityGroupQuotaExceededFault
    _CacheSecurityGroupQuotaExceededFault,

    -- * Waiters
    -- $waiters

    -- ** ReplicationGroupDeleted
    replicationGroupDeleted,

    -- ** ReplicationGroupAvailable
    replicationGroupAvailable,

    -- ** CacheClusterAvailable
    cacheClusterAvailable,

    -- ** CacheClusterDeleted
    cacheClusterDeleted,

    -- * Operations
    -- $operations

    -- ** CreateReplicationGroup
    module Network.AWS.ElastiCache.CreateReplicationGroup,

    -- ** DeleteCacheCluster
    module Network.AWS.ElastiCache.DeleteCacheCluster,

    -- ** RebootCacheCluster
    module Network.AWS.ElastiCache.RebootCacheCluster,

    -- ** IncreaseNodeGroupsInGlobalReplicationGroup
    module Network.AWS.ElastiCache.IncreaseNodeGroupsInGlobalReplicationGroup,

    -- ** DeleteUserGroup
    module Network.AWS.ElastiCache.DeleteUserGroup,

    -- ** DeleteCacheSecurityGroup
    module Network.AWS.ElastiCache.DeleteCacheSecurityGroup,

    -- ** StartMigration
    module Network.AWS.ElastiCache.StartMigration,

    -- ** AuthorizeCacheSecurityGroupIngress
    module Network.AWS.ElastiCache.AuthorizeCacheSecurityGroupIngress,

    -- ** CopySnapshot
    module Network.AWS.ElastiCache.CopySnapshot,

    -- ** DecreaseReplicaCount
    module Network.AWS.ElastiCache.DecreaseReplicaCount,

    -- ** RebalanceSlotsInGlobalReplicationGroup
    module Network.AWS.ElastiCache.RebalanceSlotsInGlobalReplicationGroup,

    -- ** CreateCacheSecurityGroup
    module Network.AWS.ElastiCache.CreateCacheSecurityGroup,

    -- ** DescribeCacheSubnetGroups (Paginated)
    module Network.AWS.ElastiCache.DescribeCacheSubnetGroups,

    -- ** DescribeGlobalReplicationGroups (Paginated)
    module Network.AWS.ElastiCache.DescribeGlobalReplicationGroups,

    -- ** ModifyCacheCluster
    module Network.AWS.ElastiCache.ModifyCacheCluster,

    -- ** DescribeReservedCacheNodes (Paginated)
    module Network.AWS.ElastiCache.DescribeReservedCacheNodes,

    -- ** DeleteCacheParameterGroup
    module Network.AWS.ElastiCache.DeleteCacheParameterGroup,

    -- ** RemoveTagsFromResource
    module Network.AWS.ElastiCache.RemoveTagsFromResource,

    -- ** DescribeCacheSecurityGroups (Paginated)
    module Network.AWS.ElastiCache.DescribeCacheSecurityGroups,

    -- ** BatchStopUpdateAction
    module Network.AWS.ElastiCache.BatchStopUpdateAction,

    -- ** ModifyReplicationGroup
    module Network.AWS.ElastiCache.ModifyReplicationGroup,

    -- ** PurchaseReservedCacheNodesOffering
    module Network.AWS.ElastiCache.PurchaseReservedCacheNodesOffering,

    -- ** CreateUser
    module Network.AWS.ElastiCache.CreateUser,

    -- ** DeleteSnapshot
    module Network.AWS.ElastiCache.DeleteSnapshot,

    -- ** CompleteMigration
    module Network.AWS.ElastiCache.CompleteMigration,

    -- ** CreateCacheCluster
    module Network.AWS.ElastiCache.CreateCacheCluster,

    -- ** DisassociateGlobalReplicationGroup
    module Network.AWS.ElastiCache.DisassociateGlobalReplicationGroup,

    -- ** DescribeEvents (Paginated)
    module Network.AWS.ElastiCache.DescribeEvents,

    -- ** DeleteReplicationGroup
    module Network.AWS.ElastiCache.DeleteReplicationGroup,

    -- ** DescribeSnapshots (Paginated)
    module Network.AWS.ElastiCache.DescribeSnapshots,

    -- ** TestFailover
    module Network.AWS.ElastiCache.TestFailover,

    -- ** BatchApplyUpdateAction
    module Network.AWS.ElastiCache.BatchApplyUpdateAction,

    -- ** IncreaseReplicaCount
    module Network.AWS.ElastiCache.IncreaseReplicaCount,

    -- ** ModifyReplicationGroupShardConfiguration
    module Network.AWS.ElastiCache.ModifyReplicationGroupShardConfiguration,

    -- ** DescribeUsers (Paginated)
    module Network.AWS.ElastiCache.DescribeUsers,

    -- ** ListAllowedNodeTypeModifications
    module Network.AWS.ElastiCache.ListAllowedNodeTypeModifications,

    -- ** ResetCacheParameterGroup
    module Network.AWS.ElastiCache.ResetCacheParameterGroup,

    -- ** CreateCacheSubnetGroup
    module Network.AWS.ElastiCache.CreateCacheSubnetGroup,

    -- ** CreateGlobalReplicationGroup
    module Network.AWS.ElastiCache.CreateGlobalReplicationGroup,

    -- ** DescribeCacheParameterGroups (Paginated)
    module Network.AWS.ElastiCache.DescribeCacheParameterGroups,

    -- ** FailoverGlobalReplicationGroup
    module Network.AWS.ElastiCache.FailoverGlobalReplicationGroup,

    -- ** AddTagsToResource
    module Network.AWS.ElastiCache.AddTagsToResource,

    -- ** DecreaseNodeGroupsInGlobalReplicationGroup
    module Network.AWS.ElastiCache.DecreaseNodeGroupsInGlobalReplicationGroup,

    -- ** DescribeUpdateActions (Paginated)
    module Network.AWS.ElastiCache.DescribeUpdateActions,

    -- ** ModifyUser
    module Network.AWS.ElastiCache.ModifyUser,

    -- ** DeleteCacheSubnetGroup
    module Network.AWS.ElastiCache.DeleteCacheSubnetGroup,

    -- ** DeleteGlobalReplicationGroup
    module Network.AWS.ElastiCache.DeleteGlobalReplicationGroup,

    -- ** CreateCacheParameterGroup
    module Network.AWS.ElastiCache.CreateCacheParameterGroup,

    -- ** DescribeCacheEngineVersions (Paginated)
    module Network.AWS.ElastiCache.DescribeCacheEngineVersions,

    -- ** ModifyUserGroup
    module Network.AWS.ElastiCache.ModifyUserGroup,

    -- ** DescribeCacheParameters (Paginated)
    module Network.AWS.ElastiCache.DescribeCacheParameters,

    -- ** ModifyGlobalReplicationGroup
    module Network.AWS.ElastiCache.ModifyGlobalReplicationGroup,

    -- ** ModifyCacheSubnetGroup
    module Network.AWS.ElastiCache.ModifyCacheSubnetGroup,

    -- ** DeleteUser
    module Network.AWS.ElastiCache.DeleteUser,

    -- ** DescribeUserGroups (Paginated)
    module Network.AWS.ElastiCache.DescribeUserGroups,

    -- ** CreateSnapshot
    module Network.AWS.ElastiCache.CreateSnapshot,

    -- ** DescribeCacheClusters (Paginated)
    module Network.AWS.ElastiCache.DescribeCacheClusters,

    -- ** DescribeReservedCacheNodesOfferings (Paginated)
    module Network.AWS.ElastiCache.DescribeReservedCacheNodesOfferings,

    -- ** DescribeReplicationGroups (Paginated)
    module Network.AWS.ElastiCache.DescribeReplicationGroups,

    -- ** ListTagsForResource
    module Network.AWS.ElastiCache.ListTagsForResource,

    -- ** ModifyCacheParameterGroup
    module Network.AWS.ElastiCache.ModifyCacheParameterGroup,

    -- ** DescribeServiceUpdates (Paginated)
    module Network.AWS.ElastiCache.DescribeServiceUpdates,

    -- ** DescribeEngineDefaultParameters (Paginated)
    module Network.AWS.ElastiCache.DescribeEngineDefaultParameters,

    -- ** CreateUserGroup
    module Network.AWS.ElastiCache.CreateUserGroup,

    -- ** RevokeCacheSecurityGroupIngress
    module Network.AWS.ElastiCache.RevokeCacheSecurityGroupIngress,

    -- * Types

    -- ** AZMode
    AZMode (..),

    -- ** AuthTokenUpdateStatus
    AuthTokenUpdateStatus (..),

    -- ** AuthTokenUpdateStrategyType
    AuthTokenUpdateStrategyType (..),

    -- ** AuthenticationType
    AuthenticationType (..),

    -- ** AutomaticFailoverStatus
    AutomaticFailoverStatus (..),

    -- ** ChangeType
    ChangeType (..),

    -- ** MultiAZStatus
    MultiAZStatus (..),

    -- ** NodeUpdateInitiatedBy
    NodeUpdateInitiatedBy (..),

    -- ** NodeUpdateStatus
    NodeUpdateStatus (..),

    -- ** OutpostMode
    OutpostMode (..),

    -- ** PendingAutomaticFailoverStatus
    PendingAutomaticFailoverStatus (..),

    -- ** ServiceUpdateSeverity
    ServiceUpdateSeverity (..),

    -- ** ServiceUpdateStatus
    ServiceUpdateStatus (..),

    -- ** ServiceUpdateType
    ServiceUpdateType (..),

    -- ** SlaMet
    SlaMet (..),

    -- ** SourceType
    SourceType (..),

    -- ** UpdateActionStatus
    UpdateActionStatus (..),

    -- ** Authentication
    Authentication,
    authentication,
    aPasswordCount,
    aType,

    -- ** AvailabilityZone
    AvailabilityZone,
    availabilityZone,
    azName,

    -- ** CacheCluster
    CacheCluster,
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

    -- ** CacheEngineVersion
    CacheEngineVersion,
    cacheEngineVersion,
    cevCacheEngineDescription,
    cevCacheEngineVersionDescription,
    cevEngineVersion,
    cevCacheParameterGroupFamily,
    cevEngine,

    -- ** CacheNode
    CacheNode,
    cacheNode,
    cnCustomerAvailabilityZone,
    cnCacheNodeStatus,
    cnCacheNodeCreateTime,
    cnParameterGroupStatus,
    cnCustomerOutpostARN,
    cnSourceCacheNodeId,
    cnCacheNodeId,
    cnEndpoint,

    -- ** CacheNodeTypeSpecificParameter
    CacheNodeTypeSpecificParameter,
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

    -- ** CacheNodeTypeSpecificValue
    CacheNodeTypeSpecificValue,
    cacheNodeTypeSpecificValue,
    cntsvCacheNodeType,
    cntsvValue,

    -- ** CacheNodeUpdateStatus
    CacheNodeUpdateStatus,
    cacheNodeUpdateStatus,
    cnusNodeUpdateStatusModifiedDate,
    cnusNodeUpdateStatus,
    cnusNodeUpdateInitiatedBy,
    cnusNodeUpdateInitiatedDate,
    cnusCacheNodeId,
    cnusNodeDeletionDate,
    cnusNodeUpdateStartDate,
    cnusNodeUpdateEndDate,

    -- ** CacheParameterGroup
    CacheParameterGroup,
    cacheParameterGroup,
    cpgIsGlobal,
    cpgARN,
    cpgCacheParameterGroupName,
    cpgCacheParameterGroupFamily,
    cpgDescription,

    -- ** CacheParameterGroupNameMessage
    CacheParameterGroupNameMessage,
    cacheParameterGroupNameMessage,
    cpgnmCacheParameterGroupName,

    -- ** CacheParameterGroupStatus
    CacheParameterGroupStatus,
    cacheParameterGroupStatus,
    cpgsCacheParameterGroupName,
    cpgsParameterApplyStatus,
    cpgsCacheNodeIdsToReboot,

    -- ** CacheSecurityGroup
    CacheSecurityGroup,
    cacheSecurityGroup,
    csgOwnerId,
    csgARN,
    csgCacheSecurityGroupName,
    csgEC2SecurityGroups,
    csgDescription,

    -- ** CacheSecurityGroupMembership
    CacheSecurityGroupMembership,
    cacheSecurityGroupMembership,
    csgmStatus,
    csgmCacheSecurityGroupName,

    -- ** CacheSubnetGroup
    CacheSubnetGroup,
    cacheSubnetGroup,
    cARN,
    cCacheSubnetGroupName,
    cCacheSubnetGroupDescription,
    cSubnets,
    cVPCId,

    -- ** ConfigureShard
    ConfigureShard,
    configureShard,
    csPreferredAvailabilityZones,
    csPreferredOutpostARNs,
    csNodeGroupId,
    csNewReplicaCount,

    -- ** CustomerNodeEndpoint
    CustomerNodeEndpoint,
    customerNodeEndpoint,
    cneAddress,
    cnePort,

    -- ** EC2SecurityGroup
    EC2SecurityGroup,
    ec2SecurityGroup,
    esgStatus,
    esgEC2SecurityGroupOwnerId,
    esgEC2SecurityGroupName,

    -- ** Endpoint
    Endpoint,
    endpoint,
    eAddress,
    ePort,

    -- ** EngineDefaults
    EngineDefaults,
    engineDefaults,
    edCacheNodeTypeSpecificParameters,
    edCacheParameterGroupFamily,
    edParameters,
    edMarker,

    -- ** Event
    Event,
    event,
    eMessage,
    eDate,
    eSourceIdentifier,
    eSourceType,

    -- ** Filter
    Filter,
    filter',
    fName,
    fValues,

    -- ** GlobalNodeGroup
    GlobalNodeGroup,
    globalNodeGroup,
    gngGlobalNodeGroupId,
    gngSlots,

    -- ** GlobalReplicationGroup
    GlobalReplicationGroup,
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

    -- ** GlobalReplicationGroupInfo
    GlobalReplicationGroupInfo,
    globalReplicationGroupInfo,
    grgiGlobalReplicationGroupMemberRole,
    grgiGlobalReplicationGroupId,

    -- ** GlobalReplicationGroupMember
    GlobalReplicationGroupMember,
    globalReplicationGroupMember,
    grgmStatus,
    grgmAutomaticFailover,
    grgmReplicationGroupId,
    grgmReplicationGroupRegion,
    grgmRole,

    -- ** NodeGroup
    NodeGroup,
    nodeGroup,
    ngStatus,
    ngReaderEndpoint,
    ngNodeGroupId,
    ngPrimaryEndpoint,
    ngSlots,
    ngNodeGroupMembers,

    -- ** NodeGroupConfiguration
    NodeGroupConfiguration,
    nodeGroupConfiguration,
    ngcPrimaryOutpostARN,
    ngcReplicaCount,
    ngcReplicaOutpostARNs,
    ngcNodeGroupId,
    ngcSlots,
    ngcReplicaAvailabilityZones,
    ngcPrimaryAvailabilityZone,

    -- ** NodeGroupMember
    NodeGroupMember,
    nodeGroupMember,
    ngmCacheClusterId,
    ngmPreferredAvailabilityZone,
    ngmReadEndpoint,
    ngmCacheNodeId,
    ngmPreferredOutpostARN,
    ngmCurrentRole,

    -- ** NodeGroupMemberUpdateStatus
    NodeGroupMemberUpdateStatus,
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

    -- ** NodeGroupUpdateStatus
    NodeGroupUpdateStatus,
    nodeGroupUpdateStatus,
    ngusNodeGroupId,
    ngusNodeGroupMemberUpdateStatus,

    -- ** NodeSnapshot
    NodeSnapshot,
    nodeSnapshot,
    nsNodeGroupConfiguration,
    nsCacheSize,
    nsCacheClusterId,
    nsSnapshotCreateTime,
    nsCacheNodeCreateTime,
    nsNodeGroupId,
    nsCacheNodeId,

    -- ** NotificationConfiguration
    NotificationConfiguration,
    notificationConfiguration,
    ncTopicStatus,
    ncTopicARN,

    -- ** Parameter
    Parameter,
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

    -- ** ParameterNameValue
    ParameterNameValue,
    parameterNameValue,
    pnvParameterValue,
    pnvParameterName,

    -- ** PendingModifiedValues
    PendingModifiedValues,
    pendingModifiedValues,
    pmvNumCacheNodes,
    pmvCacheNodeIdsToRemove,
    pmvAuthTokenStatus,
    pmvEngineVersion,
    pmvCacheNodeType,

    -- ** ProcessedUpdateAction
    ProcessedUpdateAction,
    processedUpdateAction,
    puaReplicationGroupId,
    puaUpdateActionStatus,
    puaCacheClusterId,
    puaServiceUpdateName,

    -- ** RecurringCharge
    RecurringCharge,
    recurringCharge,
    rcRecurringChargeFrequency,
    rcRecurringChargeAmount,

    -- ** RegionalConfiguration
    RegionalConfiguration,
    regionalConfiguration,
    rcReplicationGroupId,
    rcReplicationGroupRegion,
    rcReshardingConfiguration,

    -- ** ReplicationGroup
    ReplicationGroup,
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

    -- ** ReplicationGroupPendingModifiedValues
    ReplicationGroupPendingModifiedValues,
    replicationGroupPendingModifiedValues,
    rgpmvResharding,
    rgpmvPrimaryClusterId,
    rgpmvAuthTokenStatus,
    rgpmvUserGroups,
    rgpmvAutomaticFailoverStatus,

    -- ** ReservedCacheNode
    ReservedCacheNode,
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

    -- ** ReservedCacheNodesOffering
    ReservedCacheNodesOffering,
    reservedCacheNodesOffering,
    rcnoReservedCacheNodesOfferingId,
    rcnoDuration,
    rcnoCacheNodeType,
    rcnoFixedPrice,
    rcnoUsagePrice,
    rcnoOfferingType,
    rcnoRecurringCharges,
    rcnoProductDescription,

    -- ** ReshardingConfiguration
    ReshardingConfiguration,
    reshardingConfiguration,
    rcPreferredAvailabilityZones,
    rcNodeGroupId,

    -- ** ReshardingStatus
    ReshardingStatus,
    reshardingStatus,
    rsSlotMigration,

    -- ** SecurityGroupMembership
    SecurityGroupMembership,
    securityGroupMembership,
    sgmStatus,
    sgmSecurityGroupId,

    -- ** ServiceUpdate
    ServiceUpdate,
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

    -- ** SlotMigration
    SlotMigration,
    slotMigration,
    smProgressPercentage,

    -- ** Snapshot
    Snapshot,
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

    -- ** Subnet
    Subnet,
    subnet,
    sSubnetIdentifier,
    sSubnetAvailabilityZone,
    sSubnetOutpost,

    -- ** SubnetOutpost
    SubnetOutpost,
    subnetOutpost,
    soSubnetOutpostARN,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** TagListMessage
    TagListMessage,
    tagListMessage,
    tlmTagList,

    -- ** TimeRangeFilter
    TimeRangeFilter,
    timeRangeFilter,
    trfStartTime,
    trfEndTime,

    -- ** UnprocessedUpdateAction
    UnprocessedUpdateAction,
    unprocessedUpdateAction,
    uuaReplicationGroupId,
    uuaCacheClusterId,
    uuaErrorType,
    uuaErrorMessage,
    uuaServiceUpdateName,

    -- ** UpdateAction
    UpdateAction,
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

    -- ** UpdateActionResultsMessage
    UpdateActionResultsMessage,
    updateActionResultsMessage,
    uarmProcessedUpdateActions,
    uarmUnprocessedUpdateActions,

    -- ** User
    User,
    user,
    uStatus,
    uAccessString,
    uUserGroupIds,
    uAuthentication,
    uARN,
    uUserId,
    uEngine,
    uUserName,

    -- ** UserGroup
    UserGroup,
    userGroup,
    ugStatus,
    ugReplicationGroups,
    ugARN,
    ugUserIds,
    ugEngine,
    ugUserGroupId,
    ugPendingChanges,

    -- ** UserGroupPendingChanges
    UserGroupPendingChanges,
    userGroupPendingChanges,
    ugpcUserIdsToRemove,
    ugpcUserIdsToAdd,

    -- ** UserGroupsUpdateStatus
    UserGroupsUpdateStatus,
    userGroupsUpdateStatus,
    ugusUserGroupIdsToRemove,
    ugusUserGroupIdsToAdd,
  )
where

import Network.AWS.ElastiCache.AddTagsToResource
import Network.AWS.ElastiCache.AuthorizeCacheSecurityGroupIngress
import Network.AWS.ElastiCache.BatchApplyUpdateAction
import Network.AWS.ElastiCache.BatchStopUpdateAction
import Network.AWS.ElastiCache.CompleteMigration
import Network.AWS.ElastiCache.CopySnapshot
import Network.AWS.ElastiCache.CreateCacheCluster
import Network.AWS.ElastiCache.CreateCacheParameterGroup
import Network.AWS.ElastiCache.CreateCacheSecurityGroup
import Network.AWS.ElastiCache.CreateCacheSubnetGroup
import Network.AWS.ElastiCache.CreateGlobalReplicationGroup
import Network.AWS.ElastiCache.CreateReplicationGroup
import Network.AWS.ElastiCache.CreateSnapshot
import Network.AWS.ElastiCache.CreateUser
import Network.AWS.ElastiCache.CreateUserGroup
import Network.AWS.ElastiCache.DecreaseNodeGroupsInGlobalReplicationGroup
import Network.AWS.ElastiCache.DecreaseReplicaCount
import Network.AWS.ElastiCache.DeleteCacheCluster
import Network.AWS.ElastiCache.DeleteCacheParameterGroup
import Network.AWS.ElastiCache.DeleteCacheSecurityGroup
import Network.AWS.ElastiCache.DeleteCacheSubnetGroup
import Network.AWS.ElastiCache.DeleteGlobalReplicationGroup
import Network.AWS.ElastiCache.DeleteReplicationGroup
import Network.AWS.ElastiCache.DeleteSnapshot
import Network.AWS.ElastiCache.DeleteUser
import Network.AWS.ElastiCache.DeleteUserGroup
import Network.AWS.ElastiCache.DescribeCacheClusters
import Network.AWS.ElastiCache.DescribeCacheEngineVersions
import Network.AWS.ElastiCache.DescribeCacheParameterGroups
import Network.AWS.ElastiCache.DescribeCacheParameters
import Network.AWS.ElastiCache.DescribeCacheSecurityGroups
import Network.AWS.ElastiCache.DescribeCacheSubnetGroups
import Network.AWS.ElastiCache.DescribeEngineDefaultParameters
import Network.AWS.ElastiCache.DescribeEvents
import Network.AWS.ElastiCache.DescribeGlobalReplicationGroups
import Network.AWS.ElastiCache.DescribeReplicationGroups
import Network.AWS.ElastiCache.DescribeReservedCacheNodes
import Network.AWS.ElastiCache.DescribeReservedCacheNodesOfferings
import Network.AWS.ElastiCache.DescribeServiceUpdates
import Network.AWS.ElastiCache.DescribeSnapshots
import Network.AWS.ElastiCache.DescribeUpdateActions
import Network.AWS.ElastiCache.DescribeUserGroups
import Network.AWS.ElastiCache.DescribeUsers
import Network.AWS.ElastiCache.DisassociateGlobalReplicationGroup
import Network.AWS.ElastiCache.FailoverGlobalReplicationGroup
import Network.AWS.ElastiCache.IncreaseNodeGroupsInGlobalReplicationGroup
import Network.AWS.ElastiCache.IncreaseReplicaCount
import Network.AWS.ElastiCache.ListAllowedNodeTypeModifications
import Network.AWS.ElastiCache.ListTagsForResource
import Network.AWS.ElastiCache.ModifyCacheCluster
import Network.AWS.ElastiCache.ModifyCacheParameterGroup
import Network.AWS.ElastiCache.ModifyCacheSubnetGroup
import Network.AWS.ElastiCache.ModifyGlobalReplicationGroup
import Network.AWS.ElastiCache.ModifyReplicationGroup
import Network.AWS.ElastiCache.ModifyReplicationGroupShardConfiguration
import Network.AWS.ElastiCache.ModifyUser
import Network.AWS.ElastiCache.ModifyUserGroup
import Network.AWS.ElastiCache.PurchaseReservedCacheNodesOffering
import Network.AWS.ElastiCache.RebalanceSlotsInGlobalReplicationGroup
import Network.AWS.ElastiCache.RebootCacheCluster
import Network.AWS.ElastiCache.RemoveTagsFromResource
import Network.AWS.ElastiCache.ResetCacheParameterGroup
import Network.AWS.ElastiCache.RevokeCacheSecurityGroupIngress
import Network.AWS.ElastiCache.StartMigration
import Network.AWS.ElastiCache.TestFailover
import Network.AWS.ElastiCache.Types
import Network.AWS.ElastiCache.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'ElastiCache'.

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
