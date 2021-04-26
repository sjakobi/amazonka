{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Lens
  ( -- * Operations

    -- ** ResetDBClusterParameterGroup
    resetDBClusterParameterGroup_resetAllParameters,
    resetDBClusterParameterGroup_parameters,
    resetDBClusterParameterGroup_dBClusterParameterGroupName,
    dBClusterParameterGroupNameMessage_dBClusterParameterGroupName,

    -- ** StopDBInstance
    stopDBInstance_dBSnapshotIdentifier,
    stopDBInstance_dBInstanceIdentifier,
    stopDBInstanceResponse_dBInstance,
    stopDBInstanceResponse_httpStatus,

    -- ** ModifyDBInstance
    modifyDBInstance_backupRetentionPeriod,
    modifyDBInstance_deletionProtection,
    modifyDBInstance_preferredBackupWindow,
    modifyDBInstance_dBPortNumber,
    modifyDBInstance_cACertificateIdentifier,
    modifyDBInstance_enablePerformanceInsights,
    modifyDBInstance_dBSecurityGroups,
    modifyDBInstance_maxAllocatedStorage,
    modifyDBInstance_enableIAMDatabaseAuthentication,
    modifyDBInstance_storageType,
    modifyDBInstance_useDefaultProcessorFeatures,
    modifyDBInstance_monitoringInterval,
    modifyDBInstance_optionGroupName,
    modifyDBInstance_domain,
    modifyDBInstance_allowMajorVersionUpgrade,
    modifyDBInstance_monitoringRoleArn,
    modifyDBInstance_dBSubnetGroupName,
    modifyDBInstance_masterUserPassword,
    modifyDBInstance_multiAZ,
    modifyDBInstance_publiclyAccessible,
    modifyDBInstance_vpcSecurityGroupIds,
    modifyDBInstance_performanceInsightsKMSKeyId,
    modifyDBInstance_dBParameterGroupName,
    modifyDBInstance_engineVersion,
    modifyDBInstance_preferredMaintenanceWindow,
    modifyDBInstance_performanceInsightsRetentionPeriod,
    modifyDBInstance_licenseModel,
    modifyDBInstance_tdeCredentialPassword,
    modifyDBInstance_promotionTier,
    modifyDBInstance_processorFeatures,
    modifyDBInstance_awsBackupRecoveryPointArn,
    modifyDBInstance_dBInstanceClass,
    modifyDBInstance_domainIAMRoleName,
    modifyDBInstance_certificateRotationRestart,
    modifyDBInstance_tdeCredentialArn,
    modifyDBInstance_enableCustomerOwnedIp,
    modifyDBInstance_cloudwatchLogsExportConfiguration,
    modifyDBInstance_copyTagsToSnapshot,
    modifyDBInstance_replicaMode,
    modifyDBInstance_newDBInstanceIdentifier,
    modifyDBInstance_allocatedStorage,
    modifyDBInstance_applyImmediately,
    modifyDBInstance_iops,
    modifyDBInstance_autoMinorVersionUpgrade,
    modifyDBInstance_dBInstanceIdentifier,
    modifyDBInstanceResponse_dBInstance,
    modifyDBInstanceResponse_httpStatus,

    -- ** DescribeEventCategories
    describeEventCategories_filters,
    describeEventCategories_sourceType,
    describeEventCategoriesResponse_eventCategoriesMapList,
    describeEventCategoriesResponse_httpStatus,

    -- ** StartDBInstance
    startDBInstance_dBInstanceIdentifier,
    startDBInstanceResponse_dBInstance,
    startDBInstanceResponse_httpStatus,

    -- ** CopyDBClusterParameterGroup
    copyDBClusterParameterGroup_tags,
    copyDBClusterParameterGroup_sourceDBClusterParameterGroupIdentifier,
    copyDBClusterParameterGroup_targetDBClusterParameterGroupIdentifier,
    copyDBClusterParameterGroup_targetDBClusterParameterGroupDescription,
    copyDBClusterParameterGroupResponse_dBClusterParameterGroup,
    copyDBClusterParameterGroupResponse_httpStatus,

    -- ** DescribeExportTasks
    describeExportTasks_filters,
    describeExportTasks_sourceArn,
    describeExportTasks_exportTaskIdentifier,
    describeExportTasks_marker,
    describeExportTasks_maxRecords,
    describeExportTasksResponse_exportTasks,
    describeExportTasksResponse_marker,
    describeExportTasksResponse_httpStatus,

    -- ** CopyDBSnapshot
    copyDBSnapshot_optionGroupName,
    copyDBSnapshot_kmsKeyId,
    copyDBSnapshot_copyTags,
    copyDBSnapshot_tags,
    copyDBSnapshot_preSignedUrl,
    copyDBSnapshot_targetCustomAvailabilityZone,
    copyDBSnapshot_sourceDBSnapshotIdentifier,
    copyDBSnapshot_targetDBSnapshotIdentifier,
    copyDBSnapshotResponse_dBSnapshot,
    copyDBSnapshotResponse_httpStatus,

    -- ** PromoteReadReplica
    promoteReadReplica_backupRetentionPeriod,
    promoteReadReplica_preferredBackupWindow,
    promoteReadReplica_dBInstanceIdentifier,
    promoteReadReplicaResponse_dBInstance,
    promoteReadReplicaResponse_httpStatus,

    -- ** DescribeDBSnapshots
    describeDBSnapshots_dBSnapshotIdentifier,
    describeDBSnapshots_dbiResourceId,
    describeDBSnapshots_includeShared,
    describeDBSnapshots_snapshotType,
    describeDBSnapshots_dBInstanceIdentifier,
    describeDBSnapshots_filters,
    describeDBSnapshots_includePublic,
    describeDBSnapshots_marker,
    describeDBSnapshots_maxRecords,
    describeDBSnapshotsResponse_dBSnapshots,
    describeDBSnapshotsResponse_marker,
    describeDBSnapshotsResponse_httpStatus,

    -- ** ModifyDBCluster
    modifyDBCluster_backupRetentionPeriod,
    modifyDBCluster_deletionProtection,
    modifyDBCluster_preferredBackupWindow,
    modifyDBCluster_enableIAMDatabaseAuthentication,
    modifyDBCluster_dBInstanceParameterGroupName,
    modifyDBCluster_optionGroupName,
    modifyDBCluster_domain,
    modifyDBCluster_allowMajorVersionUpgrade,
    modifyDBCluster_scalingConfiguration,
    modifyDBCluster_masterUserPassword,
    modifyDBCluster_vpcSecurityGroupIds,
    modifyDBCluster_enableHttpEndpoint,
    modifyDBCluster_engineVersion,
    modifyDBCluster_preferredMaintenanceWindow,
    modifyDBCluster_enableGlobalWriteForwarding,
    modifyDBCluster_port,
    modifyDBCluster_domainIAMRoleName,
    modifyDBCluster_newDBClusterIdentifier,
    modifyDBCluster_cloudwatchLogsExportConfiguration,
    modifyDBCluster_copyTagsToSnapshot,
    modifyDBCluster_backtrackWindow,
    modifyDBCluster_applyImmediately,
    modifyDBCluster_dBClusterParameterGroupName,
    modifyDBCluster_dBClusterIdentifier,
    modifyDBClusterResponse_dBCluster,
    modifyDBClusterResponse_httpStatus,

    -- ** ModifyOptionGroup
    modifyOptionGroup_optionsToInclude,
    modifyOptionGroup_optionsToRemove,
    modifyOptionGroup_applyImmediately,
    modifyOptionGroup_optionGroupName,
    modifyOptionGroupResponse_optionGroup,
    modifyOptionGroupResponse_httpStatus,

    -- ** StopDBCluster
    stopDBCluster_dBClusterIdentifier,
    stopDBClusterResponse_dBCluster,
    stopDBClusterResponse_httpStatus,

    -- ** CreateDBClusterSnapshot
    createDBClusterSnapshot_tags,
    createDBClusterSnapshot_dBClusterSnapshotIdentifier,
    createDBClusterSnapshot_dBClusterIdentifier,
    createDBClusterSnapshotResponse_dBClusterSnapshot,
    createDBClusterSnapshotResponse_httpStatus,

    -- ** DescribeDBClusterParameterGroups
    describeDBClusterParameterGroups_filters,
    describeDBClusterParameterGroups_dBClusterParameterGroupName,
    describeDBClusterParameterGroups_marker,
    describeDBClusterParameterGroups_maxRecords,
    describeDBClusterParameterGroupsResponse_dBClusterParameterGroups,
    describeDBClusterParameterGroupsResponse_marker,
    describeDBClusterParameterGroupsResponse_httpStatus,

    -- ** DescribeDBEngineVersions
    describeDBEngineVersions_listSupportedTimezones,
    describeDBEngineVersions_defaultOnly,
    describeDBEngineVersions_listSupportedCharacterSets,
    describeDBEngineVersions_engineVersion,
    describeDBEngineVersions_dBParameterGroupFamily,
    describeDBEngineVersions_engine,
    describeDBEngineVersions_filters,
    describeDBEngineVersions_includeAll,
    describeDBEngineVersions_marker,
    describeDBEngineVersions_maxRecords,
    describeDBEngineVersionsResponse_dBEngineVersions,
    describeDBEngineVersionsResponse_marker,
    describeDBEngineVersionsResponse_httpStatus,

    -- ** StartDBCluster
    startDBCluster_dBClusterIdentifier,
    startDBClusterResponse_dBCluster,
    startDBClusterResponse_httpStatus,

    -- ** DescribeOptionGroupOptions
    describeOptionGroupOptions_majorEngineVersion,
    describeOptionGroupOptions_filters,
    describeOptionGroupOptions_marker,
    describeOptionGroupOptions_maxRecords,
    describeOptionGroupOptions_engineName,
    describeOptionGroupOptionsResponse_optionGroupOptions,
    describeOptionGroupOptionsResponse_marker,
    describeOptionGroupOptionsResponse_httpStatus,

    -- ** DeleteInstallationMedia
    deleteInstallationMedia_installationMediaId,
    installationMedia_status,
    installationMedia_customAvailabilityZoneId,
    installationMedia_installationMediaId,
    installationMedia_engineVersion,
    installationMedia_oSInstallationMediaPath,
    installationMedia_failureCause,
    installationMedia_engine,
    installationMedia_engineInstallationMediaPath,

    -- ** CopyOptionGroup
    copyOptionGroup_tags,
    copyOptionGroup_sourceOptionGroupIdentifier,
    copyOptionGroup_targetOptionGroupIdentifier,
    copyOptionGroup_targetOptionGroupDescription,
    copyOptionGroupResponse_optionGroup,
    copyOptionGroupResponse_httpStatus,

    -- ** DescribeDBInstanceAutomatedBackups
    describeDBInstanceAutomatedBackups_dBInstanceAutomatedBackupsArn,
    describeDBInstanceAutomatedBackups_dbiResourceId,
    describeDBInstanceAutomatedBackups_dBInstanceIdentifier,
    describeDBInstanceAutomatedBackups_filters,
    describeDBInstanceAutomatedBackups_marker,
    describeDBInstanceAutomatedBackups_maxRecords,
    describeDBInstanceAutomatedBackupsResponse_dBInstanceAutomatedBackups,
    describeDBInstanceAutomatedBackupsResponse_marker,
    describeDBInstanceAutomatedBackupsResponse_httpStatus,

    -- ** ModifyGlobalCluster
    modifyGlobalCluster_deletionProtection,
    modifyGlobalCluster_allowMajorVersionUpgrade,
    modifyGlobalCluster_engineVersion,
    modifyGlobalCluster_newGlobalClusterIdentifier,
    modifyGlobalCluster_globalClusterIdentifier,
    modifyGlobalClusterResponse_globalCluster,
    modifyGlobalClusterResponse_httpStatus,

    -- ** DescribeDBProxies
    describeDBProxies_filters,
    describeDBProxies_dBProxyName,
    describeDBProxies_marker,
    describeDBProxies_maxRecords,
    describeDBProxiesResponse_dBProxies,
    describeDBProxiesResponse_marker,
    describeDBProxiesResponse_httpStatus,

    -- ** RestoreDBClusterToPointInTime
    restoreDBClusterToPointInTime_deletionProtection,
    restoreDBClusterToPointInTime_enableIAMDatabaseAuthentication,
    restoreDBClusterToPointInTime_enableCloudwatchLogsExports,
    restoreDBClusterToPointInTime_optionGroupName,
    restoreDBClusterToPointInTime_restoreType,
    restoreDBClusterToPointInTime_domain,
    restoreDBClusterToPointInTime_dBSubnetGroupName,
    restoreDBClusterToPointInTime_vpcSecurityGroupIds,
    restoreDBClusterToPointInTime_kmsKeyId,
    restoreDBClusterToPointInTime_tags,
    restoreDBClusterToPointInTime_port,
    restoreDBClusterToPointInTime_domainIAMRoleName,
    restoreDBClusterToPointInTime_restoreToTime,
    restoreDBClusterToPointInTime_copyTagsToSnapshot,
    restoreDBClusterToPointInTime_backtrackWindow,
    restoreDBClusterToPointInTime_dBClusterParameterGroupName,
    restoreDBClusterToPointInTime_useLatestRestorableTime,
    restoreDBClusterToPointInTime_dBClusterIdentifier,
    restoreDBClusterToPointInTime_sourceDBClusterIdentifier,
    restoreDBClusterToPointInTimeResponse_dBCluster,
    restoreDBClusterToPointInTimeResponse_httpStatus,

    -- ** StopActivityStream
    stopActivityStream_applyImmediately,
    stopActivityStream_resourceArn,
    stopActivityStreamResponse_status,
    stopActivityStreamResponse_kmsKeyId,
    stopActivityStreamResponse_kinesisStreamName,
    stopActivityStreamResponse_httpStatus,

    -- ** CreateDBInstanceReadReplica
    createDBInstanceReadReplica_deletionProtection,
    createDBInstanceReadReplica_enablePerformanceInsights,
    createDBInstanceReadReplica_maxAllocatedStorage,
    createDBInstanceReadReplica_enableIAMDatabaseAuthentication,
    createDBInstanceReadReplica_enableCloudwatchLogsExports,
    createDBInstanceReadReplica_storageType,
    createDBInstanceReadReplica_useDefaultProcessorFeatures,
    createDBInstanceReadReplica_monitoringInterval,
    createDBInstanceReadReplica_optionGroupName,
    createDBInstanceReadReplica_domain,
    createDBInstanceReadReplica_monitoringRoleArn,
    createDBInstanceReadReplica_dBSubnetGroupName,
    createDBInstanceReadReplica_multiAZ,
    createDBInstanceReadReplica_publiclyAccessible,
    createDBInstanceReadReplica_vpcSecurityGroupIds,
    createDBInstanceReadReplica_performanceInsightsKMSKeyId,
    createDBInstanceReadReplica_kmsKeyId,
    createDBInstanceReadReplica_dBParameterGroupName,
    createDBInstanceReadReplica_availabilityZone,
    createDBInstanceReadReplica_performanceInsightsRetentionPeriod,
    createDBInstanceReadReplica_tags,
    createDBInstanceReadReplica_processorFeatures,
    createDBInstanceReadReplica_port,
    createDBInstanceReadReplica_dBInstanceClass,
    createDBInstanceReadReplica_domainIAMRoleName,
    createDBInstanceReadReplica_preSignedUrl,
    createDBInstanceReadReplica_copyTagsToSnapshot,
    createDBInstanceReadReplica_replicaMode,
    createDBInstanceReadReplica_iops,
    createDBInstanceReadReplica_autoMinorVersionUpgrade,
    createDBInstanceReadReplica_dBInstanceIdentifier,
    createDBInstanceReadReplica_sourceDBInstanceIdentifier,
    createDBInstanceReadReplicaResponse_dBInstance,
    createDBInstanceReadReplicaResponse_httpStatus,

    -- ** DescribeValidDBInstanceModifications
    describeValidDBInstanceModifications_dBInstanceIdentifier,
    describeValidDBInstanceModificationsResponse_validDBInstanceModificationsMessage,
    describeValidDBInstanceModificationsResponse_httpStatus,

    -- ** StartExportTask
    startExportTask_exportOnly,
    startExportTask_s3Prefix,
    startExportTask_exportTaskIdentifier,
    startExportTask_sourceArn,
    startExportTask_s3BucketName,
    startExportTask_iamRoleArn,
    startExportTask_kmsKeyId,
    exportTask_taskEndTime,
    exportTask_iamRoleArn,
    exportTask_status,
    exportTask_totalExtractedDataInGB,
    exportTask_warningMessage,
    exportTask_snapshotTime,
    exportTask_s3Bucket,
    exportTask_exportOnly,
    exportTask_kmsKeyId,
    exportTask_failureCause,
    exportTask_percentProgress,
    exportTask_sourceArn,
    exportTask_s3Prefix,
    exportTask_taskStartTime,
    exportTask_exportTaskIdentifier,

    -- ** DescribeDBParameters
    describeDBParameters_source,
    describeDBParameters_filters,
    describeDBParameters_marker,
    describeDBParameters_maxRecords,
    describeDBParameters_dBParameterGroupName,
    describeDBParametersResponse_parameters,
    describeDBParametersResponse_marker,
    describeDBParametersResponse_httpStatus,

    -- ** DescribeDBInstances
    describeDBInstances_dBInstanceIdentifier,
    describeDBInstances_filters,
    describeDBInstances_marker,
    describeDBInstances_maxRecords,
    describeDBInstancesResponse_dBInstances,
    describeDBInstancesResponse_marker,
    describeDBInstancesResponse_httpStatus,

    -- ** DescribeEventSubscriptions
    describeEventSubscriptions_subscriptionName,
    describeEventSubscriptions_filters,
    describeEventSubscriptions_marker,
    describeEventSubscriptions_maxRecords,
    describeEventSubscriptionsResponse_eventSubscriptionsList,
    describeEventSubscriptionsResponse_marker,
    describeEventSubscriptionsResponse_httpStatus,

    -- ** RestoreDBInstanceFromS
    restoreDBInstanceFromS_backupRetentionPeriod,
    restoreDBInstanceFromS_deletionProtection,
    restoreDBInstanceFromS_storageEncrypted,
    restoreDBInstanceFromS_preferredBackupWindow,
    restoreDBInstanceFromS_enablePerformanceInsights,
    restoreDBInstanceFromS_dBSecurityGroups,
    restoreDBInstanceFromS_maxAllocatedStorage,
    restoreDBInstanceFromS_enableIAMDatabaseAuthentication,
    restoreDBInstanceFromS_enableCloudwatchLogsExports,
    restoreDBInstanceFromS_storageType,
    restoreDBInstanceFromS_useDefaultProcessorFeatures,
    restoreDBInstanceFromS_monitoringInterval,
    restoreDBInstanceFromS_optionGroupName,
    restoreDBInstanceFromS_monitoringRoleArn,
    restoreDBInstanceFromS_dBSubnetGroupName,
    restoreDBInstanceFromS_masterUserPassword,
    restoreDBInstanceFromS_masterUsername,
    restoreDBInstanceFromS_multiAZ,
    restoreDBInstanceFromS_publiclyAccessible,
    restoreDBInstanceFromS_vpcSecurityGroupIds,
    restoreDBInstanceFromS_performanceInsightsKMSKeyId,
    restoreDBInstanceFromS_kmsKeyId,
    restoreDBInstanceFromS_dBParameterGroupName,
    restoreDBInstanceFromS_availabilityZone,
    restoreDBInstanceFromS_engineVersion,
    restoreDBInstanceFromS_preferredMaintenanceWindow,
    restoreDBInstanceFromS_performanceInsightsRetentionPeriod,
    restoreDBInstanceFromS_licenseModel,
    restoreDBInstanceFromS_tags,
    restoreDBInstanceFromS_processorFeatures,
    restoreDBInstanceFromS_port,
    restoreDBInstanceFromS_dBName,
    restoreDBInstanceFromS_copyTagsToSnapshot,
    restoreDBInstanceFromS_s3Prefix,
    restoreDBInstanceFromS_allocatedStorage,
    restoreDBInstanceFromS_iops,
    restoreDBInstanceFromS_autoMinorVersionUpgrade,
    restoreDBInstanceFromS_dBInstanceIdentifier,
    restoreDBInstanceFromS_dBInstanceClass,
    restoreDBInstanceFromS_engine,
    restoreDBInstanceFromS_sourceEngine,
    restoreDBInstanceFromS_sourceEngineVersion,
    restoreDBInstanceFromS_s3BucketName,
    restoreDBInstanceFromS_s3IngestionRoleArn,
    restoreDBInstanceFromSResponse_dBInstance,
    restoreDBInstanceFromSResponse_httpStatus,

    -- ** StartActivityStream
    startActivityStream_applyImmediately,
    startActivityStream_resourceArn,
    startActivityStream_mode,
    startActivityStream_kmsKeyId,
    startActivityStreamResponse_status,
    startActivityStreamResponse_mode,
    startActivityStreamResponse_kmsKeyId,
    startActivityStreamResponse_kinesisStreamName,
    startActivityStreamResponse_applyImmediately,
    startActivityStreamResponse_httpStatus,

    -- ** DescribeDBClusterEndpoints
    describeDBClusterEndpoints_dBClusterEndpointIdentifier,
    describeDBClusterEndpoints_dBClusterIdentifier,
    describeDBClusterEndpoints_filters,
    describeDBClusterEndpoints_marker,
    describeDBClusterEndpoints_maxRecords,
    describeDBClusterEndpointsResponse_dBClusterEndpoints,
    describeDBClusterEndpointsResponse_marker,
    describeDBClusterEndpointsResponse_httpStatus,

    -- ** ModifyCertificates
    modifyCertificates_certificateIdentifier,
    modifyCertificates_removeCustomerOverride,
    modifyCertificatesResponse_certificate,
    modifyCertificatesResponse_httpStatus,

    -- ** DescribeDBClusterSnapshots
    describeDBClusterSnapshots_includeShared,
    describeDBClusterSnapshots_dBClusterIdentifier,
    describeDBClusterSnapshots_snapshotType,
    describeDBClusterSnapshots_filters,
    describeDBClusterSnapshots_dBClusterSnapshotIdentifier,
    describeDBClusterSnapshots_includePublic,
    describeDBClusterSnapshots_marker,
    describeDBClusterSnapshots_maxRecords,
    describeDBClusterSnapshotsResponse_dBClusterSnapshots,
    describeDBClusterSnapshotsResponse_marker,
    describeDBClusterSnapshotsResponse_httpStatus,

    -- ** DeleteDBClusterEndpoint
    deleteDBClusterEndpoint_dBClusterEndpointIdentifier,
    dBClusterEndpoint_dBClusterEndpointIdentifier,
    dBClusterEndpoint_status,
    dBClusterEndpoint_excludedMembers,
    dBClusterEndpoint_endpointType,
    dBClusterEndpoint_customEndpointType,
    dBClusterEndpoint_dBClusterEndpointArn,
    dBClusterEndpoint_dBClusterIdentifier,
    dBClusterEndpoint_dBClusterEndpointResourceIdentifier,
    dBClusterEndpoint_endpoint,
    dBClusterEndpoint_staticMembers,

    -- ** ModifyDBSnapshotAttribute
    modifyDBSnapshotAttribute_valuesToRemove,
    modifyDBSnapshotAttribute_valuesToAdd,
    modifyDBSnapshotAttribute_dBSnapshotIdentifier,
    modifyDBSnapshotAttribute_attributeName,
    modifyDBSnapshotAttributeResponse_dBSnapshotAttributesResult,
    modifyDBSnapshotAttributeResponse_httpStatus,

    -- ** DescribeReservedDBInstancesOfferings
    describeReservedDBInstancesOfferings_duration,
    describeReservedDBInstancesOfferings_multiAZ,
    describeReservedDBInstancesOfferings_dBInstanceClass,
    describeReservedDBInstancesOfferings_filters,
    describeReservedDBInstancesOfferings_offeringType,
    describeReservedDBInstancesOfferings_productDescription,
    describeReservedDBInstancesOfferings_reservedDBInstancesOfferingId,
    describeReservedDBInstancesOfferings_marker,
    describeReservedDBInstancesOfferings_maxRecords,
    describeReservedDBInstancesOfferingsResponse_reservedDBInstancesOfferings,
    describeReservedDBInstancesOfferingsResponse_marker,
    describeReservedDBInstancesOfferingsResponse_httpStatus,

    -- ** DeleteDBInstance
    deleteDBInstance_skipFinalSnapshot,
    deleteDBInstance_finalDBSnapshotIdentifier,
    deleteDBInstance_deleteAutomatedBackups,
    deleteDBInstance_dBInstanceIdentifier,
    deleteDBInstanceResponse_dBInstance,
    deleteDBInstanceResponse_httpStatus,

    -- ** RebootDBInstance
    rebootDBInstance_forceFailover,
    rebootDBInstance_dBInstanceIdentifier,
    rebootDBInstanceResponse_dBInstance,
    rebootDBInstanceResponse_httpStatus,

    -- ** DeleteEventSubscription
    deleteEventSubscription_subscriptionName,
    deleteEventSubscriptionResponse_eventSubscription,
    deleteEventSubscriptionResponse_httpStatus,

    -- ** DescribeDBParameterGroups
    describeDBParameterGroups_dBParameterGroupName,
    describeDBParameterGroups_filters,
    describeDBParameterGroups_marker,
    describeDBParameterGroups_maxRecords,
    describeDBParameterGroupsResponse_dBParameterGroups,
    describeDBParameterGroupsResponse_marker,
    describeDBParameterGroupsResponse_httpStatus,

    -- ** DeleteDBInstanceAutomatedBackup
    deleteDBInstanceAutomatedBackup_dBInstanceAutomatedBackupsArn,
    deleteDBInstanceAutomatedBackup_dbiResourceId,
    deleteDBInstanceAutomatedBackupResponse_dBInstanceAutomatedBackup,
    deleteDBInstanceAutomatedBackupResponse_httpStatus,

    -- ** DescribeDBClusterBacktracks
    describeDBClusterBacktracks_backtrackIdentifier,
    describeDBClusterBacktracks_filters,
    describeDBClusterBacktracks_marker,
    describeDBClusterBacktracks_maxRecords,
    describeDBClusterBacktracks_dBClusterIdentifier,
    describeDBClusterBacktracksResponse_dBClusterBacktracks,
    describeDBClusterBacktracksResponse_marker,
    describeDBClusterBacktracksResponse_httpStatus,

    -- ** CreateDBClusterParameterGroup
    createDBClusterParameterGroup_tags,
    createDBClusterParameterGroup_dBClusterParameterGroupName,
    createDBClusterParameterGroup_dBParameterGroupFamily,
    createDBClusterParameterGroup_description,
    createDBClusterParameterGroupResponse_dBClusterParameterGroup,
    createDBClusterParameterGroupResponse_httpStatus,

    -- ** CreateDBProxy
    createDBProxy_idleClientTimeout,
    createDBProxy_vpcSecurityGroupIds,
    createDBProxy_debugLogging,
    createDBProxy_tags,
    createDBProxy_requireTLS,
    createDBProxy_dBProxyName,
    createDBProxy_engineFamily,
    createDBProxy_auth,
    createDBProxy_roleArn,
    createDBProxy_vpcSubnetIds,
    createDBProxyResponse_dBProxy,
    createDBProxyResponse_httpStatus,

    -- ** DescribeDBClusterParameters
    describeDBClusterParameters_source,
    describeDBClusterParameters_filters,
    describeDBClusterParameters_marker,
    describeDBClusterParameters_maxRecords,
    describeDBClusterParameters_dBClusterParameterGroupName,
    describeDBClusterParametersResponse_parameters,
    describeDBClusterParametersResponse_marker,
    describeDBClusterParametersResponse_httpStatus,

    -- ** DeleteDBSubnetGroup
    deleteDBSubnetGroup_dBSubnetGroupName,

    -- ** DescribeAccountAttributes
    describeAccountAttributesResponse_accountQuotas,
    describeAccountAttributesResponse_httpStatus,

    -- ** RemoveTagsFromResource
    removeTagsFromResource_resourceName,
    removeTagsFromResource_tagKeys,

    -- ** CreateDBSecurityGroup
    createDBSecurityGroup_tags,
    createDBSecurityGroup_dBSecurityGroupName,
    createDBSecurityGroup_dBSecurityGroupDescription,
    createDBSecurityGroupResponse_dBSecurityGroup,
    createDBSecurityGroupResponse_httpStatus,

    -- ** DescribeCertificates
    describeCertificates_certificateIdentifier,
    describeCertificates_filters,
    describeCertificates_marker,
    describeCertificates_maxRecords,
    describeCertificatesResponse_certificates,
    describeCertificatesResponse_marker,
    describeCertificatesResponse_httpStatus,

    -- ** CreateDBInstance
    createDBInstance_backupRetentionPeriod,
    createDBInstance_deletionProtection,
    createDBInstance_storageEncrypted,
    createDBInstance_preferredBackupWindow,
    createDBInstance_enablePerformanceInsights,
    createDBInstance_dBSecurityGroups,
    createDBInstance_maxAllocatedStorage,
    createDBInstance_enableIAMDatabaseAuthentication,
    createDBInstance_enableCloudwatchLogsExports,
    createDBInstance_storageType,
    createDBInstance_monitoringInterval,
    createDBInstance_optionGroupName,
    createDBInstance_domain,
    createDBInstance_monitoringRoleArn,
    createDBInstance_dBSubnetGroupName,
    createDBInstance_ncharCharacterSetName,
    createDBInstance_masterUserPassword,
    createDBInstance_masterUsername,
    createDBInstance_multiAZ,
    createDBInstance_publiclyAccessible,
    createDBInstance_vpcSecurityGroupIds,
    createDBInstance_performanceInsightsKMSKeyId,
    createDBInstance_kmsKeyId,
    createDBInstance_dBParameterGroupName,
    createDBInstance_availabilityZone,
    createDBInstance_dBClusterIdentifier,
    createDBInstance_engineVersion,
    createDBInstance_preferredMaintenanceWindow,
    createDBInstance_characterSetName,
    createDBInstance_performanceInsightsRetentionPeriod,
    createDBInstance_licenseModel,
    createDBInstance_tdeCredentialPassword,
    createDBInstance_promotionTier,
    createDBInstance_tags,
    createDBInstance_processorFeatures,
    createDBInstance_port,
    createDBInstance_dBName,
    createDBInstance_domainIAMRoleName,
    createDBInstance_tdeCredentialArn,
    createDBInstance_enableCustomerOwnedIp,
    createDBInstance_timezone,
    createDBInstance_copyTagsToSnapshot,
    createDBInstance_allocatedStorage,
    createDBInstance_iops,
    createDBInstance_autoMinorVersionUpgrade,
    createDBInstance_dBInstanceIdentifier,
    createDBInstance_dBInstanceClass,
    createDBInstance_engine,
    createDBInstanceResponse_dBInstance,
    createDBInstanceResponse_httpStatus,

    -- ** RemoveRoleFromDBInstance
    removeRoleFromDBInstance_dBInstanceIdentifier,
    removeRoleFromDBInstance_roleArn,
    removeRoleFromDBInstance_featureName,

    -- ** DescribeEngineDefaultClusterParameters
    describeEngineDefaultClusterParameters_filters,
    describeEngineDefaultClusterParameters_marker,
    describeEngineDefaultClusterParameters_maxRecords,
    describeEngineDefaultClusterParameters_dBParameterGroupFamily,
    describeEngineDefaultClusterParametersResponse_engineDefaults,
    describeEngineDefaultClusterParametersResponse_httpStatus,

    -- ** StartDBInstanceAutomatedBackupsReplication
    startDBInstanceAutomatedBackupsReplication_backupRetentionPeriod,
    startDBInstanceAutomatedBackupsReplication_kmsKeyId,
    startDBInstanceAutomatedBackupsReplication_preSignedUrl,
    startDBInstanceAutomatedBackupsReplication_sourceDBInstanceArn,
    startDBInstanceAutomatedBackupsReplicationResponse_dBInstanceAutomatedBackup,
    startDBInstanceAutomatedBackupsReplicationResponse_httpStatus,

    -- ** CreateOptionGroup
    createOptionGroup_tags,
    createOptionGroup_optionGroupName,
    createOptionGroup_engineName,
    createOptionGroup_majorEngineVersion,
    createOptionGroup_optionGroupDescription,
    createOptionGroupResponse_optionGroup,
    createOptionGroupResponse_httpStatus,

    -- ** CreateCustomAvailabilityZone
    createCustomAvailabilityZone_vpnTunnelOriginatorIP,
    createCustomAvailabilityZone_existingVpnId,
    createCustomAvailabilityZone_newVpnTunnelName,
    createCustomAvailabilityZone_customAvailabilityZoneName,
    createCustomAvailabilityZoneResponse_customAvailabilityZone,
    createCustomAvailabilityZoneResponse_httpStatus,

    -- ** StopDBInstanceAutomatedBackupsReplication
    stopDBInstanceAutomatedBackupsReplication_sourceDBInstanceArn,
    stopDBInstanceAutomatedBackupsReplicationResponse_dBInstanceAutomatedBackup,
    stopDBInstanceAutomatedBackupsReplicationResponse_httpStatus,

    -- ** FailoverDBCluster
    failoverDBCluster_targetDBInstanceIdentifier,
    failoverDBCluster_dBClusterIdentifier,
    failoverDBClusterResponse_dBCluster,
    failoverDBClusterResponse_httpStatus,

    -- ** RemoveRoleFromDBCluster
    removeRoleFromDBCluster_featureName,
    removeRoleFromDBCluster_dBClusterIdentifier,
    removeRoleFromDBCluster_roleArn,

    -- ** DescribeDBSnapshotAttributes
    describeDBSnapshotAttributes_dBSnapshotIdentifier,
    describeDBSnapshotAttributesResponse_dBSnapshotAttributesResult,
    describeDBSnapshotAttributesResponse_httpStatus,

    -- ** CreateDBCluster
    createDBCluster_backupRetentionPeriod,
    createDBCluster_deletionProtection,
    createDBCluster_storageEncrypted,
    createDBCluster_preferredBackupWindow,
    createDBCluster_availabilityZones,
    createDBCluster_enableIAMDatabaseAuthentication,
    createDBCluster_enableCloudwatchLogsExports,
    createDBCluster_optionGroupName,
    createDBCluster_domain,
    createDBCluster_engineMode,
    createDBCluster_scalingConfiguration,
    createDBCluster_dBSubnetGroupName,
    createDBCluster_masterUserPassword,
    createDBCluster_masterUsername,
    createDBCluster_vpcSecurityGroupIds,
    createDBCluster_enableHttpEndpoint,
    createDBCluster_kmsKeyId,
    createDBCluster_engineVersion,
    createDBCluster_preferredMaintenanceWindow,
    createDBCluster_characterSetName,
    createDBCluster_enableGlobalWriteForwarding,
    createDBCluster_tags,
    createDBCluster_port,
    createDBCluster_domainIAMRoleName,
    createDBCluster_preSignedUrl,
    createDBCluster_copyTagsToSnapshot,
    createDBCluster_backtrackWindow,
    createDBCluster_dBClusterParameterGroupName,
    createDBCluster_replicationSourceIdentifier,
    createDBCluster_globalClusterIdentifier,
    createDBCluster_databaseName,
    createDBCluster_dBClusterIdentifier,
    createDBCluster_engine,
    createDBClusterResponse_dBCluster,
    createDBClusterResponse_httpStatus,

    -- ** ApplyPendingMaintenanceAction
    applyPendingMaintenanceAction_resourceIdentifier,
    applyPendingMaintenanceAction_applyAction,
    applyPendingMaintenanceAction_optInType,
    applyPendingMaintenanceActionResponse_resourcePendingMaintenanceActions,
    applyPendingMaintenanceActionResponse_httpStatus,

    -- ** BacktrackDBCluster
    backtrackDBCluster_force,
    backtrackDBCluster_useEarliestTimeOnPointInTimeUnavailable,
    backtrackDBCluster_dBClusterIdentifier,
    backtrackDBCluster_backtrackTo,
    dBClusterBacktrack_status,
    dBClusterBacktrack_backtrackIdentifier,
    dBClusterBacktrack_backtrackTo,
    dBClusterBacktrack_dBClusterIdentifier,
    dBClusterBacktrack_backtrackRequestCreationTime,
    dBClusterBacktrack_backtrackedFrom,

    -- ** DescribeReservedDBInstances
    describeReservedDBInstances_duration,
    describeReservedDBInstances_multiAZ,
    describeReservedDBInstances_dBInstanceClass,
    describeReservedDBInstances_reservedDBInstanceId,
    describeReservedDBInstances_filters,
    describeReservedDBInstances_leaseId,
    describeReservedDBInstances_offeringType,
    describeReservedDBInstances_productDescription,
    describeReservedDBInstances_reservedDBInstancesOfferingId,
    describeReservedDBInstances_marker,
    describeReservedDBInstances_maxRecords,
    describeReservedDBInstancesResponse_reservedDBInstances,
    describeReservedDBInstancesResponse_marker,
    describeReservedDBInstancesResponse_httpStatus,

    -- ** DeleteDBCluster
    deleteDBCluster_skipFinalSnapshot,
    deleteDBCluster_finalDBSnapshotIdentifier,
    deleteDBCluster_dBClusterIdentifier,
    deleteDBClusterResponse_dBCluster,
    deleteDBClusterResponse_httpStatus,

    -- ** DeleteOptionGroup
    deleteOptionGroup_optionGroupName,

    -- ** DescribePendingMaintenanceActions
    describePendingMaintenanceActions_resourceIdentifier,
    describePendingMaintenanceActions_filters,
    describePendingMaintenanceActions_marker,
    describePendingMaintenanceActions_maxRecords,
    describePendingMaintenanceActionsResponse_pendingMaintenanceActions,
    describePendingMaintenanceActionsResponse_marker,
    describePendingMaintenanceActionsResponse_httpStatus,

    -- ** DescribeDBProxyTargetGroups
    describeDBProxyTargetGroups_targetGroupName,
    describeDBProxyTargetGroups_filters,
    describeDBProxyTargetGroups_marker,
    describeDBProxyTargetGroups_maxRecords,
    describeDBProxyTargetGroups_dBProxyName,
    describeDBProxyTargetGroupsResponse_targetGroups,
    describeDBProxyTargetGroupsResponse_marker,
    describeDBProxyTargetGroupsResponse_httpStatus,

    -- ** ModifyDBClusterParameterGroup
    modifyDBClusterParameterGroup_dBClusterParameterGroupName,
    modifyDBClusterParameterGroup_parameters,
    dBClusterParameterGroupNameMessage_dBClusterParameterGroupName,

    -- ** DescribeDBClusterSnapshotAttributes
    describeDBClusterSnapshotAttributes_dBClusterSnapshotIdentifier,
    describeDBClusterSnapshotAttributesResponse_dBClusterSnapshotAttributesResult,
    describeDBClusterSnapshotAttributesResponse_httpStatus,

    -- ** DescribeOptionGroups
    describeOptionGroups_engineName,
    describeOptionGroups_optionGroupName,
    describeOptionGroups_majorEngineVersion,
    describeOptionGroups_filters,
    describeOptionGroups_marker,
    describeOptionGroups_maxRecords,
    describeOptionGroupsResponse_optionGroupsList,
    describeOptionGroupsResponse_marker,
    describeOptionGroupsResponse_httpStatus,

    -- ** DescribeDBClusters
    describeDBClusters_includeShared,
    describeDBClusters_dBClusterIdentifier,
    describeDBClusters_filters,
    describeDBClusters_marker,
    describeDBClusters_maxRecords,
    describeDBClustersResponse_dBClusters,
    describeDBClustersResponse_marker,
    describeDBClustersResponse_httpStatus,

    -- ** DescribeEvents
    describeEvents_duration,
    describeEvents_startTime,
    describeEvents_eventCategories,
    describeEvents_endTime,
    describeEvents_sourceIdentifier,
    describeEvents_filters,
    describeEvents_sourceType,
    describeEvents_marker,
    describeEvents_maxRecords,
    describeEventsResponse_events,
    describeEventsResponse_marker,
    describeEventsResponse_httpStatus,

    -- ** ModifyDBProxy
    modifyDBProxy_roleArn,
    modifyDBProxy_newDBProxyName,
    modifyDBProxy_idleClientTimeout,
    modifyDBProxy_auth,
    modifyDBProxy_securityGroups,
    modifyDBProxy_debugLogging,
    modifyDBProxy_requireTLS,
    modifyDBProxy_dBProxyName,
    modifyDBProxyResponse_dBProxy,
    modifyDBProxyResponse_httpStatus,

    -- ** DescribeDBLogFiles
    describeDBLogFiles_fileSize,
    describeDBLogFiles_filenameContains,
    describeDBLogFiles_filters,
    describeDBLogFiles_fileLastWritten,
    describeDBLogFiles_marker,
    describeDBLogFiles_maxRecords,
    describeDBLogFiles_dBInstanceIdentifier,
    describeDBLogFilesResponse_describeDBLogFiles,
    describeDBLogFilesResponse_marker,
    describeDBLogFilesResponse_httpStatus,

    -- ** RestoreDBClusterFromS
    restoreDBClusterFromS_backupRetentionPeriod,
    restoreDBClusterFromS_deletionProtection,
    restoreDBClusterFromS_storageEncrypted,
    restoreDBClusterFromS_preferredBackupWindow,
    restoreDBClusterFromS_availabilityZones,
    restoreDBClusterFromS_enableIAMDatabaseAuthentication,
    restoreDBClusterFromS_enableCloudwatchLogsExports,
    restoreDBClusterFromS_optionGroupName,
    restoreDBClusterFromS_domain,
    restoreDBClusterFromS_dBSubnetGroupName,
    restoreDBClusterFromS_vpcSecurityGroupIds,
    restoreDBClusterFromS_kmsKeyId,
    restoreDBClusterFromS_engineVersion,
    restoreDBClusterFromS_preferredMaintenanceWindow,
    restoreDBClusterFromS_characterSetName,
    restoreDBClusterFromS_tags,
    restoreDBClusterFromS_port,
    restoreDBClusterFromS_domainIAMRoleName,
    restoreDBClusterFromS_copyTagsToSnapshot,
    restoreDBClusterFromS_s3Prefix,
    restoreDBClusterFromS_backtrackWindow,
    restoreDBClusterFromS_dBClusterParameterGroupName,
    restoreDBClusterFromS_databaseName,
    restoreDBClusterFromS_dBClusterIdentifier,
    restoreDBClusterFromS_engine,
    restoreDBClusterFromS_masterUsername,
    restoreDBClusterFromS_masterUserPassword,
    restoreDBClusterFromS_sourceEngine,
    restoreDBClusterFromS_sourceEngineVersion,
    restoreDBClusterFromS_s3BucketName,
    restoreDBClusterFromS_s3IngestionRoleArn,
    restoreDBClusterFromSResponse_dBCluster,
    restoreDBClusterFromSResponse_httpStatus,

    -- ** CancelExportTask
    cancelExportTask_exportTaskIdentifier,
    exportTask_taskEndTime,
    exportTask_iamRoleArn,
    exportTask_status,
    exportTask_totalExtractedDataInGB,
    exportTask_warningMessage,
    exportTask_snapshotTime,
    exportTask_s3Bucket,
    exportTask_exportOnly,
    exportTask_kmsKeyId,
    exportTask_failureCause,
    exportTask_percentProgress,
    exportTask_sourceArn,
    exportTask_s3Prefix,
    exportTask_taskStartTime,
    exportTask_exportTaskIdentifier,

    -- ** DescribeGlobalClusters
    describeGlobalClusters_filters,
    describeGlobalClusters_globalClusterIdentifier,
    describeGlobalClusters_marker,
    describeGlobalClusters_maxRecords,
    describeGlobalClustersResponse_globalClusters,
    describeGlobalClustersResponse_marker,
    describeGlobalClustersResponse_httpStatus,

    -- ** AddSourceIdentifierToSubscription
    addSourceIdentifierToSubscription_subscriptionName,
    addSourceIdentifierToSubscription_sourceIdentifier,
    addSourceIdentifierToSubscriptionResponse_eventSubscription,
    addSourceIdentifierToSubscriptionResponse_httpStatus,

    -- ** ModifyEventSubscription
    modifyEventSubscription_enabled,
    modifyEventSubscription_eventCategories,
    modifyEventSubscription_sourceType,
    modifyEventSubscription_snsTopicArn,
    modifyEventSubscription_subscriptionName,
    modifyEventSubscriptionResponse_eventSubscription,
    modifyEventSubscriptionResponse_httpStatus,

    -- ** ModifyDBClusterEndpoint
    modifyDBClusterEndpoint_excludedMembers,
    modifyDBClusterEndpoint_endpointType,
    modifyDBClusterEndpoint_staticMembers,
    modifyDBClusterEndpoint_dBClusterEndpointIdentifier,
    dBClusterEndpoint_dBClusterEndpointIdentifier,
    dBClusterEndpoint_status,
    dBClusterEndpoint_excludedMembers,
    dBClusterEndpoint_endpointType,
    dBClusterEndpoint_customEndpointType,
    dBClusterEndpoint_dBClusterEndpointArn,
    dBClusterEndpoint_dBClusterIdentifier,
    dBClusterEndpoint_dBClusterEndpointResourceIdentifier,
    dBClusterEndpoint_endpoint,
    dBClusterEndpoint_staticMembers,

    -- ** ModifyDBClusterSnapshotAttribute
    modifyDBClusterSnapshotAttribute_valuesToRemove,
    modifyDBClusterSnapshotAttribute_valuesToAdd,
    modifyDBClusterSnapshotAttribute_dBClusterSnapshotIdentifier,
    modifyDBClusterSnapshotAttribute_attributeName,
    modifyDBClusterSnapshotAttributeResponse_dBClusterSnapshotAttributesResult,
    modifyDBClusterSnapshotAttributeResponse_httpStatus,

    -- ** DescribeDBSubnetGroups
    describeDBSubnetGroups_dBSubnetGroupName,
    describeDBSubnetGroups_filters,
    describeDBSubnetGroups_marker,
    describeDBSubnetGroups_maxRecords,
    describeDBSubnetGroupsResponse_dBSubnetGroups,
    describeDBSubnetGroupsResponse_marker,
    describeDBSubnetGroupsResponse_httpStatus,

    -- ** ModifyDBProxyTargetGroup
    modifyDBProxyTargetGroup_connectionPoolConfig,
    modifyDBProxyTargetGroup_newName,
    modifyDBProxyTargetGroup_targetGroupName,
    modifyDBProxyTargetGroup_dBProxyName,
    modifyDBProxyTargetGroupResponse_dBProxyTargetGroup,
    modifyDBProxyTargetGroupResponse_httpStatus,

    -- ** CreateDBParameterGroup
    createDBParameterGroup_tags,
    createDBParameterGroup_dBParameterGroupName,
    createDBParameterGroup_dBParameterGroupFamily,
    createDBParameterGroup_description,
    createDBParameterGroupResponse_dBParameterGroup,
    createDBParameterGroupResponse_httpStatus,

    -- ** DeleteDBClusterSnapshot
    deleteDBClusterSnapshot_dBClusterSnapshotIdentifier,
    deleteDBClusterSnapshotResponse_dBClusterSnapshot,
    deleteDBClusterSnapshotResponse_httpStatus,

    -- ** RemoveFromGlobalCluster
    removeFromGlobalCluster_dbClusterIdentifier,
    removeFromGlobalCluster_globalClusterIdentifier,
    removeFromGlobalClusterResponse_globalCluster,
    removeFromGlobalClusterResponse_httpStatus,

    -- ** DescribeDBSecurityGroups
    describeDBSecurityGroups_dBSecurityGroupName,
    describeDBSecurityGroups_filters,
    describeDBSecurityGroups_marker,
    describeDBSecurityGroups_maxRecords,
    describeDBSecurityGroupsResponse_dBSecurityGroups,
    describeDBSecurityGroupsResponse_marker,
    describeDBSecurityGroupsResponse_httpStatus,

    -- ** AddTagsToResource
    addTagsToResource_resourceName,
    addTagsToResource_tags,

    -- ** RegisterDBProxyTargets
    registerDBProxyTargets_dBClusterIdentifiers,
    registerDBProxyTargets_targetGroupName,
    registerDBProxyTargets_dBInstanceIdentifiers,
    registerDBProxyTargets_dBProxyName,
    registerDBProxyTargetsResponse_dBProxyTargets,
    registerDBProxyTargetsResponse_httpStatus,

    -- ** DownloadDBLogFilePortion
    downloadDBLogFilePortion_numberOfLines,
    downloadDBLogFilePortion_marker,
    downloadDBLogFilePortion_dBInstanceIdentifier,
    downloadDBLogFilePortion_logFileName,
    downloadDBLogFilePortionResponse_additionalDataPending,
    downloadDBLogFilePortionResponse_logFileData,
    downloadDBLogFilePortionResponse_marker,
    downloadDBLogFilePortionResponse_httpStatus,

    -- ** ModifyCurrentDBClusterCapacity
    modifyCurrentDBClusterCapacity_timeoutAction,
    modifyCurrentDBClusterCapacity_capacity,
    modifyCurrentDBClusterCapacity_secondsBeforeTimeout,
    modifyCurrentDBClusterCapacity_dBClusterIdentifier,
    modifyCurrentDBClusterCapacityResponse_pendingCapacity,
    modifyCurrentDBClusterCapacityResponse_timeoutAction,
    modifyCurrentDBClusterCapacityResponse_dBClusterIdentifier,
    modifyCurrentDBClusterCapacityResponse_secondsBeforeTimeout,
    modifyCurrentDBClusterCapacityResponse_currentCapacity,
    modifyCurrentDBClusterCapacityResponse_httpStatus,

    -- ** AddRoleToDBInstance
    addRoleToDBInstance_dBInstanceIdentifier,
    addRoleToDBInstance_roleArn,
    addRoleToDBInstance_featureName,

    -- ** DeleteDBParameterGroup
    deleteDBParameterGroup_dBParameterGroupName,

    -- ** CreateDBSnapshot
    createDBSnapshot_tags,
    createDBSnapshot_dBSnapshotIdentifier,
    createDBSnapshot_dBInstanceIdentifier,
    createDBSnapshotResponse_dBSnapshot,
    createDBSnapshotResponse_httpStatus,

    -- ** CreateDBSubnetGroup
    createDBSubnetGroup_tags,
    createDBSubnetGroup_dBSubnetGroupName,
    createDBSubnetGroup_dBSubnetGroupDescription,
    createDBSubnetGroup_subnetIds,
    createDBSubnetGroupResponse_dBSubnetGroup,
    createDBSubnetGroupResponse_httpStatus,

    -- ** DescribeOrderableDBInstanceOptions
    describeOrderableDBInstanceOptions_engineVersion,
    describeOrderableDBInstanceOptions_licenseModel,
    describeOrderableDBInstanceOptions_dBInstanceClass,
    describeOrderableDBInstanceOptions_filters,
    describeOrderableDBInstanceOptions_availabilityZoneGroup,
    describeOrderableDBInstanceOptions_vpc,
    describeOrderableDBInstanceOptions_marker,
    describeOrderableDBInstanceOptions_maxRecords,
    describeOrderableDBInstanceOptions_engine,
    describeOrderableDBInstanceOptionsResponse_orderableDBInstanceOptions,
    describeOrderableDBInstanceOptionsResponse_marker,
    describeOrderableDBInstanceOptionsResponse_httpStatus,

    -- ** DeleteDBSecurityGroup
    deleteDBSecurityGroup_dBSecurityGroupName,

    -- ** RestoreDBClusterFromSnapshot
    restoreDBClusterFromSnapshot_deletionProtection,
    restoreDBClusterFromSnapshot_availabilityZones,
    restoreDBClusterFromSnapshot_enableIAMDatabaseAuthentication,
    restoreDBClusterFromSnapshot_enableCloudwatchLogsExports,
    restoreDBClusterFromSnapshot_optionGroupName,
    restoreDBClusterFromSnapshot_domain,
    restoreDBClusterFromSnapshot_engineMode,
    restoreDBClusterFromSnapshot_scalingConfiguration,
    restoreDBClusterFromSnapshot_dBSubnetGroupName,
    restoreDBClusterFromSnapshot_vpcSecurityGroupIds,
    restoreDBClusterFromSnapshot_kmsKeyId,
    restoreDBClusterFromSnapshot_engineVersion,
    restoreDBClusterFromSnapshot_tags,
    restoreDBClusterFromSnapshot_port,
    restoreDBClusterFromSnapshot_domainIAMRoleName,
    restoreDBClusterFromSnapshot_copyTagsToSnapshot,
    restoreDBClusterFromSnapshot_backtrackWindow,
    restoreDBClusterFromSnapshot_dBClusterParameterGroupName,
    restoreDBClusterFromSnapshot_databaseName,
    restoreDBClusterFromSnapshot_dBClusterIdentifier,
    restoreDBClusterFromSnapshot_snapshotIdentifier,
    restoreDBClusterFromSnapshot_engine,
    restoreDBClusterFromSnapshotResponse_dBCluster,
    restoreDBClusterFromSnapshotResponse_httpStatus,

    -- ** RestoreDBInstanceFromDBSnapshot
    restoreDBInstanceFromDBSnapshot_deletionProtection,
    restoreDBInstanceFromDBSnapshot_enableIAMDatabaseAuthentication,
    restoreDBInstanceFromDBSnapshot_enableCloudwatchLogsExports,
    restoreDBInstanceFromDBSnapshot_storageType,
    restoreDBInstanceFromDBSnapshot_useDefaultProcessorFeatures,
    restoreDBInstanceFromDBSnapshot_optionGroupName,
    restoreDBInstanceFromDBSnapshot_domain,
    restoreDBInstanceFromDBSnapshot_dBSubnetGroupName,
    restoreDBInstanceFromDBSnapshot_multiAZ,
    restoreDBInstanceFromDBSnapshot_publiclyAccessible,
    restoreDBInstanceFromDBSnapshot_vpcSecurityGroupIds,
    restoreDBInstanceFromDBSnapshot_dBParameterGroupName,
    restoreDBInstanceFromDBSnapshot_availabilityZone,
    restoreDBInstanceFromDBSnapshot_licenseModel,
    restoreDBInstanceFromDBSnapshot_tdeCredentialPassword,
    restoreDBInstanceFromDBSnapshot_tags,
    restoreDBInstanceFromDBSnapshot_processorFeatures,
    restoreDBInstanceFromDBSnapshot_port,
    restoreDBInstanceFromDBSnapshot_dBInstanceClass,
    restoreDBInstanceFromDBSnapshot_dBName,
    restoreDBInstanceFromDBSnapshot_domainIAMRoleName,
    restoreDBInstanceFromDBSnapshot_engine,
    restoreDBInstanceFromDBSnapshot_tdeCredentialArn,
    restoreDBInstanceFromDBSnapshot_enableCustomerOwnedIp,
    restoreDBInstanceFromDBSnapshot_copyTagsToSnapshot,
    restoreDBInstanceFromDBSnapshot_iops,
    restoreDBInstanceFromDBSnapshot_autoMinorVersionUpgrade,
    restoreDBInstanceFromDBSnapshot_dBInstanceIdentifier,
    restoreDBInstanceFromDBSnapshot_dBSnapshotIdentifier,
    restoreDBInstanceFromDBSnapshotResponse_dBInstance,
    restoreDBInstanceFromDBSnapshotResponse_httpStatus,

    -- ** CreateDBClusterEndpoint
    createDBClusterEndpoint_excludedMembers,
    createDBClusterEndpoint_tags,
    createDBClusterEndpoint_staticMembers,
    createDBClusterEndpoint_dBClusterIdentifier,
    createDBClusterEndpoint_dBClusterEndpointIdentifier,
    createDBClusterEndpoint_endpointType,
    dBClusterEndpoint_dBClusterEndpointIdentifier,
    dBClusterEndpoint_status,
    dBClusterEndpoint_excludedMembers,
    dBClusterEndpoint_endpointType,
    dBClusterEndpoint_customEndpointType,
    dBClusterEndpoint_dBClusterEndpointArn,
    dBClusterEndpoint_dBClusterIdentifier,
    dBClusterEndpoint_dBClusterEndpointResourceIdentifier,
    dBClusterEndpoint_endpoint,
    dBClusterEndpoint_staticMembers,

    -- ** CreateEventSubscription
    createEventSubscription_sourceIds,
    createEventSubscription_enabled,
    createEventSubscription_eventCategories,
    createEventSubscription_tags,
    createEventSubscription_sourceType,
    createEventSubscription_subscriptionName,
    createEventSubscription_snsTopicArn,
    createEventSubscriptionResponse_eventSubscription,
    createEventSubscriptionResponse_httpStatus,

    -- ** DeleteDBSnapshot
    deleteDBSnapshot_dBSnapshotIdentifier,
    deleteDBSnapshotResponse_dBSnapshot,
    deleteDBSnapshotResponse_httpStatus,

    -- ** DeleteDBClusterParameterGroup
    deleteDBClusterParameterGroup_dBClusterParameterGroupName,

    -- ** DescribeSourceRegions
    describeSourceRegions_regionName,
    describeSourceRegions_filters,
    describeSourceRegions_marker,
    describeSourceRegions_maxRecords,
    describeSourceRegionsResponse_sourceRegions,
    describeSourceRegionsResponse_marker,
    describeSourceRegionsResponse_httpStatus,

    -- ** PurchaseReservedDBInstancesOffering
    purchaseReservedDBInstancesOffering_dBInstanceCount,
    purchaseReservedDBInstancesOffering_tags,
    purchaseReservedDBInstancesOffering_reservedDBInstanceId,
    purchaseReservedDBInstancesOffering_reservedDBInstancesOfferingId,
    purchaseReservedDBInstancesOfferingResponse_reservedDBInstance,
    purchaseReservedDBInstancesOfferingResponse_httpStatus,

    -- ** AuthorizeDBSecurityGroupIngress
    authorizeDBSecurityGroupIngress_cIDRIP,
    authorizeDBSecurityGroupIngress_eC2SecurityGroupOwnerId,
    authorizeDBSecurityGroupIngress_eC2SecurityGroupId,
    authorizeDBSecurityGroupIngress_eC2SecurityGroupName,
    authorizeDBSecurityGroupIngress_dBSecurityGroupName,
    authorizeDBSecurityGroupIngressResponse_dBSecurityGroup,
    authorizeDBSecurityGroupIngressResponse_httpStatus,

    -- ** DeleteDBProxy
    deleteDBProxy_dBProxyName,
    deleteDBProxyResponse_dBProxy,
    deleteDBProxyResponse_httpStatus,

    -- ** RevokeDBSecurityGroupIngress
    revokeDBSecurityGroupIngress_cIDRIP,
    revokeDBSecurityGroupIngress_eC2SecurityGroupOwnerId,
    revokeDBSecurityGroupIngress_eC2SecurityGroupId,
    revokeDBSecurityGroupIngress_eC2SecurityGroupName,
    revokeDBSecurityGroupIngress_dBSecurityGroupName,
    revokeDBSecurityGroupIngressResponse_dBSecurityGroup,
    revokeDBSecurityGroupIngressResponse_httpStatus,

    -- ** ModifyDBParameterGroup
    modifyDBParameterGroup_dBParameterGroupName,
    modifyDBParameterGroup_parameters,
    dBParameterGroupNameMessage_dBParameterGroupName,

    -- ** DeregisterDBProxyTargets
    deregisterDBProxyTargets_dBClusterIdentifiers,
    deregisterDBProxyTargets_targetGroupName,
    deregisterDBProxyTargets_dBInstanceIdentifiers,
    deregisterDBProxyTargets_dBProxyName,
    deregisterDBProxyTargetsResponse_httpStatus,

    -- ** DeleteGlobalCluster
    deleteGlobalCluster_globalClusterIdentifier,
    deleteGlobalClusterResponse_globalCluster,
    deleteGlobalClusterResponse_httpStatus,

    -- ** PromoteReadReplicaDBCluster
    promoteReadReplicaDBCluster_dBClusterIdentifier,
    promoteReadReplicaDBClusterResponse_dBCluster,
    promoteReadReplicaDBClusterResponse_httpStatus,

    -- ** CreateGlobalCluster
    createGlobalCluster_deletionProtection,
    createGlobalCluster_storageEncrypted,
    createGlobalCluster_engineVersion,
    createGlobalCluster_engine,
    createGlobalCluster_globalClusterIdentifier,
    createGlobalCluster_databaseName,
    createGlobalCluster_sourceDBClusterIdentifier,
    createGlobalClusterResponse_globalCluster,
    createGlobalClusterResponse_httpStatus,

    -- ** ResetDBParameterGroup
    resetDBParameterGroup_resetAllParameters,
    resetDBParameterGroup_parameters,
    resetDBParameterGroup_dBParameterGroupName,
    dBParameterGroupNameMessage_dBParameterGroupName,

    -- ** DescribeDBProxyTargets
    describeDBProxyTargets_targetGroupName,
    describeDBProxyTargets_filters,
    describeDBProxyTargets_marker,
    describeDBProxyTargets_maxRecords,
    describeDBProxyTargets_dBProxyName,
    describeDBProxyTargetsResponse_targets,
    describeDBProxyTargetsResponse_marker,
    describeDBProxyTargetsResponse_httpStatus,

    -- ** ImportInstallationMedia
    importInstallationMedia_customAvailabilityZoneId,
    importInstallationMedia_engine,
    importInstallationMedia_engineVersion,
    importInstallationMedia_engineInstallationMediaPath,
    importInstallationMedia_oSInstallationMediaPath,
    installationMedia_status,
    installationMedia_customAvailabilityZoneId,
    installationMedia_installationMediaId,
    installationMedia_engineVersion,
    installationMedia_oSInstallationMediaPath,
    installationMedia_failureCause,
    installationMedia_engine,
    installationMedia_engineInstallationMediaPath,

    -- ** DeleteCustomAvailabilityZone
    deleteCustomAvailabilityZone_customAvailabilityZoneId,
    deleteCustomAvailabilityZoneResponse_customAvailabilityZone,
    deleteCustomAvailabilityZoneResponse_httpStatus,

    -- ** FailoverGlobalCluster
    failoverGlobalCluster_globalClusterIdentifier,
    failoverGlobalCluster_targetDbClusterIdentifier,
    failoverGlobalClusterResponse_globalCluster,
    failoverGlobalClusterResponse_httpStatus,

    -- ** RemoveSourceIdentifierFromSubscription
    removeSourceIdentifierFromSubscription_subscriptionName,
    removeSourceIdentifierFromSubscription_sourceIdentifier,
    removeSourceIdentifierFromSubscriptionResponse_eventSubscription,
    removeSourceIdentifierFromSubscriptionResponse_httpStatus,

    -- ** CopyDBClusterSnapshot
    copyDBClusterSnapshot_kmsKeyId,
    copyDBClusterSnapshot_copyTags,
    copyDBClusterSnapshot_tags,
    copyDBClusterSnapshot_preSignedUrl,
    copyDBClusterSnapshot_sourceDBClusterSnapshotIdentifier,
    copyDBClusterSnapshot_targetDBClusterSnapshotIdentifier,
    copyDBClusterSnapshotResponse_dBClusterSnapshot,
    copyDBClusterSnapshotResponse_httpStatus,

    -- ** DescribeInstallationMedia
    describeInstallationMedia_installationMediaId,
    describeInstallationMedia_filters,
    describeInstallationMedia_marker,
    describeInstallationMedia_maxRecords,
    describeInstallationMediaResponse_installationMedia,
    describeInstallationMediaResponse_marker,
    describeInstallationMediaResponse_httpStatus,

    -- ** CopyDBParameterGroup
    copyDBParameterGroup_tags,
    copyDBParameterGroup_sourceDBParameterGroupIdentifier,
    copyDBParameterGroup_targetDBParameterGroupIdentifier,
    copyDBParameterGroup_targetDBParameterGroupDescription,
    copyDBParameterGroupResponse_dBParameterGroup,
    copyDBParameterGroupResponse_httpStatus,

    -- ** RestoreDBInstanceToPointInTime
    restoreDBInstanceToPointInTime_deletionProtection,
    restoreDBInstanceToPointInTime_sourceDBInstanceAutomatedBackupsArn,
    restoreDBInstanceToPointInTime_maxAllocatedStorage,
    restoreDBInstanceToPointInTime_sourceDBInstanceIdentifier,
    restoreDBInstanceToPointInTime_enableIAMDatabaseAuthentication,
    restoreDBInstanceToPointInTime_enableCloudwatchLogsExports,
    restoreDBInstanceToPointInTime_storageType,
    restoreDBInstanceToPointInTime_useDefaultProcessorFeatures,
    restoreDBInstanceToPointInTime_optionGroupName,
    restoreDBInstanceToPointInTime_domain,
    restoreDBInstanceToPointInTime_restoreTime,
    restoreDBInstanceToPointInTime_dBSubnetGroupName,
    restoreDBInstanceToPointInTime_multiAZ,
    restoreDBInstanceToPointInTime_publiclyAccessible,
    restoreDBInstanceToPointInTime_vpcSecurityGroupIds,
    restoreDBInstanceToPointInTime_dBParameterGroupName,
    restoreDBInstanceToPointInTime_availabilityZone,
    restoreDBInstanceToPointInTime_licenseModel,
    restoreDBInstanceToPointInTime_tdeCredentialPassword,
    restoreDBInstanceToPointInTime_tags,
    restoreDBInstanceToPointInTime_processorFeatures,
    restoreDBInstanceToPointInTime_port,
    restoreDBInstanceToPointInTime_dBInstanceClass,
    restoreDBInstanceToPointInTime_dBName,
    restoreDBInstanceToPointInTime_domainIAMRoleName,
    restoreDBInstanceToPointInTime_engine,
    restoreDBInstanceToPointInTime_tdeCredentialArn,
    restoreDBInstanceToPointInTime_enableCustomerOwnedIp,
    restoreDBInstanceToPointInTime_copyTagsToSnapshot,
    restoreDBInstanceToPointInTime_sourceDbiResourceId,
    restoreDBInstanceToPointInTime_iops,
    restoreDBInstanceToPointInTime_autoMinorVersionUpgrade,
    restoreDBInstanceToPointInTime_useLatestRestorableTime,
    restoreDBInstanceToPointInTime_targetDBInstanceIdentifier,
    restoreDBInstanceToPointInTimeResponse_dBInstance,
    restoreDBInstanceToPointInTimeResponse_httpStatus,

    -- ** ListTagsForResource
    listTagsForResource_filters,
    listTagsForResource_resourceName,
    listTagsForResourceResponse_tagList,
    listTagsForResourceResponse_httpStatus,

    -- ** ModifyDBSnapshot
    modifyDBSnapshot_optionGroupName,
    modifyDBSnapshot_engineVersion,
    modifyDBSnapshot_dBSnapshotIdentifier,
    modifyDBSnapshotResponse_dBSnapshot,
    modifyDBSnapshotResponse_httpStatus,

    -- ** ModifyDBSubnetGroup
    modifyDBSubnetGroup_dBSubnetGroupDescription,
    modifyDBSubnetGroup_dBSubnetGroupName,
    modifyDBSubnetGroup_subnetIds,
    modifyDBSubnetGroupResponse_dBSubnetGroup,
    modifyDBSubnetGroupResponse_httpStatus,

    -- ** DescribeEngineDefaultParameters
    describeEngineDefaultParameters_filters,
    describeEngineDefaultParameters_marker,
    describeEngineDefaultParameters_maxRecords,
    describeEngineDefaultParameters_dBParameterGroupFamily,
    describeEngineDefaultParametersResponse_httpStatus,
    describeEngineDefaultParametersResponse_engineDefaults,

    -- ** DescribeCustomAvailabilityZones
    describeCustomAvailabilityZones_customAvailabilityZoneId,
    describeCustomAvailabilityZones_filters,
    describeCustomAvailabilityZones_marker,
    describeCustomAvailabilityZones_maxRecords,
    describeCustomAvailabilityZonesResponse_customAvailabilityZones,
    describeCustomAvailabilityZonesResponse_marker,
    describeCustomAvailabilityZonesResponse_httpStatus,

    -- ** AddRoleToDBCluster
    addRoleToDBCluster_featureName,
    addRoleToDBCluster_dBClusterIdentifier,
    addRoleToDBCluster_roleArn,

    -- * Types

    -- ** AccountQuota
    accountQuota_used,
    accountQuota_accountQuotaName,
    accountQuota_max,

    -- ** AvailabilityZone
    availabilityZone_name,

    -- ** AvailableProcessorFeature
    availableProcessorFeature_allowedValues,
    availableProcessorFeature_name,
    availableProcessorFeature_defaultValue,

    -- ** Certificate
    certificate_certificateIdentifier,
    certificate_validFrom,
    certificate_customerOverride,
    certificate_certificateArn,
    certificate_certificateType,
    certificate_thumbprint,
    certificate_customerOverrideValidTill,
    certificate_validTill,

    -- ** CharacterSet
    characterSet_characterSetName,
    characterSet_characterSetDescription,

    -- ** CloudwatchLogsExportConfiguration
    cloudwatchLogsExportConfiguration_enableLogTypes,
    cloudwatchLogsExportConfiguration_disableLogTypes,

    -- ** ClusterPendingModifiedValues
    clusterPendingModifiedValues_masterUserPassword,
    clusterPendingModifiedValues_pendingCloudwatchLogsExports,
    clusterPendingModifiedValues_dBClusterIdentifier,
    clusterPendingModifiedValues_engineVersion,
    clusterPendingModifiedValues_iAMDatabaseAuthenticationEnabled,

    -- ** ConnectionPoolConfiguration
    connectionPoolConfiguration_sessionPinningFilters,
    connectionPoolConfiguration_maxIdleConnectionsPercent,
    connectionPoolConfiguration_connectionBorrowTimeout,
    connectionPoolConfiguration_initQuery,
    connectionPoolConfiguration_maxConnectionsPercent,

    -- ** ConnectionPoolConfigurationInfo
    connectionPoolConfigurationInfo_sessionPinningFilters,
    connectionPoolConfigurationInfo_maxIdleConnectionsPercent,
    connectionPoolConfigurationInfo_connectionBorrowTimeout,
    connectionPoolConfigurationInfo_initQuery,
    connectionPoolConfigurationInfo_maxConnectionsPercent,

    -- ** CustomAvailabilityZone
    customAvailabilityZone_customAvailabilityZoneId,
    customAvailabilityZone_customAvailabilityZoneName,
    customAvailabilityZone_vpnDetails,
    customAvailabilityZone_customAvailabilityZoneStatus,

    -- ** DBCluster
    dBCluster_backupRetentionPeriod,
    dBCluster_deletionProtection,
    dBCluster_storageEncrypted,
    dBCluster_associatedRoles,
    dBCluster_vpcSecurityGroups,
    dBCluster_preferredBackupWindow,
    dBCluster_dBClusterMembers,
    dBCluster_status,
    dBCluster_backtrackConsumedChangeRecords,
    dBCluster_crossAccountClone,
    dBCluster_availabilityZones,
    dBCluster_globalWriteForwardingStatus,
    dBCluster_dBClusterOptionGroupMemberships,
    dBCluster_cloneGroupId,
    dBCluster_latestRestorableTime,
    dBCluster_dBClusterArn,
    dBCluster_domainMemberships,
    dBCluster_activityStreamKmsKeyId,
    dBCluster_readerEndpoint,
    dBCluster_httpEndpointEnabled,
    dBCluster_clusterCreateTime,
    dBCluster_earliestRestorableTime,
    dBCluster_engineMode,
    dBCluster_activityStreamStatus,
    dBCluster_enabledCloudwatchLogsExports,
    dBCluster_hostedZoneId,
    dBCluster_dBSubnetGroup,
    dBCluster_readReplicaIdentifiers,
    dBCluster_masterUsername,
    dBCluster_multiAZ,
    dBCluster_kmsKeyId,
    dBCluster_dBClusterIdentifier,
    dBCluster_capacity,
    dBCluster_engineVersion,
    dBCluster_preferredMaintenanceWindow,
    dBCluster_characterSetName,
    dBCluster_port,
    dBCluster_percentProgress,
    dBCluster_engine,
    dBCluster_pendingModifiedValues,
    dBCluster_dbClusterResourceId,
    dBCluster_copyTagsToSnapshot,
    dBCluster_customEndpoints,
    dBCluster_endpoint,
    dBCluster_scalingConfigurationInfo,
    dBCluster_earliestBacktrackTime,
    dBCluster_tagList,
    dBCluster_allocatedStorage,
    dBCluster_backtrackWindow,
    dBCluster_iAMDatabaseAuthenticationEnabled,
    dBCluster_globalWriteForwardingRequested,
    dBCluster_dBClusterParameterGroup,
    dBCluster_replicationSourceIdentifier,
    dBCluster_databaseName,
    dBCluster_activityStreamKinesisStreamName,
    dBCluster_activityStreamMode,

    -- ** DBClusterBacktrack
    dBClusterBacktrack_status,
    dBClusterBacktrack_backtrackIdentifier,
    dBClusterBacktrack_backtrackTo,
    dBClusterBacktrack_dBClusterIdentifier,
    dBClusterBacktrack_backtrackRequestCreationTime,
    dBClusterBacktrack_backtrackedFrom,

    -- ** DBClusterEndpoint
    dBClusterEndpoint_dBClusterEndpointIdentifier,
    dBClusterEndpoint_status,
    dBClusterEndpoint_excludedMembers,
    dBClusterEndpoint_endpointType,
    dBClusterEndpoint_customEndpointType,
    dBClusterEndpoint_dBClusterEndpointArn,
    dBClusterEndpoint_dBClusterIdentifier,
    dBClusterEndpoint_dBClusterEndpointResourceIdentifier,
    dBClusterEndpoint_endpoint,
    dBClusterEndpoint_staticMembers,

    -- ** DBClusterMember
    dBClusterMember_isClusterWriter,
    dBClusterMember_dBInstanceIdentifier,
    dBClusterMember_promotionTier,
    dBClusterMember_dBClusterParameterGroupStatus,

    -- ** DBClusterOptionGroupStatus
    dBClusterOptionGroupStatus_status,
    dBClusterOptionGroupStatus_dBClusterOptionGroupName,

    -- ** DBClusterParameterGroup
    dBClusterParameterGroup_dBClusterParameterGroupArn,
    dBClusterParameterGroup_dBParameterGroupFamily,
    dBClusterParameterGroup_description,
    dBClusterParameterGroup_dBClusterParameterGroupName,

    -- ** DBClusterParameterGroupNameMessage
    dBClusterParameterGroupNameMessage_dBClusterParameterGroupName,

    -- ** DBClusterRole
    dBClusterRole_status,
    dBClusterRole_roleArn,
    dBClusterRole_featureName,

    -- ** DBClusterSnapshot
    dBClusterSnapshot_storageEncrypted,
    dBClusterSnapshot_status,
    dBClusterSnapshot_availabilityZones,
    dBClusterSnapshot_clusterCreateTime,
    dBClusterSnapshot_snapshotCreateTime,
    dBClusterSnapshot_engineMode,
    dBClusterSnapshot_masterUsername,
    dBClusterSnapshot_kmsKeyId,
    dBClusterSnapshot_dBClusterIdentifier,
    dBClusterSnapshot_engineVersion,
    dBClusterSnapshot_snapshotType,
    dBClusterSnapshot_licenseModel,
    dBClusterSnapshot_port,
    dBClusterSnapshot_percentProgress,
    dBClusterSnapshot_engine,
    dBClusterSnapshot_dBClusterSnapshotIdentifier,
    dBClusterSnapshot_sourceDBClusterSnapshotArn,
    dBClusterSnapshot_tagList,
    dBClusterSnapshot_vpcId,
    dBClusterSnapshot_allocatedStorage,
    dBClusterSnapshot_iAMDatabaseAuthenticationEnabled,
    dBClusterSnapshot_dBClusterSnapshotArn,

    -- ** DBClusterSnapshotAttribute
    dBClusterSnapshotAttribute_attributeName,
    dBClusterSnapshotAttribute_attributeValues,

    -- ** DBClusterSnapshotAttributesResult
    dBClusterSnapshotAttributesResult_dBClusterSnapshotAttributes,
    dBClusterSnapshotAttributesResult_dBClusterSnapshotIdentifier,

    -- ** DBEngineVersion
    dBEngineVersion_status,
    dBEngineVersion_dBEngineVersionDescription,
    dBEngineVersion_dBEngineDescription,
    dBEngineVersion_supportedTimezones,
    dBEngineVersion_supportedEngineModes,
    dBEngineVersion_supportedNcharCharacterSets,
    dBEngineVersion_validUpgradeTarget,
    dBEngineVersion_engineVersion,
    dBEngineVersion_supportsGlobalDatabases,
    dBEngineVersion_exportableLogTypes,
    dBEngineVersion_supportedCharacterSets,
    dBEngineVersion_supportsReadReplica,
    dBEngineVersion_dBParameterGroupFamily,
    dBEngineVersion_engine,
    dBEngineVersion_supportedFeatureNames,
    dBEngineVersion_supportsLogExportsToCloudwatchLogs,
    dBEngineVersion_defaultCharacterSet,
    dBEngineVersion_supportsParallelQuery,

    -- ** DBInstance
    dBInstance_backupRetentionPeriod,
    dBInstance_deletionProtection,
    dBInstance_storageEncrypted,
    dBInstance_associatedRoles,
    dBInstance_vpcSecurityGroups,
    dBInstance_preferredBackupWindow,
    dBInstance_cACertificateIdentifier,
    dBInstance_dBSecurityGroups,
    dBInstance_maxAllocatedStorage,
    dBInstance_statusInfos,
    dBInstance_storageType,
    dBInstance_latestRestorableTime,
    dBInstance_domainMemberships,
    dBInstance_dbInstancePort,
    dBInstance_monitoringInterval,
    dBInstance_dBParameterGroups,
    dBInstance_instanceCreateTime,
    dBInstance_dbiResourceId,
    dBInstance_optionGroupMemberships,
    dBInstance_listenerEndpoint,
    dBInstance_monitoringRoleArn,
    dBInstance_enabledCloudwatchLogsExports,
    dBInstance_dBSubnetGroup,
    dBInstance_ncharCharacterSetName,
    dBInstance_masterUsername,
    dBInstance_multiAZ,
    dBInstance_publiclyAccessible,
    dBInstance_performanceInsightsKMSKeyId,
    dBInstance_kmsKeyId,
    dBInstance_availabilityZone,
    dBInstance_dBClusterIdentifier,
    dBInstance_customerOwnedIpEnabled,
    dBInstance_engineVersion,
    dBInstance_preferredMaintenanceWindow,
    dBInstance_characterSetName,
    dBInstance_performanceInsightsRetentionPeriod,
    dBInstance_licenseModel,
    dBInstance_dBInstanceIdentifier,
    dBInstance_promotionTier,
    dBInstance_processorFeatures,
    dBInstance_awsBackupRecoveryPointArn,
    dBInstance_dBInstanceClass,
    dBInstance_dBName,
    dBInstance_engine,
    dBInstance_readReplicaDBClusterIdentifiers,
    dBInstance_pendingModifiedValues,
    dBInstance_tdeCredentialArn,
    dBInstance_timezone,
    dBInstance_dBInstanceStatus,
    dBInstance_dBInstanceAutomatedBackupsReplications,
    dBInstance_copyTagsToSnapshot,
    dBInstance_readReplicaSourceDBInstanceIdentifier,
    dBInstance_replicaMode,
    dBInstance_endpoint,
    dBInstance_tagList,
    dBInstance_performanceInsightsEnabled,
    dBInstance_allocatedStorage,
    dBInstance_iAMDatabaseAuthenticationEnabled,
    dBInstance_secondaryAvailabilityZone,
    dBInstance_iops,
    dBInstance_enhancedMonitoringResourceArn,
    dBInstance_readReplicaDBInstanceIdentifiers,
    dBInstance_autoMinorVersionUpgrade,
    dBInstance_dBInstanceArn,

    -- ** DBInstanceAutomatedBackup
    dBInstanceAutomatedBackup_backupRetentionPeriod,
    dBInstanceAutomatedBackup_status,
    dBInstanceAutomatedBackup_dBInstanceAutomatedBackupsArn,
    dBInstanceAutomatedBackup_storageType,
    dBInstanceAutomatedBackup_encrypted,
    dBInstanceAutomatedBackup_optionGroupName,
    dBInstanceAutomatedBackup_instanceCreateTime,
    dBInstanceAutomatedBackup_dbiResourceId,
    dBInstanceAutomatedBackup_masterUsername,
    dBInstanceAutomatedBackup_kmsKeyId,
    dBInstanceAutomatedBackup_availabilityZone,
    dBInstanceAutomatedBackup_engineVersion,
    dBInstanceAutomatedBackup_restoreWindow,
    dBInstanceAutomatedBackup_licenseModel,
    dBInstanceAutomatedBackup_dBInstanceIdentifier,
    dBInstanceAutomatedBackup_port,
    dBInstanceAutomatedBackup_engine,
    dBInstanceAutomatedBackup_tdeCredentialArn,
    dBInstanceAutomatedBackup_timezone,
    dBInstanceAutomatedBackup_dBInstanceAutomatedBackupsReplications,
    dBInstanceAutomatedBackup_region,
    dBInstanceAutomatedBackup_vpcId,
    dBInstanceAutomatedBackup_allocatedStorage,
    dBInstanceAutomatedBackup_iAMDatabaseAuthenticationEnabled,
    dBInstanceAutomatedBackup_iops,
    dBInstanceAutomatedBackup_dBInstanceArn,

    -- ** DBInstanceAutomatedBackupsReplication
    dBInstanceAutomatedBackupsReplication_dBInstanceAutomatedBackupsArn,

    -- ** DBInstanceRole
    dBInstanceRole_status,
    dBInstanceRole_roleArn,
    dBInstanceRole_featureName,

    -- ** DBInstanceStatusInfo
    dBInstanceStatusInfo_status,
    dBInstanceStatusInfo_message,
    dBInstanceStatusInfo_normal,
    dBInstanceStatusInfo_statusType,

    -- ** DBParameterGroup
    dBParameterGroup_dBParameterGroupArn,
    dBParameterGroup_dBParameterGroupName,
    dBParameterGroup_dBParameterGroupFamily,
    dBParameterGroup_description,

    -- ** DBParameterGroupNameMessage
    dBParameterGroupNameMessage_dBParameterGroupName,

    -- ** DBParameterGroupStatus
    dBParameterGroupStatus_dBParameterGroupName,
    dBParameterGroupStatus_parameterApplyStatus,

    -- ** DBProxy
    dBProxy_dBProxyArn,
    dBProxy_status,
    dBProxy_createdDate,
    dBProxy_roleArn,
    dBProxy_idleClientTimeout,
    dBProxy_vpcSubnetIds,
    dBProxy_auth,
    dBProxy_engineFamily,
    dBProxy_vpcSecurityGroupIds,
    dBProxy_debugLogging,
    dBProxy_updatedDate,
    dBProxy_requireTLS,
    dBProxy_endpoint,
    dBProxy_dBProxyName,

    -- ** DBProxyTarget
    dBProxyTarget_trackedClusterId,
    dBProxyTarget_rdsResourceId,
    dBProxyTarget_targetArn,
    dBProxyTarget_port,
    dBProxyTarget_endpoint,
    dBProxyTarget_type,
    dBProxyTarget_targetHealth,

    -- ** DBProxyTargetGroup
    dBProxyTargetGroup_status,
    dBProxyTargetGroup_createdDate,
    dBProxyTargetGroup_isDefault,
    dBProxyTargetGroup_targetGroupName,
    dBProxyTargetGroup_targetGroupArn,
    dBProxyTargetGroup_connectionPoolConfig,
    dBProxyTargetGroup_updatedDate,
    dBProxyTargetGroup_dBProxyName,

    -- ** DBSecurityGroup
    dBSecurityGroup_ownerId,
    dBSecurityGroup_dBSecurityGroupName,
    dBSecurityGroup_iPRanges,
    dBSecurityGroup_dBSecurityGroupDescription,
    dBSecurityGroup_eC2SecurityGroups,
    dBSecurityGroup_vpcId,
    dBSecurityGroup_dBSecurityGroupArn,

    -- ** DBSecurityGroupMembership
    dBSecurityGroupMembership_status,
    dBSecurityGroupMembership_dBSecurityGroupName,

    -- ** DBSnapshot
    dBSnapshot_status,
    dBSnapshot_storageType,
    dBSnapshot_dBSnapshotIdentifier,
    dBSnapshot_encrypted,
    dBSnapshot_optionGroupName,
    dBSnapshot_instanceCreateTime,
    dBSnapshot_dbiResourceId,
    dBSnapshot_snapshotCreateTime,
    dBSnapshot_masterUsername,
    dBSnapshot_kmsKeyId,
    dBSnapshot_availabilityZone,
    dBSnapshot_dBSnapshotArn,
    dBSnapshot_engineVersion,
    dBSnapshot_snapshotType,
    dBSnapshot_sourceDBSnapshotIdentifier,
    dBSnapshot_licenseModel,
    dBSnapshot_dBInstanceIdentifier,
    dBSnapshot_processorFeatures,
    dBSnapshot_port,
    dBSnapshot_percentProgress,
    dBSnapshot_engine,
    dBSnapshot_tdeCredentialArn,
    dBSnapshot_timezone,
    dBSnapshot_tagList,
    dBSnapshot_vpcId,
    dBSnapshot_allocatedStorage,
    dBSnapshot_sourceRegion,
    dBSnapshot_iAMDatabaseAuthenticationEnabled,
    dBSnapshot_iops,

    -- ** DBSnapshotAttribute
    dBSnapshotAttribute_attributeName,
    dBSnapshotAttribute_attributeValues,

    -- ** DBSnapshotAttributesResult
    dBSnapshotAttributesResult_dBSnapshotIdentifier,
    dBSnapshotAttributesResult_dBSnapshotAttributes,

    -- ** DBSubnetGroup
    dBSubnetGroup_subnetGroupStatus,
    dBSubnetGroup_dBSubnetGroupName,
    dBSubnetGroup_dBSubnetGroupArn,
    dBSubnetGroup_dBSubnetGroupDescription,
    dBSubnetGroup_subnets,
    dBSubnetGroup_vpcId,

    -- ** DescribeDBLogFilesDetails
    describeDBLogFilesDetails_lastWritten,
    describeDBLogFilesDetails_logFileName,
    describeDBLogFilesDetails_size,

    -- ** DomainMembership
    domainMembership_status,
    domainMembership_domain,
    domainMembership_iAMRoleName,
    domainMembership_fQDN,

    -- ** DoubleRange
    doubleRange_to,
    doubleRange_from,

    -- ** EC2SecurityGroup
    eC2SecurityGroup_status,
    eC2SecurityGroup_eC2SecurityGroupOwnerId,
    eC2SecurityGroup_eC2SecurityGroupId,
    eC2SecurityGroup_eC2SecurityGroupName,

    -- ** Endpoint
    endpoint_address,
    endpoint_hostedZoneId,
    endpoint_port,

    -- ** EngineDefaults
    engineDefaults_dBParameterGroupFamily,
    engineDefaults_parameters,
    engineDefaults_marker,

    -- ** Event
    event_message,
    event_eventCategories,
    event_date,
    event_sourceIdentifier,
    event_sourceArn,
    event_sourceType,

    -- ** EventCategoriesMap
    eventCategoriesMap_eventCategories,
    eventCategoriesMap_sourceType,

    -- ** EventSubscription
    eventSubscription_custSubscriptionId,
    eventSubscription_status,
    eventSubscription_sourceIdsList,
    eventSubscription_eventCategoriesList,
    eventSubscription_enabled,
    eventSubscription_eventSubscriptionArn,
    eventSubscription_subscriptionCreationTime,
    eventSubscription_customerAwsId,
    eventSubscription_sourceType,
    eventSubscription_snsTopicArn,

    -- ** ExportTask
    exportTask_taskEndTime,
    exportTask_iamRoleArn,
    exportTask_status,
    exportTask_totalExtractedDataInGB,
    exportTask_warningMessage,
    exportTask_snapshotTime,
    exportTask_s3Bucket,
    exportTask_exportOnly,
    exportTask_kmsKeyId,
    exportTask_failureCause,
    exportTask_percentProgress,
    exportTask_sourceArn,
    exportTask_s3Prefix,
    exportTask_taskStartTime,
    exportTask_exportTaskIdentifier,

    -- ** FailoverState
    failoverState_status,
    failoverState_toDbClusterArn,
    failoverState_fromDbClusterArn,

    -- ** Filter
    filter_name,
    filter_values,

    -- ** GlobalCluster
    globalCluster_deletionProtection,
    globalCluster_storageEncrypted,
    globalCluster_status,
    globalCluster_failoverState,
    globalCluster_engineVersion,
    globalCluster_globalClusterArn,
    globalCluster_engine,
    globalCluster_globalClusterResourceId,
    globalCluster_globalClusterMembers,
    globalCluster_globalClusterIdentifier,
    globalCluster_databaseName,

    -- ** GlobalClusterMember
    globalClusterMember_globalWriteForwardingStatus,
    globalClusterMember_dBClusterArn,
    globalClusterMember_readers,
    globalClusterMember_isWriter,

    -- ** IPRange
    iPRange_status,
    iPRange_cIDRIP,

    -- ** InstallationMedia
    installationMedia_status,
    installationMedia_customAvailabilityZoneId,
    installationMedia_installationMediaId,
    installationMedia_engineVersion,
    installationMedia_oSInstallationMediaPath,
    installationMedia_failureCause,
    installationMedia_engine,
    installationMedia_engineInstallationMediaPath,

    -- ** InstallationMediaFailureCause
    installationMediaFailureCause_message,

    -- ** MinimumEngineVersionPerAllowedValue
    minimumEngineVersionPerAllowedValue_allowedValue,
    minimumEngineVersionPerAllowedValue_minimumEngineVersion,

    -- ** Option
    option_optionName,
    option_optionVersion,
    option_dBSecurityGroupMemberships,
    option_optionDescription,
    option_port,
    option_optionSettings,
    option_persistent,
    option_vpcSecurityGroupMemberships,
    option_permanent,

    -- ** OptionConfiguration
    optionConfiguration_optionVersion,
    optionConfiguration_dBSecurityGroupMemberships,
    optionConfiguration_port,
    optionConfiguration_optionSettings,
    optionConfiguration_vpcSecurityGroupMemberships,
    optionConfiguration_optionName,

    -- ** OptionGroup
    optionGroup_engineName,
    optionGroup_optionGroupArn,
    optionGroup_allowsVpcAndNonVpcInstanceMemberships,
    optionGroup_optionGroupName,
    optionGroup_options,
    optionGroup_optionGroupDescription,
    optionGroup_majorEngineVersion,
    optionGroup_vpcId,

    -- ** OptionGroupMembership
    optionGroupMembership_status,
    optionGroupMembership_optionGroupName,

    -- ** OptionGroupOption
    optionGroupOption_optionsConflictsWith,
    optionGroupOption_vpcOnly,
    optionGroupOption_engineName,
    optionGroupOption_optionGroupOptionVersions,
    optionGroupOption_defaultPort,
    optionGroupOption_requiresAutoMinorEngineVersionUpgrade,
    optionGroupOption_optionGroupOptionSettings,
    optionGroupOption_majorEngineVersion,
    optionGroupOption_name,
    optionGroupOption_minimumRequiredMinorEngineVersion,
    optionGroupOption_optionsDependedOn,
    optionGroupOption_description,
    optionGroupOption_portRequired,
    optionGroupOption_persistent,
    optionGroupOption_permanent,
    optionGroupOption_supportsOptionVersionDowngrade,

    -- ** OptionGroupOptionSetting
    optionGroupOptionSetting_minimumEngineVersionPerAllowedValue,
    optionGroupOptionSetting_allowedValues,
    optionGroupOptionSetting_applyType,
    optionGroupOptionSetting_settingName,
    optionGroupOptionSetting_isRequired,
    optionGroupOptionSetting_settingDescription,
    optionGroupOptionSetting_isModifiable,
    optionGroupOptionSetting_defaultValue,

    -- ** OptionSetting
    optionSetting_isCollection,
    optionSetting_allowedValues,
    optionSetting_name,
    optionSetting_applyType,
    optionSetting_description,
    optionSetting_value,
    optionSetting_dataType,
    optionSetting_isModifiable,
    optionSetting_defaultValue,

    -- ** OptionVersion
    optionVersion_isDefault,
    optionVersion_version,

    -- ** OrderableDBInstanceOption
    orderableDBInstanceOption_minIopsPerDbInstance,
    orderableDBInstanceOption_availabilityZones,
    orderableDBInstanceOption_supportsKerberosAuthentication,
    orderableDBInstanceOption_supportsIops,
    orderableDBInstanceOption_storageType,
    orderableDBInstanceOption_supportsEnhancedMonitoring,
    orderableDBInstanceOption_availableProcessorFeatures,
    orderableDBInstanceOption_maxStorageSize,
    orderableDBInstanceOption_supportedEngineModes,
    orderableDBInstanceOption_maxIopsPerGib,
    orderableDBInstanceOption_supportsStorageEncryption,
    orderableDBInstanceOption_multiAZCapable,
    orderableDBInstanceOption_supportsStorageAutoscaling,
    orderableDBInstanceOption_engineVersion,
    orderableDBInstanceOption_minIopsPerGib,
    orderableDBInstanceOption_supportsIAMDatabaseAuthentication,
    orderableDBInstanceOption_licenseModel,
    orderableDBInstanceOption_supportsGlobalDatabases,
    orderableDBInstanceOption_supportsPerformanceInsights,
    orderableDBInstanceOption_maxIopsPerDbInstance,
    orderableDBInstanceOption_dBInstanceClass,
    orderableDBInstanceOption_outpostCapable,
    orderableDBInstanceOption_engine,
    orderableDBInstanceOption_minStorageSize,
    orderableDBInstanceOption_availabilityZoneGroup,
    orderableDBInstanceOption_vpc,
    orderableDBInstanceOption_readReplicaCapable,

    -- ** Outpost
    outpost_arn,

    -- ** Parameter
    parameter_allowedValues,
    parameter_supportedEngineModes,
    parameter_source,
    parameter_parameterValue,
    parameter_applyType,
    parameter_parameterName,
    parameter_description,
    parameter_applyMethod,
    parameter_dataType,
    parameter_isModifiable,
    parameter_minimumEngineVersion,

    -- ** PendingCloudwatchLogsExports
    pendingCloudwatchLogsExports_logTypesToDisable,
    pendingCloudwatchLogsExports_logTypesToEnable,

    -- ** PendingMaintenanceAction
    pendingMaintenanceAction_forcedApplyDate,
    pendingMaintenanceAction_optInStatus,
    pendingMaintenanceAction_autoAppliedAfterDate,
    pendingMaintenanceAction_currentApplyDate,
    pendingMaintenanceAction_action,
    pendingMaintenanceAction_description,

    -- ** PendingModifiedValues
    pendingModifiedValues_backupRetentionPeriod,
    pendingModifiedValues_cACertificateIdentifier,
    pendingModifiedValues_storageType,
    pendingModifiedValues_dBSubnetGroupName,
    pendingModifiedValues_masterUserPassword,
    pendingModifiedValues_multiAZ,
    pendingModifiedValues_pendingCloudwatchLogsExports,
    pendingModifiedValues_engineVersion,
    pendingModifiedValues_licenseModel,
    pendingModifiedValues_dBInstanceIdentifier,
    pendingModifiedValues_processorFeatures,
    pendingModifiedValues_port,
    pendingModifiedValues_dBInstanceClass,
    pendingModifiedValues_allocatedStorage,
    pendingModifiedValues_iAMDatabaseAuthenticationEnabled,
    pendingModifiedValues_iops,

    -- ** ProcessorFeature
    processorFeature_name,
    processorFeature_value,

    -- ** Range
    range_to,
    range_from,
    range_step,

    -- ** RecurringCharge
    recurringCharge_recurringChargeFrequency,
    recurringCharge_recurringChargeAmount,

    -- ** ReservedDBInstance
    reservedDBInstance_duration,
    reservedDBInstance_reservedDBInstanceArn,
    reservedDBInstance_startTime,
    reservedDBInstance_currencyCode,
    reservedDBInstance_multiAZ,
    reservedDBInstance_state,
    reservedDBInstance_dBInstanceCount,
    reservedDBInstance_dBInstanceClass,
    reservedDBInstance_reservedDBInstanceId,
    reservedDBInstance_fixedPrice,
    reservedDBInstance_leaseId,
    reservedDBInstance_usagePrice,
    reservedDBInstance_offeringType,
    reservedDBInstance_recurringCharges,
    reservedDBInstance_productDescription,
    reservedDBInstance_reservedDBInstancesOfferingId,

    -- ** ReservedDBInstancesOffering
    reservedDBInstancesOffering_duration,
    reservedDBInstancesOffering_currencyCode,
    reservedDBInstancesOffering_multiAZ,
    reservedDBInstancesOffering_dBInstanceClass,
    reservedDBInstancesOffering_fixedPrice,
    reservedDBInstancesOffering_usagePrice,
    reservedDBInstancesOffering_offeringType,
    reservedDBInstancesOffering_recurringCharges,
    reservedDBInstancesOffering_productDescription,
    reservedDBInstancesOffering_reservedDBInstancesOfferingId,

    -- ** ResourcePendingMaintenanceActions
    resourcePendingMaintenanceActions_pendingMaintenanceActionDetails,
    resourcePendingMaintenanceActions_resourceIdentifier,

    -- ** RestoreWindow
    restoreWindow_earliestTime,
    restoreWindow_latestTime,

    -- ** ScalingConfiguration
    scalingConfiguration_maxCapacity,
    scalingConfiguration_autoPause,
    scalingConfiguration_timeoutAction,
    scalingConfiguration_secondsUntilAutoPause,
    scalingConfiguration_minCapacity,

    -- ** ScalingConfigurationInfo
    scalingConfigurationInfo_maxCapacity,
    scalingConfigurationInfo_autoPause,
    scalingConfigurationInfo_timeoutAction,
    scalingConfigurationInfo_secondsUntilAutoPause,
    scalingConfigurationInfo_minCapacity,

    -- ** SourceRegion
    sourceRegion_regionName,
    sourceRegion_status,
    sourceRegion_supportsDBInstanceAutomatedBackupsReplication,
    sourceRegion_endpoint,

    -- ** Subnet
    subnet_subnetStatus,
    subnet_subnetIdentifier,
    subnet_subnetAvailabilityZone,
    subnet_subnetOutpost,

    -- ** Tag
    tag_key,
    tag_value,

    -- ** TargetHealth
    targetHealth_state,
    targetHealth_reason,
    targetHealth_description,

    -- ** Timezone
    timezone_timezoneName,

    -- ** UpgradeTarget
    upgradeTarget_autoUpgrade,
    upgradeTarget_supportedEngineModes,
    upgradeTarget_engineVersion,
    upgradeTarget_supportsGlobalDatabases,
    upgradeTarget_engine,
    upgradeTarget_description,
    upgradeTarget_isMajorVersionUpgrade,
    upgradeTarget_supportsParallelQuery,

    -- ** UserAuthConfig
    userAuthConfig_secretArn,
    userAuthConfig_iAMAuth,
    userAuthConfig_authScheme,
    userAuthConfig_userName,
    userAuthConfig_description,

    -- ** UserAuthConfigInfo
    userAuthConfigInfo_secretArn,
    userAuthConfigInfo_iAMAuth,
    userAuthConfigInfo_authScheme,
    userAuthConfigInfo_userName,
    userAuthConfigInfo_description,

    -- ** ValidDBInstanceModificationsMessage
    validDBInstanceModificationsMessage_validProcessorFeatures,
    validDBInstanceModificationsMessage_storage,

    -- ** ValidStorageOptions
    validStorageOptions_storageType,
    validStorageOptions_provisionedIops,
    validStorageOptions_supportsStorageAutoscaling,
    validStorageOptions_storageSize,
    validStorageOptions_iopsToStorageRatio,

    -- ** VpcSecurityGroupMembership
    vpcSecurityGroupMembership_status,
    vpcSecurityGroupMembership_vpcSecurityGroupId,

    -- ** VpnDetails
    vpnDetails_vpnTunnelOriginatorIP,
    vpnDetails_vpnId,
    vpnDetails_vpnName,
    vpnDetails_vpnState,
    vpnDetails_vpnGatewayIp,
    vpnDetails_vpnPSK,
  )
where

import Network.AWS.RDS.AddRoleToDBCluster
import Network.AWS.RDS.AddRoleToDBInstance
import Network.AWS.RDS.AddSourceIdentifierToSubscription
import Network.AWS.RDS.AddTagsToResource
import Network.AWS.RDS.ApplyPendingMaintenanceAction
import Network.AWS.RDS.AuthorizeDBSecurityGroupIngress
import Network.AWS.RDS.BacktrackDBCluster
import Network.AWS.RDS.CancelExportTask
import Network.AWS.RDS.CopyDBClusterParameterGroup
import Network.AWS.RDS.CopyDBClusterSnapshot
import Network.AWS.RDS.CopyDBParameterGroup
import Network.AWS.RDS.CopyDBSnapshot
import Network.AWS.RDS.CopyOptionGroup
import Network.AWS.RDS.CreateCustomAvailabilityZone
import Network.AWS.RDS.CreateDBCluster
import Network.AWS.RDS.CreateDBClusterEndpoint
import Network.AWS.RDS.CreateDBClusterParameterGroup
import Network.AWS.RDS.CreateDBClusterSnapshot
import Network.AWS.RDS.CreateDBInstance
import Network.AWS.RDS.CreateDBInstanceReadReplica
import Network.AWS.RDS.CreateDBParameterGroup
import Network.AWS.RDS.CreateDBProxy
import Network.AWS.RDS.CreateDBSecurityGroup
import Network.AWS.RDS.CreateDBSnapshot
import Network.AWS.RDS.CreateDBSubnetGroup
import Network.AWS.RDS.CreateEventSubscription
import Network.AWS.RDS.CreateGlobalCluster
import Network.AWS.RDS.CreateOptionGroup
import Network.AWS.RDS.DeleteCustomAvailabilityZone
import Network.AWS.RDS.DeleteDBCluster
import Network.AWS.RDS.DeleteDBClusterEndpoint
import Network.AWS.RDS.DeleteDBClusterParameterGroup
import Network.AWS.RDS.DeleteDBClusterSnapshot
import Network.AWS.RDS.DeleteDBInstance
import Network.AWS.RDS.DeleteDBInstanceAutomatedBackup
import Network.AWS.RDS.DeleteDBParameterGroup
import Network.AWS.RDS.DeleteDBProxy
import Network.AWS.RDS.DeleteDBSecurityGroup
import Network.AWS.RDS.DeleteDBSnapshot
import Network.AWS.RDS.DeleteDBSubnetGroup
import Network.AWS.RDS.DeleteEventSubscription
import Network.AWS.RDS.DeleteGlobalCluster
import Network.AWS.RDS.DeleteInstallationMedia
import Network.AWS.RDS.DeleteOptionGroup
import Network.AWS.RDS.DeregisterDBProxyTargets
import Network.AWS.RDS.DescribeAccountAttributes
import Network.AWS.RDS.DescribeCertificates
import Network.AWS.RDS.DescribeCustomAvailabilityZones
import Network.AWS.RDS.DescribeDBClusterBacktracks
import Network.AWS.RDS.DescribeDBClusterEndpoints
import Network.AWS.RDS.DescribeDBClusterParameterGroups
import Network.AWS.RDS.DescribeDBClusterParameters
import Network.AWS.RDS.DescribeDBClusterSnapshotAttributes
import Network.AWS.RDS.DescribeDBClusterSnapshots
import Network.AWS.RDS.DescribeDBClusters
import Network.AWS.RDS.DescribeDBEngineVersions
import Network.AWS.RDS.DescribeDBInstanceAutomatedBackups
import Network.AWS.RDS.DescribeDBInstances
import Network.AWS.RDS.DescribeDBLogFiles
import Network.AWS.RDS.DescribeDBParameterGroups
import Network.AWS.RDS.DescribeDBParameters
import Network.AWS.RDS.DescribeDBProxies
import Network.AWS.RDS.DescribeDBProxyTargetGroups
import Network.AWS.RDS.DescribeDBProxyTargets
import Network.AWS.RDS.DescribeDBSecurityGroups
import Network.AWS.RDS.DescribeDBSnapshotAttributes
import Network.AWS.RDS.DescribeDBSnapshots
import Network.AWS.RDS.DescribeDBSubnetGroups
import Network.AWS.RDS.DescribeEngineDefaultClusterParameters
import Network.AWS.RDS.DescribeEngineDefaultParameters
import Network.AWS.RDS.DescribeEventCategories
import Network.AWS.RDS.DescribeEventSubscriptions
import Network.AWS.RDS.DescribeEvents
import Network.AWS.RDS.DescribeExportTasks
import Network.AWS.RDS.DescribeGlobalClusters
import Network.AWS.RDS.DescribeInstallationMedia
import Network.AWS.RDS.DescribeOptionGroupOptions
import Network.AWS.RDS.DescribeOptionGroups
import Network.AWS.RDS.DescribeOrderableDBInstanceOptions
import Network.AWS.RDS.DescribePendingMaintenanceActions
import Network.AWS.RDS.DescribeReservedDBInstances
import Network.AWS.RDS.DescribeReservedDBInstancesOfferings
import Network.AWS.RDS.DescribeSourceRegions
import Network.AWS.RDS.DescribeValidDBInstanceModifications
import Network.AWS.RDS.DownloadDBLogFilePortion
import Network.AWS.RDS.FailoverDBCluster
import Network.AWS.RDS.FailoverGlobalCluster
import Network.AWS.RDS.ImportInstallationMedia
import Network.AWS.RDS.ListTagsForResource
import Network.AWS.RDS.ModifyCertificates
import Network.AWS.RDS.ModifyCurrentDBClusterCapacity
import Network.AWS.RDS.ModifyDBCluster
import Network.AWS.RDS.ModifyDBClusterEndpoint
import Network.AWS.RDS.ModifyDBClusterParameterGroup
import Network.AWS.RDS.ModifyDBClusterSnapshotAttribute
import Network.AWS.RDS.ModifyDBInstance
import Network.AWS.RDS.ModifyDBParameterGroup
import Network.AWS.RDS.ModifyDBProxy
import Network.AWS.RDS.ModifyDBProxyTargetGroup
import Network.AWS.RDS.ModifyDBSnapshot
import Network.AWS.RDS.ModifyDBSnapshotAttribute
import Network.AWS.RDS.ModifyDBSubnetGroup
import Network.AWS.RDS.ModifyEventSubscription
import Network.AWS.RDS.ModifyGlobalCluster
import Network.AWS.RDS.ModifyOptionGroup
import Network.AWS.RDS.PromoteReadReplica
import Network.AWS.RDS.PromoteReadReplicaDBCluster
import Network.AWS.RDS.PurchaseReservedDBInstancesOffering
import Network.AWS.RDS.RebootDBInstance
import Network.AWS.RDS.RegisterDBProxyTargets
import Network.AWS.RDS.RemoveFromGlobalCluster
import Network.AWS.RDS.RemoveRoleFromDBCluster
import Network.AWS.RDS.RemoveRoleFromDBInstance
import Network.AWS.RDS.RemoveSourceIdentifierFromSubscription
import Network.AWS.RDS.RemoveTagsFromResource
import Network.AWS.RDS.ResetDBClusterParameterGroup
import Network.AWS.RDS.ResetDBParameterGroup
import Network.AWS.RDS.RestoreDBClusterFromS
import Network.AWS.RDS.RestoreDBClusterFromSnapshot
import Network.AWS.RDS.RestoreDBClusterToPointInTime
import Network.AWS.RDS.RestoreDBInstanceFromDBSnapshot
import Network.AWS.RDS.RestoreDBInstanceFromS
import Network.AWS.RDS.RestoreDBInstanceToPointInTime
import Network.AWS.RDS.RevokeDBSecurityGroupIngress
import Network.AWS.RDS.StartActivityStream
import Network.AWS.RDS.StartDBCluster
import Network.AWS.RDS.StartDBInstance
import Network.AWS.RDS.StartDBInstanceAutomatedBackupsReplication
import Network.AWS.RDS.StartExportTask
import Network.AWS.RDS.StopActivityStream
import Network.AWS.RDS.StopDBCluster
import Network.AWS.RDS.StopDBInstance
import Network.AWS.RDS.StopDBInstanceAutomatedBackupsReplication
import Network.AWS.RDS.Types.AccountQuota
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
import Network.AWS.RDS.Types.Event
import Network.AWS.RDS.Types.EventCategoriesMap
import Network.AWS.RDS.Types.EventSubscription
import Network.AWS.RDS.Types.ExportTask
import Network.AWS.RDS.Types.FailoverState
import Network.AWS.RDS.Types.Filter
import Network.AWS.RDS.Types.GlobalCluster
import Network.AWS.RDS.Types.GlobalClusterMember
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
import Network.AWS.RDS.Types.ReservedDBInstance
import Network.AWS.RDS.Types.ReservedDBInstancesOffering
import Network.AWS.RDS.Types.ResourcePendingMaintenanceActions
import Network.AWS.RDS.Types.RestoreWindow
import Network.AWS.RDS.Types.ScalingConfiguration
import Network.AWS.RDS.Types.ScalingConfigurationInfo
import Network.AWS.RDS.Types.SourceRegion
import Network.AWS.RDS.Types.Subnet
import Network.AWS.RDS.Types.Tag
import Network.AWS.RDS.Types.TargetHealth
import Network.AWS.RDS.Types.Timezone
import Network.AWS.RDS.Types.UpgradeTarget
import Network.AWS.RDS.Types.UserAuthConfig
import Network.AWS.RDS.Types.UserAuthConfigInfo
import Network.AWS.RDS.Types.ValidDBInstanceModificationsMessage
import Network.AWS.RDS.Types.ValidStorageOptions
import Network.AWS.RDS.Types.VpcSecurityGroupMembership
import Network.AWS.RDS.Types.VpnDetails
