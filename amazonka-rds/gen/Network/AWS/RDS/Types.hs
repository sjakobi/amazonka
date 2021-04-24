{-# LANGUAGE OverloadedStrings #-}

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
    rds,

    -- * Errors
    _DBInstanceRoleAlreadyExistsFault,
    _ReservedDBInstanceAlreadyExistsFault,
    _DBParameterGroupQuotaExceededFault,
    _InsufficientDBClusterCapacityFault,
    _InvalidVPCNetworkStateFault,
    _ProvisionedIOPSNotAvailableInAZFault,
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
    _SNSTopicARNNotFoundFault,
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
    _IAMRoleNotFoundFault,
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
    _IAMRoleMissingPermissionsFault,
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
    accountQuota,
    aqUsed,
    aqAccountQuotaName,
    aqMax,

    -- * AvailabilityZone
    AvailabilityZone (..),
    availabilityZone,
    azName,

    -- * AvailableProcessorFeature
    AvailableProcessorFeature (..),
    availableProcessorFeature,
    apfAllowedValues,
    apfName,
    apfDefaultValue,

    -- * Certificate
    Certificate (..),
    certificate,
    cCertificateIdentifier,
    cValidFrom,
    cCustomerOverride,
    cCertificateARN,
    cCertificateType,
    cThumbprint,
    cCustomerOverrideValidTill,
    cValidTill,

    -- * CharacterSet
    CharacterSet (..),
    characterSet,
    csCharacterSetName,
    csCharacterSetDescription,

    -- * CloudwatchLogsExportConfiguration
    CloudwatchLogsExportConfiguration (..),
    cloudwatchLogsExportConfiguration,
    clecEnableLogTypes,
    clecDisableLogTypes,

    -- * ClusterPendingModifiedValues
    ClusterPendingModifiedValues (..),
    clusterPendingModifiedValues,
    cpmvMasterUserPassword,
    cpmvPendingCloudwatchLogsExports,
    cpmvDBClusterIdentifier,
    cpmvEngineVersion,
    cpmvIAMDatabaseAuthenticationEnabled,

    -- * ConnectionPoolConfiguration
    ConnectionPoolConfiguration (..),
    connectionPoolConfiguration,
    cpcSessionPinningFilters,
    cpcMaxIdleConnectionsPercent,
    cpcConnectionBorrowTimeout,
    cpcInitQuery,
    cpcMaxConnectionsPercent,

    -- * ConnectionPoolConfigurationInfo
    ConnectionPoolConfigurationInfo (..),
    connectionPoolConfigurationInfo,
    cpciSessionPinningFilters,
    cpciMaxIdleConnectionsPercent,
    cpciConnectionBorrowTimeout,
    cpciInitQuery,
    cpciMaxConnectionsPercent,

    -- * CustomAvailabilityZone
    CustomAvailabilityZone (..),
    customAvailabilityZone,
    cazCustomAvailabilityZoneId,
    cazCustomAvailabilityZoneName,
    cazVPNDetails,
    cazCustomAvailabilityZoneStatus,

    -- * DBCluster
    DBCluster (..),
    dbCluster,
    dcBackupRetentionPeriod,
    dcDeletionProtection,
    dcStorageEncrypted,
    dcAssociatedRoles,
    dcVPCSecurityGroups,
    dcPreferredBackupWindow,
    dcDBClusterMembers,
    dcStatus,
    dcBacktrackConsumedChangeRecords,
    dcCrossAccountClone,
    dcAvailabilityZones,
    dcGlobalWriteForwardingStatus,
    dcDBClusterOptionGroupMemberships,
    dcCloneGroupId,
    dcLatestRestorableTime,
    dcDBClusterARN,
    dcDomainMemberships,
    dcActivityStreamKMSKeyId,
    dcReaderEndpoint,
    dcHTTPEndpointEnabled,
    dcClusterCreateTime,
    dcEarliestRestorableTime,
    dcEngineMode,
    dcActivityStreamStatus,
    dcEnabledCloudwatchLogsExports,
    dcHostedZoneId,
    dcDBSubnetGroup,
    dcReadReplicaIdentifiers,
    dcMasterUsername,
    dcMultiAZ,
    dcKMSKeyId,
    dcDBClusterIdentifier,
    dcCapacity,
    dcEngineVersion,
    dcPreferredMaintenanceWindow,
    dcCharacterSetName,
    dcPort,
    dcPercentProgress,
    dcEngine,
    dcPendingModifiedValues,
    dcDBClusterResourceId,
    dcCopyTagsToSnapshot,
    dcCustomEndpoints,
    dcEndpoint,
    dcScalingConfigurationInfo,
    dcEarliestBacktrackTime,
    dcTagList,
    dcAllocatedStorage,
    dcBacktrackWindow,
    dcIAMDatabaseAuthenticationEnabled,
    dcGlobalWriteForwardingRequested,
    dcDBClusterParameterGroup,
    dcReplicationSourceIdentifier,
    dcDatabaseName,
    dcActivityStreamKinesisStreamName,
    dcActivityStreamMode,

    -- * DBClusterBacktrack
    DBClusterBacktrack (..),
    dbClusterBacktrack,
    dcbStatus,
    dcbBacktrackIdentifier,
    dcbBacktrackTo,
    dcbDBClusterIdentifier,
    dcbBacktrackRequestCreationTime,
    dcbBacktrackedFrom,

    -- * DBClusterEndpoint
    DBClusterEndpoint (..),
    dbClusterEndpoint,
    dceDBClusterEndpointIdentifier,
    dceStatus,
    dceExcludedMembers,
    dceEndpointType,
    dceCustomEndpointType,
    dceDBClusterEndpointARN,
    dceDBClusterIdentifier,
    dceDBClusterEndpointResourceIdentifier,
    dceEndpoint,
    dceStaticMembers,

    -- * DBClusterMember
    DBClusterMember (..),
    dbClusterMember,
    dcmIsClusterWriter,
    dcmDBInstanceIdentifier,
    dcmPromotionTier,
    dcmDBClusterParameterGroupStatus,

    -- * DBClusterOptionGroupStatus
    DBClusterOptionGroupStatus (..),
    dbClusterOptionGroupStatus,
    dcogsStatus,
    dcogsDBClusterOptionGroupName,

    -- * DBClusterParameterGroup
    DBClusterParameterGroup (..),
    dbClusterParameterGroup,
    dcpgDBClusterParameterGroupARN,
    dcpgDBParameterGroupFamily,
    dcpgDescription,
    dcpgDBClusterParameterGroupName,

    -- * DBClusterParameterGroupNameMessage
    DBClusterParameterGroupNameMessage (..),
    dbClusterParameterGroupNameMessage,
    dcpgnmDBClusterParameterGroupName,

    -- * DBClusterRole
    DBClusterRole (..),
    dbClusterRole,
    dcrStatus,
    dcrRoleARN,
    dcrFeatureName,

    -- * DBClusterSnapshot
    DBClusterSnapshot (..),
    dbClusterSnapshot,
    dcsStorageEncrypted,
    dcsStatus,
    dcsAvailabilityZones,
    dcsClusterCreateTime,
    dcsSnapshotCreateTime,
    dcsEngineMode,
    dcsMasterUsername,
    dcsKMSKeyId,
    dcsDBClusterIdentifier,
    dcsEngineVersion,
    dcsSnapshotType,
    dcsLicenseModel,
    dcsPort,
    dcsPercentProgress,
    dcsEngine,
    dcsDBClusterSnapshotIdentifier,
    dcsSourceDBClusterSnapshotARN,
    dcsTagList,
    dcsVPCId,
    dcsAllocatedStorage,
    dcsIAMDatabaseAuthenticationEnabled,
    dcsDBClusterSnapshotARN,

    -- * DBClusterSnapshotAttribute
    DBClusterSnapshotAttribute (..),
    dbClusterSnapshotAttribute,
    dcsaAttributeName,
    dcsaAttributeValues,

    -- * DBClusterSnapshotAttributesResult
    DBClusterSnapshotAttributesResult (..),
    dbClusterSnapshotAttributesResult,
    dcsarDBClusterSnapshotAttributes,
    dcsarDBClusterSnapshotIdentifier,

    -- * DBEngineVersion
    DBEngineVersion (..),
    dbEngineVersion,
    devStatus,
    devDBEngineVersionDescription,
    devDBEngineDescription,
    devSupportedTimezones,
    devSupportedEngineModes,
    devSupportedNcharCharacterSets,
    devValidUpgradeTarget,
    devEngineVersion,
    devSupportsGlobalDatabases,
    devExportableLogTypes,
    devSupportedCharacterSets,
    devSupportsReadReplica,
    devDBParameterGroupFamily,
    devEngine,
    devSupportedFeatureNames,
    devSupportsLogExportsToCloudwatchLogs,
    devDefaultCharacterSet,
    devSupportsParallelQuery,

    -- * DBInstance
    DBInstance (..),
    dbInstance,
    diBackupRetentionPeriod,
    diDeletionProtection,
    diStorageEncrypted,
    diAssociatedRoles,
    diVPCSecurityGroups,
    diPreferredBackupWindow,
    diCACertificateIdentifier,
    diDBSecurityGroups,
    diMaxAllocatedStorage,
    diStatusInfos,
    diStorageType,
    diLatestRestorableTime,
    diDomainMemberships,
    diDBInstancePort,
    diMonitoringInterval,
    diDBParameterGroups,
    diInstanceCreateTime,
    diDBiResourceId,
    diOptionGroupMemberships,
    diListenerEndpoint,
    diMonitoringRoleARN,
    diEnabledCloudwatchLogsExports,
    diDBSubnetGroup,
    diNcharCharacterSetName,
    diMasterUsername,
    diMultiAZ,
    diPubliclyAccessible,
    diPerformanceInsightsKMSKeyId,
    diKMSKeyId,
    diAvailabilityZone,
    diDBClusterIdentifier,
    diCustomerOwnedIPEnabled,
    diEngineVersion,
    diPreferredMaintenanceWindow,
    diCharacterSetName,
    diPerformanceInsightsRetentionPeriod,
    diLicenseModel,
    diDBInstanceIdentifier,
    diPromotionTier,
    diProcessorFeatures,
    diAWSBackupRecoveryPointARN,
    diDBInstanceClass,
    diDBName,
    diEngine,
    diReadReplicaDBClusterIdentifiers,
    diPendingModifiedValues,
    diTDECredentialARN,
    diTimezone,
    diDBInstanceStatus,
    diDBInstanceAutomatedBackupsReplications,
    diCopyTagsToSnapshot,
    diReadReplicaSourceDBInstanceIdentifier,
    diReplicaMode,
    diEndpoint,
    diTagList,
    diPerformanceInsightsEnabled,
    diAllocatedStorage,
    diIAMDatabaseAuthenticationEnabled,
    diSecondaryAvailabilityZone,
    diIOPS,
    diEnhancedMonitoringResourceARN,
    diReadReplicaDBInstanceIdentifiers,
    diAutoMinorVersionUpgrade,
    diDBInstanceARN,

    -- * DBInstanceAutomatedBackup
    DBInstanceAutomatedBackup (..),
    dbInstanceAutomatedBackup,
    diabBackupRetentionPeriod,
    diabStatus,
    diabDBInstanceAutomatedBackupsARN,
    diabStorageType,
    diabEncrypted,
    diabOptionGroupName,
    diabInstanceCreateTime,
    diabDBiResourceId,
    diabMasterUsername,
    diabKMSKeyId,
    diabAvailabilityZone,
    diabEngineVersion,
    diabRestoreWindow,
    diabLicenseModel,
    diabDBInstanceIdentifier,
    diabPort,
    diabEngine,
    diabTDECredentialARN,
    diabTimezone,
    diabDBInstanceAutomatedBackupsReplications,
    diabRegion,
    diabVPCId,
    diabAllocatedStorage,
    diabIAMDatabaseAuthenticationEnabled,
    diabIOPS,
    diabDBInstanceARN,

    -- * DBInstanceAutomatedBackupsReplication
    DBInstanceAutomatedBackupsReplication (..),
    dbInstanceAutomatedBackupsReplication,
    diabrDBInstanceAutomatedBackupsARN,

    -- * DBInstanceRole
    DBInstanceRole (..),
    dbInstanceRole,
    dirStatus,
    dirRoleARN,
    dirFeatureName,

    -- * DBInstanceStatusInfo
    DBInstanceStatusInfo (..),
    dbInstanceStatusInfo,
    disiStatus,
    disiMessage,
    disiNormal,
    disiStatusType,

    -- * DBParameterGroup
    DBParameterGroup (..),
    dbParameterGroup,
    dpgDBParameterGroupARN,
    dpgDBParameterGroupName,
    dpgDBParameterGroupFamily,
    dpgDescription,

    -- * DBParameterGroupNameMessage
    DBParameterGroupNameMessage (..),
    dbParameterGroupNameMessage,
    dpgnmDBParameterGroupName,

    -- * DBParameterGroupStatus
    DBParameterGroupStatus (..),
    dbParameterGroupStatus,
    dpgsDBParameterGroupName,
    dpgsParameterApplyStatus,

    -- * DBProxy
    DBProxy (..),
    dbProxy,
    dpDBProxyARN,
    dpStatus,
    dpCreatedDate,
    dpRoleARN,
    dpIdleClientTimeout,
    dpVPCSubnetIds,
    dpAuth,
    dpEngineFamily,
    dpVPCSecurityGroupIds,
    dpDebugLogging,
    dpUpdatedDate,
    dpRequireTLS,
    dpEndpoint,
    dpDBProxyName,

    -- * DBProxyTarget
    DBProxyTarget (..),
    dbProxyTarget,
    dptTrackedClusterId,
    dptRDSResourceId,
    dptTargetARN,
    dptPort,
    dptEndpoint,
    dptType,
    dptTargetHealth,

    -- * DBProxyTargetGroup
    DBProxyTargetGroup (..),
    dbProxyTargetGroup,
    dptgStatus,
    dptgCreatedDate,
    dptgIsDefault,
    dptgTargetGroupName,
    dptgTargetGroupARN,
    dptgConnectionPoolConfig,
    dptgUpdatedDate,
    dptgDBProxyName,

    -- * DBSecurityGroup
    DBSecurityGroup (..),
    dbSecurityGroup,
    dbsgOwnerId,
    dbsgDBSecurityGroupName,
    dbsgIPRanges,
    dbsgDBSecurityGroupDescription,
    dbsgEC2SecurityGroups,
    dbsgVPCId,
    dbsgDBSecurityGroupARN,

    -- * DBSecurityGroupMembership
    DBSecurityGroupMembership (..),
    dbSecurityGroupMembership,
    dsgmStatus,
    dsgmDBSecurityGroupName,

    -- * DBSnapshot
    DBSnapshot (..),
    dbSnapshot,
    dsStatus,
    dsStorageType,
    dsDBSnapshotIdentifier,
    dsEncrypted,
    dsOptionGroupName,
    dsInstanceCreateTime,
    dsDBiResourceId,
    dsSnapshotCreateTime,
    dsMasterUsername,
    dsKMSKeyId,
    dsAvailabilityZone,
    dsDBSnapshotARN,
    dsEngineVersion,
    dsSnapshotType,
    dsSourceDBSnapshotIdentifier,
    dsLicenseModel,
    dsDBInstanceIdentifier,
    dsProcessorFeatures,
    dsPort,
    dsPercentProgress,
    dsEngine,
    dsTDECredentialARN,
    dsTimezone,
    dsTagList,
    dsVPCId,
    dsAllocatedStorage,
    dsSourceRegion,
    dsIAMDatabaseAuthenticationEnabled,
    dsIOPS,

    -- * DBSnapshotAttribute
    DBSnapshotAttribute (..),
    dbSnapshotAttribute,
    dsaAttributeName,
    dsaAttributeValues,

    -- * DBSnapshotAttributesResult
    DBSnapshotAttributesResult (..),
    dbSnapshotAttributesResult,
    dsarDBSnapshotIdentifier,
    dsarDBSnapshotAttributes,

    -- * DBSubnetGroup
    DBSubnetGroup (..),
    dbSubnetGroup,
    dsgSubnetGroupStatus,
    dsgDBSubnetGroupName,
    dsgDBSubnetGroupARN,
    dsgDBSubnetGroupDescription,
    dsgSubnets,
    dsgVPCId,

    -- * DescribeDBLogFilesDetails
    DescribeDBLogFilesDetails (..),
    describeDBLogFilesDetails,
    ddlfdLastWritten,
    ddlfdLogFileName,
    ddlfdSize,

    -- * DomainMembership
    DomainMembership (..),
    domainMembership,
    dmStatus,
    dmDomain,
    dmIAMRoleName,
    dmFQDN,

    -- * DoubleRange
    DoubleRange (..),
    doubleRange,
    drTo,
    drFrom,

    -- * EC2SecurityGroup
    EC2SecurityGroup (..),
    ec2SecurityGroup,
    esgStatus,
    esgEC2SecurityGroupOwnerId,
    esgEC2SecurityGroupId,
    esgEC2SecurityGroupName,

    -- * Endpoint
    Endpoint (..),
    endpoint,
    eAddress,
    eHostedZoneId,
    ePort,

    -- * EngineDefaults
    EngineDefaults (..),
    engineDefaults,
    edDBParameterGroupFamily,
    edParameters,
    edMarker,

    -- * Event
    Event (..),
    event,
    eMessage,
    eEventCategories,
    eDate,
    eSourceIdentifier,
    eSourceARN,
    eSourceType,

    -- * EventCategoriesMap
    EventCategoriesMap (..),
    eventCategoriesMap,
    ecmEventCategories,
    ecmSourceType,

    -- * EventSubscription
    EventSubscription (..),
    eventSubscription,
    esCustSubscriptionId,
    esStatus,
    esSourceIdsList,
    esEventCategoriesList,
    esEnabled,
    esEventSubscriptionARN,
    esSubscriptionCreationTime,
    esCustomerAWSId,
    esSourceType,
    esSNSTopicARN,

    -- * ExportTask
    ExportTask (..),
    exportTask,
    etTaskEndTime,
    etIAMRoleARN,
    etStatus,
    etTotalExtractedDataInGB,
    etWarningMessage,
    etSnapshotTime,
    etS3Bucket,
    etExportOnly,
    etKMSKeyId,
    etFailureCause,
    etPercentProgress,
    etSourceARN,
    etS3Prefix,
    etTaskStartTime,
    etExportTaskIdentifier,

    -- * FailoverState
    FailoverState (..),
    failoverState,
    fsStatus,
    fsToDBClusterARN,
    fsFromDBClusterARN,

    -- * Filter
    Filter (..),
    filter',
    fName,
    fValues,

    -- * GlobalCluster
    GlobalCluster (..),
    globalCluster,
    gcDeletionProtection,
    gcStorageEncrypted,
    gcStatus,
    gcFailoverState,
    gcEngineVersion,
    gcGlobalClusterARN,
    gcEngine,
    gcGlobalClusterResourceId,
    gcGlobalClusterMembers,
    gcGlobalClusterIdentifier,
    gcDatabaseName,

    -- * GlobalClusterMember
    GlobalClusterMember (..),
    globalClusterMember,
    gcmGlobalWriteForwardingStatus,
    gcmDBClusterARN,
    gcmReaders,
    gcmIsWriter,

    -- * IPRange
    IPRange (..),
    ipRange,
    irStatus,
    irCIdRIP,

    -- * InstallationMedia
    InstallationMedia (..),
    installationMedia,
    imStatus,
    imCustomAvailabilityZoneId,
    imInstallationMediaId,
    imEngineVersion,
    imOSInstallationMediaPath,
    imFailureCause,
    imEngine,
    imEngineInstallationMediaPath,

    -- * InstallationMediaFailureCause
    InstallationMediaFailureCause (..),
    installationMediaFailureCause,
    imfcMessage,

    -- * MinimumEngineVersionPerAllowedValue
    MinimumEngineVersionPerAllowedValue (..),
    minimumEngineVersionPerAllowedValue,
    mevpavAllowedValue,
    mevpavMinimumEngineVersion,

    -- * Option
    Option (..),
    option,
    oOptionName,
    oOptionVersion,
    oDBSecurityGroupMemberships,
    oOptionDescription,
    oPort,
    oOptionSettings,
    oPersistent,
    oVPCSecurityGroupMemberships,
    oPermanent,

    -- * OptionConfiguration
    OptionConfiguration (..),
    optionConfiguration,
    ocOptionVersion,
    ocDBSecurityGroupMemberships,
    ocPort,
    ocOptionSettings,
    ocVPCSecurityGroupMemberships,
    ocOptionName,

    -- * OptionGroup
    OptionGroup (..),
    optionGroup,
    ogEngineName,
    ogOptionGroupARN,
    ogAllowsVPCAndNonVPCInstanceMemberships,
    ogOptionGroupName,
    ogOptions,
    ogOptionGroupDescription,
    ogMajorEngineVersion,
    ogVPCId,

    -- * OptionGroupMembership
    OptionGroupMembership (..),
    optionGroupMembership,
    ogmStatus,
    ogmOptionGroupName,

    -- * OptionGroupOption
    OptionGroupOption (..),
    optionGroupOption,
    ogoOptionsConflictsWith,
    ogoVPCOnly,
    ogoEngineName,
    ogoOptionGroupOptionVersions,
    ogoDefaultPort,
    ogoRequiresAutoMinorEngineVersionUpgrade,
    ogoOptionGroupOptionSettings,
    ogoMajorEngineVersion,
    ogoName,
    ogoMinimumRequiredMinorEngineVersion,
    ogoOptionsDependedOn,
    ogoDescription,
    ogoPortRequired,
    ogoPersistent,
    ogoPermanent,
    ogoSupportsOptionVersionDowngrade,

    -- * OptionGroupOptionSetting
    OptionGroupOptionSetting (..),
    optionGroupOptionSetting,
    ogosMinimumEngineVersionPerAllowedValue,
    ogosAllowedValues,
    ogosApplyType,
    ogosSettingName,
    ogosIsRequired,
    ogosSettingDescription,
    ogosIsModifiable,
    ogosDefaultValue,

    -- * OptionSetting
    OptionSetting (..),
    optionSetting,
    osIsCollection,
    osAllowedValues,
    osName,
    osApplyType,
    osDescription,
    osValue,
    osDataType,
    osIsModifiable,
    osDefaultValue,

    -- * OptionVersion
    OptionVersion (..),
    optionVersion,
    ovIsDefault,
    ovVersion,

    -- * OrderableDBInstanceOption
    OrderableDBInstanceOption (..),
    orderableDBInstanceOption,
    odioMinIOPSPerDBInstance,
    odioAvailabilityZones,
    odioSupportsKerberosAuthentication,
    odioSupportsIOPS,
    odioStorageType,
    odioSupportsEnhancedMonitoring,
    odioAvailableProcessorFeatures,
    odioMaxStorageSize,
    odioSupportedEngineModes,
    odioMaxIOPSPerGib,
    odioSupportsStorageEncryption,
    odioMultiAZCapable,
    odioSupportsStorageAutoscaling,
    odioEngineVersion,
    odioMinIOPSPerGib,
    odioSupportsIAMDatabaseAuthentication,
    odioLicenseModel,
    odioSupportsGlobalDatabases,
    odioSupportsPerformanceInsights,
    odioMaxIOPSPerDBInstance,
    odioDBInstanceClass,
    odioOutpostCapable,
    odioEngine,
    odioMinStorageSize,
    odioAvailabilityZoneGroup,
    odioVPC,
    odioReadReplicaCapable,

    -- * Outpost
    Outpost (..),
    outpost,
    oARN,

    -- * Parameter
    Parameter (..),
    parameter,
    pAllowedValues,
    pSupportedEngineModes,
    pSource,
    pParameterValue,
    pApplyType,
    pParameterName,
    pDescription,
    pApplyMethod,
    pDataType,
    pIsModifiable,
    pMinimumEngineVersion,

    -- * PendingCloudwatchLogsExports
    PendingCloudwatchLogsExports (..),
    pendingCloudwatchLogsExports,
    pcleLogTypesToDisable,
    pcleLogTypesToEnable,

    -- * PendingMaintenanceAction
    PendingMaintenanceAction (..),
    pendingMaintenanceAction,
    pmaForcedApplyDate,
    pmaOptInStatus,
    pmaAutoAppliedAfterDate,
    pmaCurrentApplyDate,
    pmaAction,
    pmaDescription,

    -- * PendingModifiedValues
    PendingModifiedValues (..),
    pendingModifiedValues,
    pmvBackupRetentionPeriod,
    pmvCACertificateIdentifier,
    pmvStorageType,
    pmvDBSubnetGroupName,
    pmvMasterUserPassword,
    pmvMultiAZ,
    pmvPendingCloudwatchLogsExports,
    pmvEngineVersion,
    pmvLicenseModel,
    pmvDBInstanceIdentifier,
    pmvProcessorFeatures,
    pmvPort,
    pmvDBInstanceClass,
    pmvAllocatedStorage,
    pmvIAMDatabaseAuthenticationEnabled,
    pmvIOPS,

    -- * ProcessorFeature
    ProcessorFeature (..),
    processorFeature,
    pfName,
    pfValue,

    -- * Range
    Range (..),
    range,
    rTo,
    rFrom,
    rStep,

    -- * RecurringCharge
    RecurringCharge (..),
    recurringCharge,
    rcRecurringChargeFrequency,
    rcRecurringChargeAmount,

    -- * ReservedDBInstance
    ReservedDBInstance (..),
    reservedDBInstance,
    rdiDuration,
    rdiReservedDBInstanceARN,
    rdiStartTime,
    rdiCurrencyCode,
    rdiMultiAZ,
    rdiState,
    rdiDBInstanceCount,
    rdiDBInstanceClass,
    rdiReservedDBInstanceId,
    rdiFixedPrice,
    rdiLeaseId,
    rdiUsagePrice,
    rdiOfferingType,
    rdiRecurringCharges,
    rdiProductDescription,
    rdiReservedDBInstancesOfferingId,

    -- * ReservedDBInstancesOffering
    ReservedDBInstancesOffering (..),
    reservedDBInstancesOffering,
    rdioDuration,
    rdioCurrencyCode,
    rdioMultiAZ,
    rdioDBInstanceClass,
    rdioFixedPrice,
    rdioUsagePrice,
    rdioOfferingType,
    rdioRecurringCharges,
    rdioProductDescription,
    rdioReservedDBInstancesOfferingId,

    -- * ResourcePendingMaintenanceActions
    ResourcePendingMaintenanceActions (..),
    resourcePendingMaintenanceActions,
    rpmaPendingMaintenanceActionDetails,
    rpmaResourceIdentifier,

    -- * RestoreWindow
    RestoreWindow (..),
    restoreWindow,
    rwEarliestTime,
    rwLatestTime,

    -- * ScalingConfiguration
    ScalingConfiguration (..),
    scalingConfiguration,
    scMaxCapacity,
    scAutoPause,
    scTimeoutAction,
    scSecondsUntilAutoPause,
    scMinCapacity,

    -- * ScalingConfigurationInfo
    ScalingConfigurationInfo (..),
    scalingConfigurationInfo,
    sciMaxCapacity,
    sciAutoPause,
    sciTimeoutAction,
    sciSecondsUntilAutoPause,
    sciMinCapacity,

    -- * SourceRegion
    SourceRegion (..),
    sourceRegion,
    srRegionName,
    srStatus,
    srSupportsDBInstanceAutomatedBackupsReplication,
    srEndpoint,

    -- * Subnet
    Subnet (..),
    subnet,
    sSubnetStatus,
    sSubnetIdentifier,
    sSubnetAvailabilityZone,
    sSubnetOutpost,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * TargetHealth
    TargetHealth (..),
    targetHealth,
    thState,
    thReason,
    thDescription,

    -- * Timezone
    Timezone (..),
    timezone,
    tTimezoneName,

    -- * UpgradeTarget
    UpgradeTarget (..),
    upgradeTarget,
    utAutoUpgrade,
    utSupportedEngineModes,
    utEngineVersion,
    utSupportsGlobalDatabases,
    utEngine,
    utDescription,
    utIsMajorVersionUpgrade,
    utSupportsParallelQuery,

    -- * UserAuthConfig
    UserAuthConfig (..),
    userAuthConfig,
    uacSecretARN,
    uacIAMAuth,
    uacAuthScheme,
    uacUserName,
    uacDescription,

    -- * UserAuthConfigInfo
    UserAuthConfigInfo (..),
    userAuthConfigInfo,
    uaciSecretARN,
    uaciIAMAuth,
    uaciAuthScheme,
    uaciUserName,
    uaciDescription,

    -- * VPCSecurityGroupMembership
    VPCSecurityGroupMembership (..),
    vpcSecurityGroupMembership,
    vsgmStatus,
    vsgmVPCSecurityGroupId,

    -- * VPNDetails
    VPNDetails (..),
    vpnDetails,
    vdVPNTunnelOriginatorIP,
    vdVPNId,
    vdVPNName,
    vdVPNState,
    vdVPNGatewayIP,
    vdVPNPSK,

    -- * ValidDBInstanceModificationsMessage
    ValidDBInstanceModificationsMessage (..),
    validDBInstanceModificationsMessage,
    vdimmValidProcessorFeatures,
    vdimmStorage,

    -- * ValidStorageOptions
    ValidStorageOptions (..),
    validStorageOptions,
    vsoStorageType,
    vsoProvisionedIOPS,
    vsoSupportsStorageAutoscaling,
    vsoStorageSize,
    vsoIOPSToStorageRatio,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
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
import Network.AWS.RDS.Types.VPCSecurityGroupMembership
import Network.AWS.RDS.Types.VPNDetails
import Network.AWS.RDS.Types.ValidDBInstanceModificationsMessage
import Network.AWS.RDS.Types.ValidStorageOptions
import Network.AWS.RDS.Types.WriteForwardingStatus
import Network.AWS.Sign.V4

-- | API version @2014-10-31@ of the Amazon Relational Database Service SDK configuration.
rds :: Service
rds =
  Service
    { _svcAbbrev = "RDS",
      _svcSigner = v4,
      _svcPrefix = "rds",
      _svcVersion = "2014-10-31",
      _svcEndpoint = defaultEndpoint rds,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseXMLError "RDS",
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

-- | The specified @RoleArn@ or @FeatureName@ value is already associated with the DB instance.
_DBInstanceRoleAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBInstanceRoleAlreadyExistsFault =
  _MatchServiceError
    rds
    "DBInstanceRoleAlreadyExists"
    . hasStatus 400

-- | User already has a reservation with the given identifier.
_ReservedDBInstanceAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_ReservedDBInstanceAlreadyExistsFault =
  _MatchServiceError
    rds
    "ReservedDBInstanceAlreadyExists"
    . hasStatus 404

-- | The request would result in the user exceeding the allowed number of DB parameter groups.
_DBParameterGroupQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBParameterGroupQuotaExceededFault =
  _MatchServiceError
    rds
    "DBParameterGroupQuotaExceeded"
    . hasStatus 400

-- | The DB cluster doesn't have enough capacity for the current operation.
_InsufficientDBClusterCapacityFault :: AsError a => Getting (First ServiceError) a ServiceError
_InsufficientDBClusterCapacityFault =
  _MatchServiceError
    rds
    "InsufficientDBClusterCapacityFault"
    . hasStatus 403

-- | The DB subnet group doesn't cover all Availability Zones after it's created because of users' change.
_InvalidVPCNetworkStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidVPCNetworkStateFault =
  _MatchServiceError
    rds
    "InvalidVPCNetworkStateFault"
    . hasStatus 400

-- | Provisioned IOPS not available in the specified Availability Zone.
_ProvisionedIOPSNotAvailableInAZFault :: AsError a => Getting (First ServiceError) a ServiceError
_ProvisionedIOPSNotAvailableInAZFault =
  _MatchServiceError
    rds
    "ProvisionedIopsNotAvailableInAZFault"
    . hasStatus 400

-- | You have exceeded the maximum number of IAM roles that can be associated with the specified DB cluster.
_DBClusterRoleQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBClusterRoleQuotaExceededFault =
  _MatchServiceError rds "DBClusterRoleQuotaExceeded"
    . hasStatus 400

-- | @CertificateIdentifier@ doesn't refer to an existing certificate.
_CertificateNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_CertificateNotFoundFault =
  _MatchServiceError rds "CertificateNotFound"
    . hasStatus 404

-- | The specified IAM role Amazon Resource Name (ARN) is already associated with the specified DB cluster.
_DBClusterRoleAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBClusterRoleAlreadyExistsFault =
  _MatchServiceError rds "DBClusterRoleAlreadyExists"
    . hasStatus 400

-- | The specified installation medium has already been imported.
_InstallationMediaAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_InstallationMediaAlreadyExistsFault =
  _MatchServiceError
    rds
    "InstallationMediaAlreadyExists"
    . hasStatus 400

-- | A DB parameter group with the same name exists.
_DBParameterGroupAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBParameterGroupAlreadyExistsFault =
  _MatchServiceError
    rds
    "DBParameterGroupAlreadyExists"
    . hasStatus 400

-- | The specified DB instance class isn't available in the specified Availability Zone.
_InsufficientDBInstanceCapacityFault :: AsError a => Getting (First ServiceError) a ServiceError
_InsufficientDBInstanceCapacityFault =
  _MatchServiceError
    rds
    "InsufficientDBInstanceCapacity"
    . hasStatus 400

-- | The supplied subscription name already exists.
_SubscriptionAlreadyExistFault :: AsError a => Getting (First ServiceError) a ServiceError
_SubscriptionAlreadyExistFault =
  _MatchServiceError rds "SubscriptionAlreadyExist"
    . hasStatus 400

-- | You can't associate any more AWS Identity and Access Management (IAM) roles with the DB instance because the quota has been reached.
_DBInstanceRoleQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBInstanceRoleQuotaExceededFault =
  _MatchServiceError
    rds
    "DBInstanceRoleQuotaExceeded"
    . hasStatus 400

-- | Request would exceed the user's DB Instance quota.
_ReservedDBInstanceQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_ReservedDBInstanceQuotaExceededFault =
  _MatchServiceError
    rds
    "ReservedDBInstanceQuotaExceeded"
    . hasStatus 400

-- | Specified offering does not exist.
_ReservedDBInstancesOfferingNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_ReservedDBInstancesOfferingNotFoundFault =
  _MatchServiceError
    rds
    "ReservedDBInstancesOfferingNotFound"
    . hasStatus 404

-- | @DBClusterSnapshotIdentifier@ doesn't refer to an existing DB cluster snapshot.
_DBClusterSnapshotNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBClusterSnapshotNotFoundFault =
  _MatchServiceError
    rds
    "DBClusterSnapshotNotFoundFault"
    . hasStatus 404

-- | No automated backup for this DB instance was found.
_DBInstanceAutomatedBackupNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBInstanceAutomatedBackupNotFoundFault =
  _MatchServiceError
    rds
    "DBInstanceAutomatedBackupNotFound"
    . hasStatus 404

-- | You do not have permission to publish to the SNS topic ARN.
_SNSNoAuthorizationFault :: AsError a => Getting (First ServiceError) a ServiceError
_SNSNoAuthorizationFault =
  _MatchServiceError rds "SNSNoAuthorization"
    . hasStatus 400

-- | The DB subnet group cannot be deleted because it's in use.
_InvalidDBSubnetGroupStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDBSubnetGroupStateFault =
  _MatchServiceError
    rds
    "InvalidDBSubnetGroupStateFault"
    . hasStatus 400

-- | @DBSubnetGroupName@ is already used by an existing DB subnet group.
_DBSubnetGroupAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBSubnetGroupAlreadyExistsFault =
  _MatchServiceError rds "DBSubnetGroupAlreadyExists"
    . hasStatus 400

-- | The specified custom endpoint doesn't exist.
_DBClusterEndpointNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBClusterEndpointNotFoundFault =
  _MatchServiceError
    rds
    "DBClusterEndpointNotFoundFault"
    . hasStatus 400

-- | @DBSnapshotIdentifier@ is already used by an existing snapshot.
_DBSnapshotAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBSnapshotAlreadyExistsFault =
  _MatchServiceError rds "DBSnapshotAlreadyExists"
    . hasStatus 400

-- | The DB upgrade failed because a resource the DB depends on can't be modified.
_DBUpgradeDependencyFailureFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBUpgradeDependencyFailureFault =
  _MatchServiceError rds "DBUpgradeDependencyFailure"
    . hasStatus 400

-- | The automated backup is in an invalid state. For example, this automated backup is associated with an active instance.
_InvalidDBInstanceAutomatedBackupStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDBInstanceAutomatedBackupStateFault =
  _MatchServiceError
    rds
    "InvalidDBInstanceAutomatedBackupState"
    . hasStatus 400

-- | The specified resource ID was not found.
_ResourceNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundFault =
  _MatchServiceError rds "ResourceNotFoundFault"
    . hasStatus 404

-- | The SNS topic ARN does not exist.
_SNSTopicARNNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_SNSTopicARNNotFoundFault =
  _MatchServiceError rds "SNSTopicArnNotFound"
    . hasStatus 404

-- | Cannot restore from VPC backup to non-VPC DB instance.
_InvalidRestoreFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRestoreFault =
  _MatchServiceError rds "InvalidRestoreFault"
    . hasStatus 400

-- | This error can occur if someone else is modifying a subscription. You should retry the action.
_InvalidEventSubscriptionStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidEventSubscriptionStateFault =
  _MatchServiceError
    rds
    "InvalidEventSubscriptionState"
    . hasStatus 400

-- | The specified custom endpoint can't be created because it already exists.
_DBClusterEndpointAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBClusterEndpointAlreadyExistsFault =
  _MatchServiceError
    rds
    "DBClusterEndpointAlreadyExistsFault"
    . hasStatus 400

-- | The DB instance isn't in a valid state.
_InvalidDBInstanceStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDBInstanceStateFault =
  _MatchServiceError rds "InvalidDBInstanceState"
    . hasStatus 400

-- | @DBClusterParameterGroupName@ doesn't refer to an existing DB cluster parameter group.
_DBClusterParameterGroupNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBClusterParameterGroupNotFoundFault =
  _MatchServiceError
    rds
    "DBClusterParameterGroupNotFound"
    . hasStatus 404

-- | An error occurred accessing an AWS KMS key.
_KMSKeyNotAccessibleFault :: AsError a => Getting (First ServiceError) a ServiceError
_KMSKeyNotAccessibleFault =
  _MatchServiceError rds "KMSKeyNotAccessibleFault"
    . hasStatus 400

-- | The specified proxy name doesn't correspond to a proxy owned by your AWS account in the specified AWS Region.
_DBProxyNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBProxyNotFoundFault =
  _MatchServiceError rds "DBProxyNotFoundFault"
    . hasStatus 404

-- | The requested operation can't be performed on the endpoint while the endpoint is in this state.
_InvalidDBClusterEndpointStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDBClusterEndpointStateFault =
  _MatchServiceError
    rds
    "InvalidDBClusterEndpointStateFault"
    . hasStatus 400

-- | The request would result in the user exceeding the allowed number of DB snapshots.
_SnapshotQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_SnapshotQuotaExceededFault =
  _MatchServiceError rds "SnapshotQuotaExceeded"
    . hasStatus 400

-- | The export is invalid for exporting to an Amazon S3 bucket.
_InvalidExportOnlyFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidExportOnlyFault =
  _MatchServiceError rds "InvalidExportOnly"
    . hasStatus 400

-- | There is insufficient storage available for the current action. You might be able to resolve this error by updating your subnet group to use different Availability Zones that have more storage available.
_InsufficientStorageClusterCapacityFault :: AsError a => Getting (First ServiceError) a ServiceError
_InsufficientStorageClusterCapacityFault =
  _MatchServiceError
    rds
    "InsufficientStorageClusterCapacity"
    . hasStatus 400

-- | The quota for retained automated backups was exceeded. This prevents you from retaining any additional automated backups. The retained automated backups quota is the same as your DB Instance quota.
_DBInstanceAutomatedBackupQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBInstanceAutomatedBackupQuotaExceededFault =
  _MatchServiceError
    rds
    "DBInstanceAutomatedBackupQuotaExceeded"
    . hasStatus 400

-- | Storage of the @StorageType@ specified can't be associated with the DB instance.
_StorageTypeNotSupportedFault :: AsError a => Getting (First ServiceError) a ServiceError
_StorageTypeNotSupportedFault =
  _MatchServiceError rds "StorageTypeNotSupported"
    . hasStatus 400

-- | The IAM role is missing for exporting to an Amazon S3 bucket.
_IAMRoleNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_IAMRoleNotFoundFault =
  _MatchServiceError rds "IamRoleNotFound"
    . hasStatus 404

-- | You have reached the maximum number of event subscriptions.
_EventSubscriptionQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_EventSubscriptionQuotaExceededFault =
  _MatchServiceError
    rds
    "EventSubscriptionQuotaExceeded"
    . hasStatus 400

-- | The cluster already has the maximum number of custom endpoints.
_DBClusterEndpointQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBClusterEndpointQuotaExceededFault =
  _MatchServiceError
    rds
    "DBClusterEndpointQuotaExceededFault"
    . hasStatus 403

-- | The global cluster is in an invalid state and can't perform the requested operation.
_InvalidGlobalClusterStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidGlobalClusterStateFault =
  _MatchServiceError
    rds
    "InvalidGlobalClusterStateFault"
    . hasStatus 400

-- | Your AWS account already has the maximum number of proxies in the specified AWS Region.
_DBProxyQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBProxyQuotaExceededFault =
  _MatchServiceError rds "DBProxyQuotaExceededFault"
    . hasStatus 400

-- | The DBSubnetGroup shouldn't be specified while creating read replicas that lie in the same region as the source instance.
_DBSubnetGroupNotAllowedFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBSubnetGroupNotAllowedFault =
  _MatchServiceError
    rds
    "DBSubnetGroupNotAllowedFault"
    . hasStatus 400

-- | You can't start an export task that's already running.
_ExportTaskAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_ExportTaskAlreadyExistsFault =
  _MatchServiceError rds "ExportTaskAlreadyExists"
    . hasStatus 400

-- | The specified target group isn't available for a proxy owned by your AWS account in the specified AWS Region.
_DBProxyTargetGroupNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBProxyTargetGroupNotFoundFault =
  _MatchServiceError
    rds
    "DBProxyTargetGroupNotFoundFault"
    . hasStatus 404

-- | The @GlobalClusterIdentifier@ already exists. Choose a new global database identifier (unique name) to create a new global database cluster.
_GlobalClusterAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_GlobalClusterAlreadyExistsFault =
  _MatchServiceError
    rds
    "GlobalClusterAlreadyExistsFault"
    . hasStatus 400

-- | The specified RDS DB instance or Aurora DB cluster isn't available for a proxy owned by your AWS account in the specified AWS Region.
_DBProxyTargetNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBProxyTargetNotFoundFault =
  _MatchServiceError rds "DBProxyTargetNotFoundFault"
    . hasStatus 404

-- | You have exceeded the maximum number of accounts that you can share a manual DB snapshot with.
_SharedSnapshotQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_SharedSnapshotQuotaExceededFault =
  _MatchServiceError
    rds
    "SharedSnapshotQuotaExceeded"
    . hasStatus 400

-- | The specified reserved DB Instance not found.
_ReservedDBInstanceNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_ReservedDBInstanceNotFoundFault =
  _MatchServiceError rds "ReservedDBInstanceNotFound"
    . hasStatus 404

-- | The request would result in the user exceeding the allowed number of subnets in a DB subnet groups.
_DBSubnetQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBSubnetQuotaExceededFault =
  _MatchServiceError rds "DBSubnetQuotaExceededFault"
    . hasStatus 400

-- | The specified @RoleArn@ value doesn't match the specified feature for the DB instance.
_DBInstanceRoleNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBInstanceRoleNotFoundFault =
  _MatchServiceError rds "DBInstanceRoleNotFound"
    . hasStatus 404

-- | Prism for BackupPolicyNotFoundFault' errors.
_BackupPolicyNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_BackupPolicyNotFoundFault =
  _MatchServiceError rds "BackupPolicyNotFoundFault"
    . hasStatus 404

-- | The IAM role requires additional permissions to export to an Amazon S3 bucket.
_IAMRoleMissingPermissionsFault :: AsError a => Getting (First ServiceError) a ServiceError
_IAMRoleMissingPermissionsFault =
  _MatchServiceError rds "IamRoleMissingPermissions"
    . hasStatus 400

-- | The proxy is already associated with the specified RDS DB instance or Aurora DB cluster.
_DBProxyTargetAlreadyRegisteredFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBProxyTargetAlreadyRegisteredFault =
  _MatchServiceError
    rds
    "DBProxyTargetAlreadyRegisteredFault"
    . hasStatus 400

-- | The specified CIDR IP range or Amazon EC2 security group is already authorized for the specified DB security group.
_AuthorizationAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_AuthorizationAlreadyExistsFault =
  _MatchServiceError rds "AuthorizationAlreadyExists"
    . hasStatus 400

-- | The DB parameter group is in use or is in an invalid state. If you are attempting to delete the parameter group, you can't delete it when the parameter group is in this state.
_InvalidDBParameterGroupStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDBParameterGroupStateFault =
  _MatchServiceError
    rds
    "InvalidDBParameterGroupState"
    . hasStatus 400

-- | SNS has responded that there is a problem with the SND topic specified.
_SNSInvalidTopicFault :: AsError a => Getting (First ServiceError) a ServiceError
_SNSInvalidTopicFault =
  _MatchServiceError rds "SNSInvalidTopic"
    . hasStatus 400

-- | The requested source could not be found.
_SourceNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_SourceNotFoundFault =
  _MatchServiceError rds "SourceNotFound"
    . hasStatus 404

-- | @SourceDBInstanceIdentifier@ refers to a DB instance with @BackupRetentionPeriod@ equal to 0.
_PointInTimeRestoreNotEnabledFault :: AsError a => Getting (First ServiceError) a ServiceError
_PointInTimeRestoreNotEnabledFault =
  _MatchServiceError
    rds
    "PointInTimeRestoreNotEnabled"
    . hasStatus 400

-- | The supplied value isn't a valid DB cluster snapshot state.
_InvalidDBClusterSnapshotStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDBClusterSnapshotStateFault =
  _MatchServiceError
    rds
    "InvalidDBClusterSnapshotStateFault"
    . hasStatus 400

-- | The user already has a DB cluster snapshot with the given identifier.
_DBClusterSnapshotAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBClusterSnapshotAlreadyExistsFault =
  _MatchServiceError
    rds
    "DBClusterSnapshotAlreadyExistsFault"
    . hasStatus 400

-- | The DB security group authorization quota has been reached.
_AuthorizationQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_AuthorizationQuotaExceededFault =
  _MatchServiceError rds "AuthorizationQuotaExceeded"
    . hasStatus 400

-- | @InstallationMediaID@ doesn't refer to an existing installation medium.
_InstallationMediaNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_InstallationMediaNotFoundFault =
  _MatchServiceError rds "InstallationMediaNotFound"
    . hasStatus 404

-- | @DBParameterGroupName@ doesn't refer to an existing DB parameter group.
_DBParameterGroupNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBParameterGroupNotFoundFault =
  _MatchServiceError rds "DBParameterGroupNotFound"
    . hasStatus 404

-- | The specified IAM role Amazon Resource Name (ARN) isn't associated with the specified DB cluster.
_DBClusterRoleNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBClusterRoleNotFoundFault =
  _MatchServiceError rds "DBClusterRoleNotFound"
    . hasStatus 404

-- | Subnets in the DB subnet group should cover at least two Availability Zones unless there is only one Availability Zone.
_DBSubnetGroupDoesNotCoverEnoughAZs :: AsError a => Getting (First ServiceError) a ServiceError
_DBSubnetGroupDoesNotCoverEnoughAZs =
  _MatchServiceError
    rds
    "DBSubnetGroupDoesNotCoverEnoughAZs"
    . hasStatus 400

-- | The DB subnet isn't in the /available/ state.
_InvalidDBSubnetStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDBSubnetStateFault =
  _MatchServiceError rds "InvalidDBSubnetStateFault"
    . hasStatus 400

-- | @Domain@ doesn't refer to an existing Active Directory domain.
_DomainNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_DomainNotFoundFault =
  _MatchServiceError rds "DomainNotFoundFault"
    . hasStatus 404

-- | The DBSubnetGroup doesn't belong to the same VPC as that of an existing cross-region read replica of the same source instance.
_InvalidDBSubnetGroupFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDBSubnetGroupFault =
  _MatchServiceError rds "InvalidDBSubnetGroupFault"
    . hasStatus 400

-- | The DB subnet is already in use in the Availability Zone.
_SubnetAlreadyInUse :: AsError a => Getting (First ServiceError) a ServiceError
_SubnetAlreadyInUse =
  _MatchServiceError rds "SubnetAlreadyInUse"
    . hasStatus 400

-- | @BacktrackIdentifier@ doesn't refer to an existing backtrack.
_DBClusterBacktrackNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBClusterBacktrackNotFoundFault =
  _MatchServiceError
    rds
    "DBClusterBacktrackNotFoundFault"
    . hasStatus 404

-- | The specified proxy name must be unique for all proxies owned by your AWS account in the specified AWS Region.
_DBProxyAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBProxyAlreadyExistsFault =
  _MatchServiceError rds "DBProxyTargetExistsFault"
    . hasStatus 400

-- | A DB security group isn't allowed for this action.
_DBSecurityGroupNotSupportedFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBSecurityGroupNotSupportedFault =
  _MatchServiceError
    rds
    "DBSecurityGroupNotSupported"
    . hasStatus 400

-- | The request would result in the user exceeding the allowed amount of storage available across all DB instances.
_StorageQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_StorageQuotaExceededFault =
  _MatchServiceError rds "StorageQuotaExceeded"
    . hasStatus 400

-- | The request would result in the user exceeding the allowed number of DB instances.
_InstanceQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_InstanceQuotaExceededFault =
  _MatchServiceError rds "InstanceQuotaExceeded"
    . hasStatus 400

-- | The state of the DB snapshot doesn't allow deletion.
_InvalidDBSnapshotStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDBSnapshotStateFault =
  _MatchServiceError rds "InvalidDBSnapshotState"
    . hasStatus 400

-- | @DBInstanceIdentifier@ doesn't refer to an existing DB instance.
_DBInstanceNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBInstanceNotFoundFault =
  _MatchServiceError rds "DBInstanceNotFound"
    . hasStatus 404

-- | The requested operation can't be performed while the proxy is in this state.
_InvalidDBProxyStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDBProxyStateFault =
  _MatchServiceError rds "InvalidDBProxyStateFault"
    . hasStatus 400

-- | The number of global database clusters for this account is already at the maximum allowed.
_GlobalClusterQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_GlobalClusterQuotaExceededFault =
  _MatchServiceError
    rds
    "GlobalClusterQuotaExceededFault"
    . hasStatus 400

-- | @DBSecurityGroupName@ doesn't refer to an existing DB security group.
_DBSecurityGroupNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBSecurityGroupNotFoundFault =
  _MatchServiceError rds "DBSecurityGroupNotFound"
    . hasStatus 404

-- | A DB security group with the name specified in @DBSecurityGroupName@ already exists.
_DBSecurityGroupAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBSecurityGroupAlreadyExistsFault =
  _MatchServiceError
    rds
    "DBSecurityGroupAlreadyExists"
    . hasStatus 400

-- | The user already has a DB instance with the given identifier.
_DBInstanceAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBInstanceAlreadyExistsFault =
  _MatchServiceError rds "DBInstanceAlreadyExists"
    . hasStatus 400

-- | The quota of 20 option groups was exceeded for this AWS account.
_OptionGroupQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_OptionGroupQuotaExceededFault =
  _MatchServiceError
    rds
    "OptionGroupQuotaExceededFault"
    . hasStatus 400

-- | The state of the DB security group doesn't allow deletion.
_InvalidDBSecurityGroupStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDBSecurityGroupStateFault =
  _MatchServiceError
    rds
    "InvalidDBSecurityGroupState"
    . hasStatus 400

-- | @DBSnapshotIdentifier@ doesn't refer to an existing DB snapshot.
_DBSnapshotNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBSnapshotNotFoundFault =
  _MatchServiceError rds "DBSnapshotNotFound"
    . hasStatus 404

-- | @DBSubnetGroupName@ doesn't refer to an existing DB subnet group.
_DBSubnetGroupNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBSubnetGroupNotFoundFault =
  _MatchServiceError rds "DBSubnetGroupNotFoundFault"
    . hasStatus 404

-- | The user attempted to create a new DB cluster and the user has already reached the maximum allowed DB cluster quota.
_DBClusterQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBClusterQuotaExceededFault =
  _MatchServiceError
    rds
    "DBClusterQuotaExceededFault"
    . hasStatus 403

-- | @Capacity@ isn't a valid Aurora Serverless DB cluster capacity. Valid capacity values are @2@ , @4@ , @8@ , @16@ , @32@ , @64@ , @128@ , and @256@ .
_InvalidDBClusterCapacityFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDBClusterCapacityFault =
  _MatchServiceError
    rds
    "InvalidDBClusterCapacityFault"
    . hasStatus 400

-- | You have exceeded the maximum number of custom Availability Zones.
_CustomAvailabilityZoneQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_CustomAvailabilityZoneQuotaExceededFault =
  _MatchServiceError
    rds
    "CustomAvailabilityZoneQuotaExceeded"
    . hasStatus 400

-- | The export task doesn't exist.
_ExportTaskNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_ExportTaskNotFoundFault =
  _MatchServiceError rds "ExportTaskNotFound"
    . hasStatus 404

-- | The requested operation can't be performed because there aren't enough available IP addresses in the proxy's subnets. Add more CIDR blocks to the VPC or remove IP address that aren't required from the subnets.
_InsufficientAvailableIPsInSubnetFault :: AsError a => Getting (First ServiceError) a ServiceError
_InsufficientAvailableIPsInSubnetFault =
  _MatchServiceError
    rds
    "InsufficientAvailableIPsInSubnetFault"
    . hasStatus 400

-- | The request would result in the user exceeding the allowed number of DB security groups.
_DBSecurityGroupQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBSecurityGroupQuotaExceededFault =
  _MatchServiceError
    rds
    "QuotaExceeded.DBSecurityGroup"
    . hasStatus 400

-- | The requested operation can't be performed while the cluster is in this state.
_InvalidDBClusterStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDBClusterStateFault =
  _MatchServiceError rds "InvalidDBClusterStateFault"
    . hasStatus 400

-- | The option group you are trying to create already exists.
_OptionGroupAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_OptionGroupAlreadyExistsFault =
  _MatchServiceError
    rds
    "OptionGroupAlreadyExistsFault"
    . hasStatus 400

-- | @CustomAvailabilityZoneName@ is already used by an existing custom Availability Zone.
_CustomAvailabilityZoneAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_CustomAvailabilityZoneAlreadyExistsFault =
  _MatchServiceError
    rds
    "CustomAvailabilityZoneAlreadyExists"
    . hasStatus 400

-- | The user already has a DB cluster with the given identifier.
_DBClusterAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBClusterAlreadyExistsFault =
  _MatchServiceError
    rds
    "DBClusterAlreadyExistsFault"
    . hasStatus 400

-- | The option group isn't in the /available/ state.
_InvalidOptionGroupStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidOptionGroupStateFault =
  _MatchServiceError
    rds
    "InvalidOptionGroupStateFault"
    . hasStatus 400

-- | The @GlobalClusterIdentifier@ doesn't refer to an existing global database cluster.
_GlobalClusterNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_GlobalClusterNotFoundFault =
  _MatchServiceError rds "GlobalClusterNotFoundFault"
    . hasStatus 404

-- | The specified Amazon S3 bucket name can't be found or Amazon RDS isn't authorized to access the specified Amazon S3 bucket. Verify the __SourceS3BucketName__ and __S3IngestionRoleArn__ values and try again.
_InvalidS3BucketFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidS3BucketFault =
  _MatchServiceError rds "InvalidS3BucketFault"
    . hasStatus 400

-- | The state of the export snapshot is invalid for exporting to an Amazon S3 bucket.
_InvalidExportSourceStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidExportSourceStateFault =
  _MatchServiceError rds "InvalidExportSourceState"
    . hasStatus 400

-- | @DBClusterIdentifier@ doesn't refer to an existing DB cluster.
_DBClusterNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBClusterNotFoundFault =
  _MatchServiceError rds "DBClusterNotFoundFault"
    . hasStatus 404

-- | @CustomAvailabilityZoneId@ doesn't refer to an existing custom Availability Zone identifier.
_CustomAvailabilityZoneNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_CustomAvailabilityZoneNotFoundFault =
  _MatchServiceError
    rds
    "CustomAvailabilityZoneNotFound"
    . hasStatus 404

-- | The request would result in the user exceeding the allowed number of DB subnet groups.
_DBSubnetGroupQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBSubnetGroupQuotaExceededFault =
  _MatchServiceError rds "DBSubnetGroupQuotaExceeded"
    . hasStatus 400

-- | The specified option group could not be found.
_OptionGroupNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_OptionGroupNotFoundFault =
  _MatchServiceError rds "OptionGroupNotFoundFault"
    . hasStatus 404

-- | @LogFileName@ doesn't refer to an existing DB log file.
_DBLogFileNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_DBLogFileNotFoundFault =
  _MatchServiceError rds "DBLogFileNotFoundFault"
    . hasStatus 404

-- | You can't cancel an export task that has completed.
_InvalidExportTaskStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidExportTaskStateFault =
  _MatchServiceError
    rds
    "InvalidExportTaskStateFault"
    . hasStatus 400

-- | The supplied category does not exist.
_SubscriptionCategoryNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_SubscriptionCategoryNotFoundFault =
  _MatchServiceError
    rds
    "SubscriptionCategoryNotFound"
    . hasStatus 404

-- | The specified CIDR IP range or Amazon EC2 security group might not be authorized for the specified DB security group.
--
--
-- Or, RDS might not be authorized to perform necessary actions using IAM on your behalf.
_AuthorizationNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_AuthorizationNotFoundFault =
  _MatchServiceError rds "AuthorizationNotFound"
    . hasStatus 404

-- | The requested subnet is invalid, or multiple subnets were requested that are not all in a common VPC.
_InvalidSubnet :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidSubnet =
  _MatchServiceError rds "InvalidSubnet"
    . hasStatus 400

-- | The subscription name does not exist.
_SubscriptionNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_SubscriptionNotFoundFault =
  _MatchServiceError rds "SubscriptionNotFound"
    . hasStatus 404
