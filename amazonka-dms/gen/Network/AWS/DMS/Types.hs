{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types
  ( -- * Service Configuration
    dms,

    -- * Errors
    _KMSDisabledFault,
    _KMSFault,
    _KMSAccessDeniedFault,
    _AccessDeniedFault,
    _InvalidCertificateFault,
    _SNSNoAuthorizationFault,
    _InvalidResourceStateFault,
    _ResourceNotFoundFault,
    _KMSKeyNotAccessibleFault,
    _ResourceQuotaExceededFault,
    _SNSInvalidTopicFault,
    _KMSNotFoundFault,
    _KMSInvalidStateFault,
    _SubnetAlreadyInUse,
    _InsufficientResourceCapacityFault,
    _S3AccessDeniedFault,
    _StorageQuotaExceededFault,
    _ResourceAlreadyExistsFault,
    _ReplicationSubnetGroupDoesNotCoverEnoughAZs,
    _S3ResourceNotFoundFault,
    _UpgradeDependencyFailureFault,
    _KMSThrottlingFault,
    _InvalidSubnet,

    -- * AuthMechanismValue
    AuthMechanismValue (..),

    -- * AuthTypeValue
    AuthTypeValue (..),

    -- * CharLengthSemantics
    CharLengthSemantics (..),

    -- * CompressionTypeValue
    CompressionTypeValue (..),

    -- * DataFormatValue
    DataFormatValue (..),

    -- * DatePartitionDelimiterValue
    DatePartitionDelimiterValue (..),

    -- * DatePartitionSequenceValue
    DatePartitionSequenceValue (..),

    -- * DmsSSLModeValue
    DmsSSLModeValue (..),

    -- * EncodingTypeValue
    EncodingTypeValue (..),

    -- * EncryptionModeValue
    EncryptionModeValue (..),

    -- * MessageFormatValue
    MessageFormatValue (..),

    -- * MigrationTypeValue
    MigrationTypeValue (..),

    -- * NestingLevelValue
    NestingLevelValue (..),

    -- * ParquetVersionValue
    ParquetVersionValue (..),

    -- * RefreshSchemasStatusTypeValue
    RefreshSchemasStatusTypeValue (..),

    -- * ReleaseStatusValues
    ReleaseStatusValues (..),

    -- * ReloadOptionValue
    ReloadOptionValue (..),

    -- * ReplicationEndpointTypeValue
    ReplicationEndpointTypeValue (..),

    -- * SafeguardPolicy
    SafeguardPolicy (..),

    -- * SourceType
    SourceType (..),

    -- * StartReplicationTaskTypeValue
    StartReplicationTaskTypeValue (..),

    -- * TargetDBType
    TargetDBType (..),

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

    -- * Certificate
    Certificate (..),
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

    -- * Connection
    Connection (..),
    connection,
    cStatus,
    cLastFailureMessage,
    cEndpointARN,
    cReplicationInstanceIdentifier,
    cReplicationInstanceARN,
    cEndpointIdentifier,

    -- * DmsTransferSettings
    DmsTransferSettings (..),
    dmsTransferSettings,
    dtsBucketName,
    dtsServiceAccessRoleARN,

    -- * DocDBSettings
    DocDBSettings (..),
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

    -- * DynamoDBSettings
    DynamoDBSettings (..),
    dynamoDBSettings,
    ddsServiceAccessRoleARN,

    -- * ElasticsearchSettings
    ElasticsearchSettings (..),
    elasticsearchSettings,
    esErrorRetryDuration,
    esFullLoadErrorPercentage,
    esServiceAccessRoleARN,
    esEndpointURI,

    -- * Endpoint
    Endpoint (..),
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

    -- * Event
    Event (..),
    event,
    eMessage,
    eEventCategories,
    eDate,
    eSourceIdentifier,
    eSourceType,

    -- * EventCategoryGroup
    EventCategoryGroup (..),
    eventCategoryGroup,
    ecgEventCategories,
    ecgSourceType,

    -- * EventSubscription
    EventSubscription (..),
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

    -- * Filter
    Filter (..),
    filter',
    fName,
    fValues,

    -- * IBMDB2Settings
    IBMDB2Settings (..),
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

    -- * KafkaSettings
    KafkaSettings (..),
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

    -- * KinesisSettings
    KinesisSettings (..),
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

    -- * MicrosoftSQLServerSettings
    MicrosoftSQLServerSettings (..),
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

    -- * MongoDBSettings
    MongoDBSettings (..),
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

    -- * MySQLSettings
    MySQLSettings (..),
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

    -- * NeptuneSettings
    NeptuneSettings (..),
    neptuneSettings,
    nsErrorRetryDuration,
    nsServiceAccessRoleARN,
    nsMaxFileSize,
    nsMaxRetryCount,
    nsIAMAuthEnabled,
    nsS3BucketName,
    nsS3BucketFolder,

    -- * OracleSettings
    OracleSettings (..),
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

    -- * OrderableReplicationInstance
    OrderableReplicationInstance (..),
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

    -- * PendingMaintenanceAction
    PendingMaintenanceAction (..),
    pendingMaintenanceAction,
    pmaForcedApplyDate,
    pmaOptInStatus,
    pmaAutoAppliedAfterDate,
    pmaCurrentApplyDate,
    pmaAction,
    pmaDescription,

    -- * PostgreSQLSettings
    PostgreSQLSettings (..),
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

    -- * RedshiftSettings
    RedshiftSettings (..),
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

    -- * RefreshSchemasStatus
    RefreshSchemasStatus (..),
    refreshSchemasStatus,
    rssStatus,
    rssLastFailureMessage,
    rssEndpointARN,
    rssLastRefreshDate,
    rssReplicationInstanceARN,

    -- * ReplicationInstance
    ReplicationInstance (..),
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

    -- * ReplicationInstanceTaskLog
    ReplicationInstanceTaskLog (..),
    replicationInstanceTaskLog,
    ritlReplicationTaskName,
    ritlReplicationTaskARN,
    ritlReplicationInstanceTaskLogSize,

    -- * ReplicationPendingModifiedValues
    ReplicationPendingModifiedValues (..),
    replicationPendingModifiedValues,
    rpmvMultiAZ,
    rpmvEngineVersion,
    rpmvReplicationInstanceClass,
    rpmvAllocatedStorage,

    -- * ReplicationSubnetGroup
    ReplicationSubnetGroup (..),
    replicationSubnetGroup,
    rsgReplicationSubnetGroupIdentifier,
    rsgSubnetGroupStatus,
    rsgReplicationSubnetGroupDescription,
    rsgSubnets,
    rsgVPCId,

    -- * ReplicationTask
    ReplicationTask (..),
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

    -- * ReplicationTaskAssessmentResult
    ReplicationTaskAssessmentResult (..),
    replicationTaskAssessmentResult,
    repS3ObjectURL,
    repAssessmentStatus,
    repReplicationTaskARN,
    repAssessmentResults,
    repReplicationTaskLastAssessmentDate,
    repAssessmentResultsFile,
    repReplicationTaskIdentifier,

    -- * ReplicationTaskAssessmentRun
    ReplicationTaskAssessmentRun (..),
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

    -- * ReplicationTaskAssessmentRunProgress
    ReplicationTaskAssessmentRunProgress (..),
    replicationTaskAssessmentRunProgress,
    rtarpIndividualAssessmentCount,
    rtarpIndividualAssessmentCompletedCount,

    -- * ReplicationTaskIndividualAssessment
    ReplicationTaskIndividualAssessment (..),
    replicationTaskIndividualAssessment,
    rtiaStatus,
    rtiaReplicationTaskAssessmentRunARN,
    rtiaIndividualAssessmentName,
    rtiaReplicationTaskIndividualAssessmentStartDate,
    rtiaReplicationTaskIndividualAssessmentARN,

    -- * ReplicationTaskStats
    ReplicationTaskStats (..),
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

    -- * ResourcePendingMaintenanceActions
    ResourcePendingMaintenanceActions (..),
    resourcePendingMaintenanceActions,
    rpmaPendingMaintenanceActionDetails,
    rpmaResourceIdentifier,

    -- * S3Settings
    S3Settings (..),
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

    -- * Subnet
    Subnet (..),
    subnet,
    sSubnetStatus,
    sSubnetIdentifier,
    sSubnetAvailabilityZone,

    -- * SupportedEndpointType
    SupportedEndpointType (..),
    supportedEndpointType,
    setReplicationInstanceEngineMinimumVersion,
    setEngineName,
    setEndpointType,
    setSupportsCDC,
    setEngineDisplayName,

    -- * SybaseSettings
    SybaseSettings (..),
    sybaseSettings,
    ssSecretsManagerSecretId,
    ssServerName,
    ssPassword,
    ssPort,
    ssUsername,
    ssSecretsManagerAccessRoleARN,
    ssDatabaseName,

    -- * TableStatistics
    TableStatistics (..),
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

    -- * TableToReload
    TableToReload (..),
    tableToReload,
    ttrSchemaName,
    ttrTableName,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * VPCSecurityGroupMembership
    VPCSecurityGroupMembership (..),
    vpcSecurityGroupMembership,
    vsgmStatus,
    vsgmVPCSecurityGroupId,
  )
where

import Network.AWS.DMS.Types.AccountQuota
import Network.AWS.DMS.Types.AuthMechanismValue
import Network.AWS.DMS.Types.AuthTypeValue
import Network.AWS.DMS.Types.AvailabilityZone
import Network.AWS.DMS.Types.Certificate
import Network.AWS.DMS.Types.CharLengthSemantics
import Network.AWS.DMS.Types.CompressionTypeValue
import Network.AWS.DMS.Types.Connection
import Network.AWS.DMS.Types.DataFormatValue
import Network.AWS.DMS.Types.DatePartitionDelimiterValue
import Network.AWS.DMS.Types.DatePartitionSequenceValue
import Network.AWS.DMS.Types.DmsSSLModeValue
import Network.AWS.DMS.Types.DmsTransferSettings
import Network.AWS.DMS.Types.DocDBSettings
import Network.AWS.DMS.Types.DynamoDBSettings
import Network.AWS.DMS.Types.ElasticsearchSettings
import Network.AWS.DMS.Types.EncodingTypeValue
import Network.AWS.DMS.Types.EncryptionModeValue
import Network.AWS.DMS.Types.Endpoint
import Network.AWS.DMS.Types.Event
import Network.AWS.DMS.Types.EventCategoryGroup
import Network.AWS.DMS.Types.EventSubscription
import Network.AWS.DMS.Types.Filter
import Network.AWS.DMS.Types.IBMDB2Settings
import Network.AWS.DMS.Types.KafkaSettings
import Network.AWS.DMS.Types.KinesisSettings
import Network.AWS.DMS.Types.MessageFormatValue
import Network.AWS.DMS.Types.MicrosoftSQLServerSettings
import Network.AWS.DMS.Types.MigrationTypeValue
import Network.AWS.DMS.Types.MongoDBSettings
import Network.AWS.DMS.Types.MySQLSettings
import Network.AWS.DMS.Types.NeptuneSettings
import Network.AWS.DMS.Types.NestingLevelValue
import Network.AWS.DMS.Types.OracleSettings
import Network.AWS.DMS.Types.OrderableReplicationInstance
import Network.AWS.DMS.Types.ParquetVersionValue
import Network.AWS.DMS.Types.PendingMaintenanceAction
import Network.AWS.DMS.Types.PostgreSQLSettings
import Network.AWS.DMS.Types.RedshiftSettings
import Network.AWS.DMS.Types.RefreshSchemasStatus
import Network.AWS.DMS.Types.RefreshSchemasStatusTypeValue
import Network.AWS.DMS.Types.ReleaseStatusValues
import Network.AWS.DMS.Types.ReloadOptionValue
import Network.AWS.DMS.Types.ReplicationEndpointTypeValue
import Network.AWS.DMS.Types.ReplicationInstance
import Network.AWS.DMS.Types.ReplicationInstanceTaskLog
import Network.AWS.DMS.Types.ReplicationPendingModifiedValues
import Network.AWS.DMS.Types.ReplicationSubnetGroup
import Network.AWS.DMS.Types.ReplicationTask
import Network.AWS.DMS.Types.ReplicationTaskAssessmentResult
import Network.AWS.DMS.Types.ReplicationTaskAssessmentRun
import Network.AWS.DMS.Types.ReplicationTaskAssessmentRunProgress
import Network.AWS.DMS.Types.ReplicationTaskIndividualAssessment
import Network.AWS.DMS.Types.ReplicationTaskStats
import Network.AWS.DMS.Types.ResourcePendingMaintenanceActions
import Network.AWS.DMS.Types.S3Settings
import Network.AWS.DMS.Types.SafeguardPolicy
import Network.AWS.DMS.Types.SourceType
import Network.AWS.DMS.Types.StartReplicationTaskTypeValue
import Network.AWS.DMS.Types.Subnet
import Network.AWS.DMS.Types.SupportedEndpointType
import Network.AWS.DMS.Types.SybaseSettings
import Network.AWS.DMS.Types.TableStatistics
import Network.AWS.DMS.Types.TableToReload
import Network.AWS.DMS.Types.Tag
import Network.AWS.DMS.Types.TargetDBType
import Network.AWS.DMS.Types.VPCSecurityGroupMembership
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2016-01-01@ of the Amazon Database Migration Service SDK configuration.
dms :: Service
dms =
  Service
    { _svcAbbrev = "DMS",
      _svcSigner = v4,
      _svcPrefix = "dms",
      _svcVersion = "2016-01-01",
      _svcEndpoint = defaultEndpoint dms,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "DMS",
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

-- | The specified master key (CMK) isn't enabled.
_KMSDisabledFault :: AsError a => Getting (First ServiceError) a ServiceError
_KMSDisabledFault =
  _MatchServiceError dms "KMSDisabledFault"

-- | An AWS Key Management Service (AWS KMS) error is preventing access to AWS KMS.
_KMSFault :: AsError a => Getting (First ServiceError) a ServiceError
_KMSFault = _MatchServiceError dms "KMSFault"

-- | The ciphertext references a key that doesn't exist or that the DMS account doesn't have access to.
_KMSAccessDeniedFault :: AsError a => Getting (First ServiceError) a ServiceError
_KMSAccessDeniedFault =
  _MatchServiceError dms "KMSAccessDeniedFault"

-- | AWS DMS was denied access to the endpoint. Check that the role is correctly configured.
_AccessDeniedFault :: AsError a => Getting (First ServiceError) a ServiceError
_AccessDeniedFault =
  _MatchServiceError dms "AccessDeniedFault"

-- | The certificate was not valid.
_InvalidCertificateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidCertificateFault =
  _MatchServiceError dms "InvalidCertificateFault"

-- | You are not authorized for the SNS subscription.
_SNSNoAuthorizationFault :: AsError a => Getting (First ServiceError) a ServiceError
_SNSNoAuthorizationFault =
  _MatchServiceError dms "SNSNoAuthorizationFault"

-- | The resource is in a state that prevents it from being used for database migration.
_InvalidResourceStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidResourceStateFault =
  _MatchServiceError dms "InvalidResourceStateFault"

-- | The resource could not be found.
_ResourceNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundFault =
  _MatchServiceError dms "ResourceNotFoundFault"

-- | AWS DMS cannot access the AWS KMS key.
_KMSKeyNotAccessibleFault :: AsError a => Getting (First ServiceError) a ServiceError
_KMSKeyNotAccessibleFault =
  _MatchServiceError dms "KMSKeyNotAccessibleFault"

-- | The quota for this resource quota has been exceeded.
_ResourceQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceQuotaExceededFault =
  _MatchServiceError dms "ResourceQuotaExceededFault"

-- | The SNS topic is invalid.
_SNSInvalidTopicFault :: AsError a => Getting (First ServiceError) a ServiceError
_SNSInvalidTopicFault =
  _MatchServiceError dms "SNSInvalidTopicFault"

-- | The specified AWS KMS entity or resource can't be found.
_KMSNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_KMSNotFoundFault =
  _MatchServiceError dms "KMSNotFoundFault"

-- | The state of the specified AWS KMS resource isn't valid for this request.
_KMSInvalidStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_KMSInvalidStateFault =
  _MatchServiceError dms "KMSInvalidStateFault"

-- | The specified subnet is already in use.
_SubnetAlreadyInUse :: AsError a => Getting (First ServiceError) a ServiceError
_SubnetAlreadyInUse =
  _MatchServiceError dms "SubnetAlreadyInUse"

-- | There are not enough resources allocated to the database migration.
_InsufficientResourceCapacityFault :: AsError a => Getting (First ServiceError) a ServiceError
_InsufficientResourceCapacityFault =
  _MatchServiceError
    dms
    "InsufficientResourceCapacityFault"

-- | Insufficient privileges are preventing access to an Amazon S3 object.
_S3AccessDeniedFault :: AsError a => Getting (First ServiceError) a ServiceError
_S3AccessDeniedFault =
  _MatchServiceError dms "S3AccessDeniedFault"

-- | The storage quota has been exceeded.
_StorageQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_StorageQuotaExceededFault =
  _MatchServiceError dms "StorageQuotaExceededFault"

-- | The resource you are attempting to create already exists.
_ResourceAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceAlreadyExistsFault =
  _MatchServiceError dms "ResourceAlreadyExistsFault"

-- | The replication subnet group does not cover enough Availability Zones (AZs). Edit the replication subnet group and add more AZs.
_ReplicationSubnetGroupDoesNotCoverEnoughAZs :: AsError a => Getting (First ServiceError) a ServiceError
_ReplicationSubnetGroupDoesNotCoverEnoughAZs =
  _MatchServiceError
    dms
    "ReplicationSubnetGroupDoesNotCoverEnoughAZs"

-- | A specified Amazon S3 bucket, bucket folder, or other object can't be found.
_S3ResourceNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_S3ResourceNotFoundFault =
  _MatchServiceError dms "S3ResourceNotFoundFault"

-- | An upgrade dependency is preventing the database migration.
_UpgradeDependencyFailureFault :: AsError a => Getting (First ServiceError) a ServiceError
_UpgradeDependencyFailureFault =
  _MatchServiceError
    dms
    "UpgradeDependencyFailureFault"

-- | This request triggered AWS KMS request throttling.
_KMSThrottlingFault :: AsError a => Getting (First ServiceError) a ServiceError
_KMSThrottlingFault =
  _MatchServiceError dms "KMSThrottlingFault"

-- | The subnet provided is invalid.
_InvalidSubnet :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidSubnet =
  _MatchServiceError dms "InvalidSubnet"
