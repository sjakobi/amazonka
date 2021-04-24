{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS Database Migration Service__
--
-- AWS Database Migration Service (AWS DMS) can migrate your data to and from the most widely used commercial and open-source databases such as Oracle, PostgreSQL, Microsoft SQL Server, Amazon Redshift, MariaDB, Amazon Aurora, MySQL, and SAP Adaptive Server Enterprise (ASE). The service supports homogeneous migrations such as Oracle to Oracle, as well as heterogeneous migrations between different database platforms, such as Oracle to MySQL or SQL Server to PostgreSQL.
--
-- For more information about AWS DMS, see <https://docs.aws.amazon.com/dms/latest/userguide/Welcome.html What Is AWS Database Migration Service?> in the /AWS Database Migration User Guide./
module Network.AWS.DMS
  ( -- * Service Configuration
    dms,

    -- * Errors
    -- $errors

    -- ** KMSDisabledFault
    _KMSDisabledFault,

    -- ** KMSFault
    _KMSFault,

    -- ** KMSAccessDeniedFault
    _KMSAccessDeniedFault,

    -- ** AccessDeniedFault
    _AccessDeniedFault,

    -- ** InvalidCertificateFault
    _InvalidCertificateFault,

    -- ** SNSNoAuthorizationFault
    _SNSNoAuthorizationFault,

    -- ** InvalidResourceStateFault
    _InvalidResourceStateFault,

    -- ** ResourceNotFoundFault
    _ResourceNotFoundFault,

    -- ** KMSKeyNotAccessibleFault
    _KMSKeyNotAccessibleFault,

    -- ** ResourceQuotaExceededFault
    _ResourceQuotaExceededFault,

    -- ** SNSInvalidTopicFault
    _SNSInvalidTopicFault,

    -- ** KMSNotFoundFault
    _KMSNotFoundFault,

    -- ** KMSInvalidStateFault
    _KMSInvalidStateFault,

    -- ** SubnetAlreadyInUse
    _SubnetAlreadyInUse,

    -- ** InsufficientResourceCapacityFault
    _InsufficientResourceCapacityFault,

    -- ** S3AccessDeniedFault
    _S3AccessDeniedFault,

    -- ** StorageQuotaExceededFault
    _StorageQuotaExceededFault,

    -- ** ResourceAlreadyExistsFault
    _ResourceAlreadyExistsFault,

    -- ** ReplicationSubnetGroupDoesNotCoverEnoughAZs
    _ReplicationSubnetGroupDoesNotCoverEnoughAZs,

    -- ** S3ResourceNotFoundFault
    _S3ResourceNotFoundFault,

    -- ** UpgradeDependencyFailureFault
    _UpgradeDependencyFailureFault,

    -- ** KMSThrottlingFault
    _KMSThrottlingFault,

    -- ** InvalidSubnet
    _InvalidSubnet,

    -- * Waiters
    -- $waiters

    -- ** ReplicationInstanceAvailable
    replicationInstanceAvailable,

    -- ** ReplicationTaskDeleted
    replicationTaskDeleted,

    -- ** EndpointDeleted
    endpointDeleted,

    -- ** ReplicationTaskRunning
    replicationTaskRunning,

    -- ** ReplicationInstanceDeleted
    replicationInstanceDeleted,

    -- ** ReplicationTaskReady
    replicationTaskReady,

    -- ** TestConnectionSucceeds
    testConnectionSucceeds,

    -- ** ReplicationTaskStopped
    replicationTaskStopped,

    -- * Operations
    -- $operations

    -- ** DeleteReplicationTaskAssessmentRun
    module Network.AWS.DMS.DeleteReplicationTaskAssessmentRun,

    -- ** DescribeEventCategories
    module Network.AWS.DMS.DescribeEventCategories,

    -- ** StartReplicationTaskAssessment
    module Network.AWS.DMS.StartReplicationTaskAssessment,

    -- ** DeleteConnection
    module Network.AWS.DMS.DeleteConnection,

    -- ** CreateEndpoint
    module Network.AWS.DMS.CreateEndpoint,

    -- ** DescribeOrderableReplicationInstances (Paginated)
    module Network.AWS.DMS.DescribeOrderableReplicationInstances,

    -- ** DeleteCertificate
    module Network.AWS.DMS.DeleteCertificate,

    -- ** DescribeApplicableIndividualAssessments
    module Network.AWS.DMS.DescribeApplicableIndividualAssessments,

    -- ** ReloadTables
    module Network.AWS.DMS.ReloadTables,

    -- ** StartReplicationTask
    module Network.AWS.DMS.StartReplicationTask,

    -- ** DescribeEventSubscriptions (Paginated)
    module Network.AWS.DMS.DescribeEventSubscriptions,

    -- ** ModifyReplicationTask
    module Network.AWS.DMS.ModifyReplicationTask,

    -- ** StopReplicationTask
    module Network.AWS.DMS.StopReplicationTask,

    -- ** CreateReplicationInstance
    module Network.AWS.DMS.CreateReplicationInstance,

    -- ** DescribeReplicationSubnetGroups (Paginated)
    module Network.AWS.DMS.DescribeReplicationSubnetGroups,

    -- ** DeleteEventSubscription
    module Network.AWS.DMS.DeleteEventSubscription,

    -- ** DescribeTableStatistics (Paginated)
    module Network.AWS.DMS.DescribeTableStatistics,

    -- ** StartReplicationTaskAssessmentRun
    module Network.AWS.DMS.StartReplicationTaskAssessmentRun,

    -- ** DescribeRefreshSchemasStatus
    module Network.AWS.DMS.DescribeRefreshSchemasStatus,

    -- ** DescribeAccountAttributes
    module Network.AWS.DMS.DescribeAccountAttributes,

    -- ** RemoveTagsFromResource
    module Network.AWS.DMS.RemoveTagsFromResource,

    -- ** DescribeCertificates (Paginated)
    module Network.AWS.DMS.DescribeCertificates,

    -- ** ModifyEndpoint
    module Network.AWS.DMS.ModifyEndpoint,

    -- ** TestConnection
    module Network.AWS.DMS.TestConnection,

    -- ** DescribeReplicationTaskAssessmentResults (Paginated)
    module Network.AWS.DMS.DescribeReplicationTaskAssessmentResults,

    -- ** ApplyPendingMaintenanceAction
    module Network.AWS.DMS.ApplyPendingMaintenanceAction,

    -- ** ImportCertificate
    module Network.AWS.DMS.ImportCertificate,

    -- ** DescribeEndpointTypes (Paginated)
    module Network.AWS.DMS.DescribeEndpointTypes,

    -- ** DescribePendingMaintenanceActions
    module Network.AWS.DMS.DescribePendingMaintenanceActions,

    -- ** DeleteEndpoint
    module Network.AWS.DMS.DeleteEndpoint,

    -- ** DescribeEvents (Paginated)
    module Network.AWS.DMS.DescribeEvents,

    -- ** DescribeSchemas (Paginated)
    module Network.AWS.DMS.DescribeSchemas,

    -- ** ModifyEventSubscription
    module Network.AWS.DMS.ModifyEventSubscription,

    -- ** DescribeReplicationTasks (Paginated)
    module Network.AWS.DMS.DescribeReplicationTasks,

    -- ** RefreshSchemas
    module Network.AWS.DMS.RefreshSchemas,

    -- ** CreateReplicationSubnetGroup
    module Network.AWS.DMS.CreateReplicationSubnetGroup,

    -- ** RebootReplicationInstance
    module Network.AWS.DMS.RebootReplicationInstance,

    -- ** DeleteReplicationInstance
    module Network.AWS.DMS.DeleteReplicationInstance,

    -- ** DeleteReplicationSubnetGroup
    module Network.AWS.DMS.DeleteReplicationSubnetGroup,

    -- ** AddTagsToResource
    module Network.AWS.DMS.AddTagsToResource,

    -- ** CreateEventSubscription
    module Network.AWS.DMS.CreateEventSubscription,

    -- ** DescribeReplicationInstances (Paginated)
    module Network.AWS.DMS.DescribeReplicationInstances,

    -- ** DescribeReplicationTaskAssessmentRuns
    module Network.AWS.DMS.DescribeReplicationTaskAssessmentRuns,

    -- ** CancelReplicationTaskAssessmentRun
    module Network.AWS.DMS.CancelReplicationTaskAssessmentRun,

    -- ** DescribeConnections (Paginated)
    module Network.AWS.DMS.DescribeConnections,

    -- ** ModifyReplicationSubnetGroup
    module Network.AWS.DMS.ModifyReplicationSubnetGroup,

    -- ** DeleteReplicationTask
    module Network.AWS.DMS.DeleteReplicationTask,

    -- ** MoveReplicationTask
    module Network.AWS.DMS.MoveReplicationTask,

    -- ** DescribeReplicationTaskIndividualAssessments
    module Network.AWS.DMS.DescribeReplicationTaskIndividualAssessments,

    -- ** ModifyReplicationInstance
    module Network.AWS.DMS.ModifyReplicationInstance,

    -- ** DescribeEndpoints (Paginated)
    module Network.AWS.DMS.DescribeEndpoints,

    -- ** CreateReplicationTask
    module Network.AWS.DMS.CreateReplicationTask,

    -- ** ListTagsForResource
    module Network.AWS.DMS.ListTagsForResource,

    -- ** DescribeReplicationInstanceTaskLogs
    module Network.AWS.DMS.DescribeReplicationInstanceTaskLogs,

    -- * Types

    -- ** AuthMechanismValue
    AuthMechanismValue (..),

    -- ** AuthTypeValue
    AuthTypeValue (..),

    -- ** CharLengthSemantics
    CharLengthSemantics (..),

    -- ** CompressionTypeValue
    CompressionTypeValue (..),

    -- ** DataFormatValue
    DataFormatValue (..),

    -- ** DatePartitionDelimiterValue
    DatePartitionDelimiterValue (..),

    -- ** DatePartitionSequenceValue
    DatePartitionSequenceValue (..),

    -- ** DmsSSLModeValue
    DmsSSLModeValue (..),

    -- ** EncodingTypeValue
    EncodingTypeValue (..),

    -- ** EncryptionModeValue
    EncryptionModeValue (..),

    -- ** MessageFormatValue
    MessageFormatValue (..),

    -- ** MigrationTypeValue
    MigrationTypeValue (..),

    -- ** NestingLevelValue
    NestingLevelValue (..),

    -- ** ParquetVersionValue
    ParquetVersionValue (..),

    -- ** RefreshSchemasStatusTypeValue
    RefreshSchemasStatusTypeValue (..),

    -- ** ReleaseStatusValues
    ReleaseStatusValues (..),

    -- ** ReloadOptionValue
    ReloadOptionValue (..),

    -- ** ReplicationEndpointTypeValue
    ReplicationEndpointTypeValue (..),

    -- ** SafeguardPolicy
    SafeguardPolicy (..),

    -- ** SourceType
    SourceType (..),

    -- ** StartReplicationTaskTypeValue
    StartReplicationTaskTypeValue (..),

    -- ** TargetDBType
    TargetDBType (..),

    -- ** AccountQuota
    AccountQuota,
    accountQuota,
    aqUsed,
    aqAccountQuotaName,
    aqMax,

    -- ** AvailabilityZone
    AvailabilityZone,
    availabilityZone,
    azName,

    -- ** Certificate
    Certificate,
    certificate,
    cCertificateOwner,
    cSigningAlgorithm,
    cValidToDate,
    cCertificateIdentifier,
    cKeyLength,
    cCertificateARN,
    cCertificateWallet,
    cValidFromDate,
    cCertificateCreationDate,
    cCertificatePem,

    -- ** Connection
    Connection,
    connection,
    cStatus,
    cLastFailureMessage,
    cEndpointARN,
    cReplicationInstanceIdentifier,
    cReplicationInstanceARN,
    cEndpointIdentifier,

    -- ** DmsTransferSettings
    DmsTransferSettings,
    dmsTransferSettings,
    dtsBucketName,
    dtsServiceAccessRoleARN,

    -- ** DocDBSettings
    DocDBSettings,
    docDBSettings,
    ddsSecretsManagerSecretId,
    ddsServerName,
    ddsKMSKeyId,
    ddsPassword,
    ddsPort,
    ddsUsername,
    ddsSecretsManagerAccessRoleARN,
    ddsExtractDocId,
    ddsDocsToInvestigate,
    ddsNestingLevel,
    ddsDatabaseName,

    -- ** DynamoDBSettings
    DynamoDBSettings,
    dynamoDBSettings,
    ddsServiceAccessRoleARN,

    -- ** ElasticsearchSettings
    ElasticsearchSettings,
    elasticsearchSettings,
    esErrorRetryDuration,
    esFullLoadErrorPercentage,
    esServiceAccessRoleARN,
    esEndpointURI,

    -- ** Endpoint
    Endpoint,
    endpoint,
    eSSLMode,
    eMongoDBSettings,
    eStatus,
    eNeptuneSettings,
    eEngineName,
    eElasticsearchSettings,
    eExternalTableDefinition,
    eEndpointType,
    eOracleSettings,
    ePostgreSQLSettings,
    eServiceAccessRoleARN,
    eCertificateARN,
    eS3Settings,
    eServerName,
    eMicrosoftSQLServerSettings,
    eKMSKeyId,
    eIBMDB2Settings,
    eMySQLSettings,
    eDmsTransferSettings,
    ePort,
    eEndpointARN,
    eRedshiftSettings,
    eUsername,
    eEngineDisplayName,
    eKafkaSettings,
    eDocDBSettings,
    eDynamoDBSettings,
    eExtraConnectionAttributes,
    eExternalId,
    eEndpointIdentifier,
    eKinesisSettings,
    eSybaseSettings,
    eDatabaseName,

    -- ** Event
    Event,
    event,
    eMessage,
    eEventCategories,
    eDate,
    eSourceIdentifier,
    eSourceType,

    -- ** EventCategoryGroup
    EventCategoryGroup,
    eventCategoryGroup,
    ecgEventCategories,
    ecgSourceType,

    -- ** EventSubscription
    EventSubscription,
    eventSubscription,
    esCustSubscriptionId,
    esStatus,
    esSourceIdsList,
    esEventCategoriesList,
    esEnabled,
    esSubscriptionCreationTime,
    esCustomerAWSId,
    esSourceType,
    esSNSTopicARN,

    -- ** Filter
    Filter,
    filter',
    fName,
    fValues,

    -- ** IBMDB2Settings
    IBMDB2Settings,
    iBMDB2Settings,
    ibmdsCurrentLsn,
    ibmdsSecretsManagerSecretId,
    ibmdsServerName,
    ibmdsPassword,
    ibmdsPort,
    ibmdsUsername,
    ibmdsSecretsManagerAccessRoleARN,
    ibmdsSetDataCaptureChanges,
    ibmdsMaxKBytesPerRead,
    ibmdsDatabaseName,

    -- ** KafkaSettings
    KafkaSettings,
    kafkaSettings,
    ksIncludeNullAndEmpty,
    ksMessageFormat,
    ksPartitionIncludeSchemaTable,
    ksIncludeControlDetails,
    ksTopic,
    ksMessageMaxBytes,
    ksBroker,
    ksIncludePartitionValue,
    ksIncludeTransactionDetails,
    ksIncludeTableAlterOperations,

    -- ** KinesisSettings
    KinesisSettings,
    kinesisSettings,
    kIncludeNullAndEmpty,
    kMessageFormat,
    kServiceAccessRoleARN,
    kStreamARN,
    kPartitionIncludeSchemaTable,
    kIncludeControlDetails,
    kIncludePartitionValue,
    kIncludeTransactionDetails,
    kIncludeTableAlterOperations,

    -- ** MicrosoftSQLServerSettings
    MicrosoftSQLServerSettings,
    microsoftSQLServerSettings,
    msqlssUseBcpFullLoad,
    msqlssSafeguardPolicy,
    msqlssSecretsManagerSecretId,
    msqlssServerName,
    msqlssPassword,
    msqlssBcpPacketSize,
    msqlssPort,
    msqlssUsername,
    msqlssSecretsManagerAccessRoleARN,
    msqlssControlTablesFileGroup,
    msqlssReadBackupOnly,
    msqlssDatabaseName,

    -- ** MongoDBSettings
    MongoDBSettings,
    mongoDBSettings,
    mdsSecretsManagerSecretId,
    mdsAuthSource,
    mdsServerName,
    mdsKMSKeyId,
    mdsPassword,
    mdsPort,
    mdsUsername,
    mdsSecretsManagerAccessRoleARN,
    mdsAuthMechanism,
    mdsExtractDocId,
    mdsAuthType,
    mdsDocsToInvestigate,
    mdsNestingLevel,
    mdsDatabaseName,

    -- ** MySQLSettings
    MySQLSettings,
    mySQLSettings,
    msqlsTargetDBType,
    msqlsServerTimezone,
    msqlsSecretsManagerSecretId,
    msqlsAfterConnectScript,
    msqlsServerName,
    msqlsMaxFileSize,
    msqlsPassword,
    msqlsEventsPollInterval,
    msqlsPort,
    msqlsUsername,
    msqlsSecretsManagerAccessRoleARN,
    msqlsParallelLoadThreads,
    msqlsDatabaseName,

    -- ** NeptuneSettings
    NeptuneSettings,
    neptuneSettings,
    nsErrorRetryDuration,
    nsServiceAccessRoleARN,
    nsMaxFileSize,
    nsMaxRetryCount,
    nsIAMAuthEnabled,
    nsS3BucketName,
    nsS3BucketFolder,

    -- ** OracleSettings
    OracleSettings,
    oracleSettings,
    osFailTasksOnLobTruncation,
    osRetryInterval,
    osSecretsManagerOracleAsmSecretId,
    osAccessAlternateDirectly,
    osUseAlternateFolderForOnline,
    osNumberDatatypeScale,
    osOraclePathPrefix,
    osSecurityDBEncryptionName,
    osAdditionalArchivedLogDestId,
    osAsmPassword,
    osSecretsManagerSecretId,
    osArchivedLogsOnly,
    osDirectPathParallelLoad,
    osDirectPathNoLog,
    osServerName,
    osAsmServer,
    osSecurityDBEncryption,
    osReadTableSpaceName,
    osPassword,
    osAllowSelectNestedTables,
    osArchivedLogDestId,
    osReplacePathPrefix,
    osPort,
    osReadAheadBlocks,
    osUsePathPrefix,
    osAsmUser,
    osUsername,
    osEnableHomogenousTablespace,
    osSecretsManagerAccessRoleARN,
    osParallelAsmReadThreads,
    osCharLengthSemantics,
    osAddSupplementalLogging,
    osSecretsManagerOracleAsmAccessRoleARN,
    osDatabaseName,

    -- ** OrderableReplicationInstance
    OrderableReplicationInstance,
    orderableReplicationInstance,
    oriAvailabilityZones,
    oriMaxAllocatedStorage,
    oriStorageType,
    oriDefaultAllocatedStorage,
    oriIncludedAllocatedStorage,
    oriReleaseStatus,
    oriEngineVersion,
    oriReplicationInstanceClass,
    oriMinAllocatedStorage,

    -- ** PendingMaintenanceAction
    PendingMaintenanceAction,
    pendingMaintenanceAction,
    pmaForcedApplyDate,
    pmaOptInStatus,
    pmaAutoAppliedAfterDate,
    pmaCurrentApplyDate,
    pmaAction,
    pmaDescription,

    -- ** PostgreSQLSettings
    PostgreSQLSettings,
    postgreSQLSettings,
    psqlsFailTasksOnLobTruncation,
    psqlsExecuteTimeout,
    psqlsSlotName,
    psqlsCaptureDdls,
    psqlsDdlArtifactsSchema,
    psqlsSecretsManagerSecretId,
    psqlsAfterConnectScript,
    psqlsServerName,
    psqlsMaxFileSize,
    psqlsPassword,
    psqlsPort,
    psqlsUsername,
    psqlsSecretsManagerAccessRoleARN,
    psqlsDatabaseName,

    -- ** RedshiftSettings
    RedshiftSettings,
    redshiftSettings,
    rsReplaceChars,
    rsCaseSensitiveNames,
    rsBucketName,
    rsFileTransferUploadStreams,
    rsReplaceInvalidChars,
    rsServerSideEncryptionKMSKeyId,
    rsTimeFormat,
    rsWriteBufferSize,
    rsServiceAccessRoleARN,
    rsBucketFolder,
    rsConnectionTimeout,
    rsSecretsManagerSecretId,
    rsLoadTimeout,
    rsAfterConnectScript,
    rsServerName,
    rsAcceptAnyDate,
    rsMaxFileSize,
    rsRemoveQuotes,
    rsPassword,
    rsDateFormat,
    rsEncryptionMode,
    rsEmptyAsNull,
    rsPort,
    rsUsername,
    rsSecretsManagerAccessRoleARN,
    rsTrimBlanks,
    rsTruncateColumns,
    rsCompUpdate,
    rsExplicitIds,
    rsDatabaseName,

    -- ** RefreshSchemasStatus
    RefreshSchemasStatus,
    refreshSchemasStatus,
    rssStatus,
    rssLastFailureMessage,
    rssEndpointARN,
    rssLastRefreshDate,
    rssReplicationInstanceARN,

    -- ** ReplicationInstance
    ReplicationInstance,
    replicationInstance,
    riReplicationInstancePrivateIPAddress,
    riVPCSecurityGroups,
    riFreeUntil,
    riReplicationSubnetGroup,
    riInstanceCreateTime,
    riMultiAZ,
    riPubliclyAccessible,
    riKMSKeyId,
    riAvailabilityZone,
    riEngineVersion,
    riPreferredMaintenanceWindow,
    riReplicationInstancePrivateIPAddresses,
    riReplicationInstanceStatus,
    riReplicationInstanceIdentifier,
    riPendingModifiedValues,
    riReplicationInstancePublicIPAddress,
    riReplicationInstanceClass,
    riReplicationInstanceARN,
    riDNSNameServers,
    riAllocatedStorage,
    riReplicationInstancePublicIPAddresses,
    riSecondaryAvailabilityZone,
    riAutoMinorVersionUpgrade,

    -- ** ReplicationInstanceTaskLog
    ReplicationInstanceTaskLog,
    replicationInstanceTaskLog,
    ritlReplicationTaskName,
    ritlReplicationTaskARN,
    ritlReplicationInstanceTaskLogSize,

    -- ** ReplicationPendingModifiedValues
    ReplicationPendingModifiedValues,
    replicationPendingModifiedValues,
    rpmvMultiAZ,
    rpmvEngineVersion,
    rpmvReplicationInstanceClass,
    rpmvAllocatedStorage,

    -- ** ReplicationSubnetGroup
    ReplicationSubnetGroup,
    replicationSubnetGroup,
    rsgReplicationSubnetGroupIdentifier,
    rsgSubnetGroupStatus,
    rsgReplicationSubnetGroupDescription,
    rsgSubnets,
    rsgVPCId,

    -- ** ReplicationTask
    ReplicationTask,
    replicationTask,
    rtStatus,
    rtMigrationType,
    rtReplicationTaskCreationDate,
    rtStopReason,
    rtRecoveryCheckpoint,
    rtTargetReplicationInstanceARN,
    rtTaskData,
    rtTargetEndpointARN,
    rtReplicationTaskARN,
    rtReplicationTaskSettings,
    rtLastFailureMessage,
    rtTableMappings,
    rtSourceEndpointARN,
    rtReplicationInstanceARN,
    rtReplicationTaskStats,
    rtReplicationTaskStartDate,
    rtCdcStopPosition,
    rtCdcStartPosition,
    rtReplicationTaskIdentifier,

    -- ** ReplicationTaskAssessmentResult
    ReplicationTaskAssessmentResult,
    replicationTaskAssessmentResult,
    repS3ObjectURL,
    repAssessmentStatus,
    repReplicationTaskARN,
    repAssessmentResults,
    repReplicationTaskLastAssessmentDate,
    repAssessmentResultsFile,
    repReplicationTaskIdentifier,

    -- ** ReplicationTaskAssessmentRun
    ReplicationTaskAssessmentRun,
    replicationTaskAssessmentRun,
    rtarStatus,
    rtarResultKMSKeyARN,
    rtarAssessmentProgress,
    rtarReplicationTaskAssessmentRunARN,
    rtarReplicationTaskAssessmentRunCreationDate,
    rtarAssessmentRunName,
    rtarServiceAccessRoleARN,
    rtarResultEncryptionMode,
    rtarReplicationTaskARN,
    rtarLastFailureMessage,
    rtarResultLocationFolder,
    rtarResultLocationBucket,

    -- ** ReplicationTaskAssessmentRunProgress
    ReplicationTaskAssessmentRunProgress,
    replicationTaskAssessmentRunProgress,
    rtarpIndividualAssessmentCount,
    rtarpIndividualAssessmentCompletedCount,

    -- ** ReplicationTaskIndividualAssessment
    ReplicationTaskIndividualAssessment,
    replicationTaskIndividualAssessment,
    rtiaStatus,
    rtiaReplicationTaskAssessmentRunARN,
    rtiaIndividualAssessmentName,
    rtiaReplicationTaskIndividualAssessmentStartDate,
    rtiaReplicationTaskIndividualAssessmentARN,

    -- ** ReplicationTaskStats
    ReplicationTaskStats,
    replicationTaskStats,
    rtsStopDate,
    rtsTablesErrored,
    rtsStartDate,
    rtsFreshStartDate,
    rtsTablesLoading,
    rtsFullLoadStartDate,
    rtsElapsedTimeMillis,
    rtsFullLoadProgressPercent,
    rtsTablesQueued,
    rtsFullLoadFinishDate,
    rtsTablesLoaded,

    -- ** ResourcePendingMaintenanceActions
    ResourcePendingMaintenanceActions,
    resourcePendingMaintenanceActions,
    rpmaPendingMaintenanceActionDetails,
    rpmaResourceIdentifier,

    -- ** S3Settings
    S3Settings,
    s3Settings,
    ssTimestampColumnName,
    ssPreserveTransactions,
    ssCSVRowDelimiter,
    ssParquetVersion,
    ssDatePartitionSequence,
    ssBucketName,
    ssCdcPath,
    ssExternalTableDefinition,
    ssServerSideEncryptionKMSKeyId,
    ssDataPageSize,
    ssEncodingType,
    ssDatePartitionEnabled,
    ssDataFormat,
    ssServiceAccessRoleARN,
    ssBucketFolder,
    ssDatePartitionDelimiter,
    ssEnableStatistics,
    ssEncryptionMode,
    ssCdcInsertsOnly,
    ssCdcInsertsAndUpdates,
    ssUseCSVNoSupValue,
    ssDictPageSizeLimit,
    ssRowGroupLength,
    ssCompressionType,
    ssIncludeOpForFullLoad,
    ssCSVDelimiter,
    ssParquetTimestampInMillisecond,
    ssCSVNoSupValue,

    -- ** Subnet
    Subnet,
    subnet,
    sSubnetStatus,
    sSubnetIdentifier,
    sSubnetAvailabilityZone,

    -- ** SupportedEndpointType
    SupportedEndpointType,
    supportedEndpointType,
    setReplicationInstanceEngineMinimumVersion,
    setEngineName,
    setEndpointType,
    setSupportsCDC,
    setEngineDisplayName,

    -- ** SybaseSettings
    SybaseSettings,
    sybaseSettings,
    ssSecretsManagerSecretId,
    ssServerName,
    ssPassword,
    ssPort,
    ssUsername,
    ssSecretsManagerAccessRoleARN,
    ssDatabaseName,

    -- ** TableStatistics
    TableStatistics,
    tableStatistics,
    tsFullLoadCondtnlChkFailedRows,
    tsFullLoadRows,
    tsFullLoadErrorRows,
    tsTableName,
    tsTableState,
    tsLastUpdateTime,
    tsValidationFailedRecords,
    tsFullLoadStartTime,
    tsUpdates,
    tsDeletes,
    tsDdls,
    tsFullLoadEndTime,
    tsValidationState,
    tsInserts,
    tsValidationSuspendedRecords,
    tsSchemaName,
    tsValidationStateDetails,
    tsFullLoadReloaded,
    tsValidationPendingRecords,

    -- ** TableToReload
    TableToReload,
    tableToReload,
    ttrSchemaName,
    ttrTableName,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** VPCSecurityGroupMembership
    VPCSecurityGroupMembership,
    vpcSecurityGroupMembership,
    vsgmStatus,
    vsgmVPCSecurityGroupId,
  )
where

import Network.AWS.DMS.AddTagsToResource
import Network.AWS.DMS.ApplyPendingMaintenanceAction
import Network.AWS.DMS.CancelReplicationTaskAssessmentRun
import Network.AWS.DMS.CreateEndpoint
import Network.AWS.DMS.CreateEventSubscription
import Network.AWS.DMS.CreateReplicationInstance
import Network.AWS.DMS.CreateReplicationSubnetGroup
import Network.AWS.DMS.CreateReplicationTask
import Network.AWS.DMS.DeleteCertificate
import Network.AWS.DMS.DeleteConnection
import Network.AWS.DMS.DeleteEndpoint
import Network.AWS.DMS.DeleteEventSubscription
import Network.AWS.DMS.DeleteReplicationInstance
import Network.AWS.DMS.DeleteReplicationSubnetGroup
import Network.AWS.DMS.DeleteReplicationTask
import Network.AWS.DMS.DeleteReplicationTaskAssessmentRun
import Network.AWS.DMS.DescribeAccountAttributes
import Network.AWS.DMS.DescribeApplicableIndividualAssessments
import Network.AWS.DMS.DescribeCertificates
import Network.AWS.DMS.DescribeConnections
import Network.AWS.DMS.DescribeEndpointTypes
import Network.AWS.DMS.DescribeEndpoints
import Network.AWS.DMS.DescribeEventCategories
import Network.AWS.DMS.DescribeEventSubscriptions
import Network.AWS.DMS.DescribeEvents
import Network.AWS.DMS.DescribeOrderableReplicationInstances
import Network.AWS.DMS.DescribePendingMaintenanceActions
import Network.AWS.DMS.DescribeRefreshSchemasStatus
import Network.AWS.DMS.DescribeReplicationInstanceTaskLogs
import Network.AWS.DMS.DescribeReplicationInstances
import Network.AWS.DMS.DescribeReplicationSubnetGroups
import Network.AWS.DMS.DescribeReplicationTaskAssessmentResults
import Network.AWS.DMS.DescribeReplicationTaskAssessmentRuns
import Network.AWS.DMS.DescribeReplicationTaskIndividualAssessments
import Network.AWS.DMS.DescribeReplicationTasks
import Network.AWS.DMS.DescribeSchemas
import Network.AWS.DMS.DescribeTableStatistics
import Network.AWS.DMS.ImportCertificate
import Network.AWS.DMS.ListTagsForResource
import Network.AWS.DMS.ModifyEndpoint
import Network.AWS.DMS.ModifyEventSubscription
import Network.AWS.DMS.ModifyReplicationInstance
import Network.AWS.DMS.ModifyReplicationSubnetGroup
import Network.AWS.DMS.ModifyReplicationTask
import Network.AWS.DMS.MoveReplicationTask
import Network.AWS.DMS.RebootReplicationInstance
import Network.AWS.DMS.RefreshSchemas
import Network.AWS.DMS.ReloadTables
import Network.AWS.DMS.RemoveTagsFromResource
import Network.AWS.DMS.StartReplicationTask
import Network.AWS.DMS.StartReplicationTaskAssessment
import Network.AWS.DMS.StartReplicationTaskAssessmentRun
import Network.AWS.DMS.StopReplicationTask
import Network.AWS.DMS.TestConnection
import Network.AWS.DMS.Types
import Network.AWS.DMS.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'DMS'.

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
