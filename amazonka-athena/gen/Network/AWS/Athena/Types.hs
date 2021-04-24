{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Athena.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Athena.Types
  ( -- * Service Configuration
    athena,

    -- * Errors
    _InvalidRequestException,
    _ResourceNotFoundException,
    _InternalServerException,
    _MetadataException,
    _TooManyRequestsException,

    -- * ColumnNullable
    ColumnNullable (..),

    -- * DataCatalogType
    DataCatalogType (..),

    -- * EncryptionOption
    EncryptionOption (..),

    -- * QueryExecutionState
    QueryExecutionState (..),

    -- * StatementType
    StatementType (..),

    -- * WorkGroupState
    WorkGroupState (..),

    -- * Column
    Column (..),
    column,
    cComment,
    cType,
    cName,

    -- * ColumnInfo
    ColumnInfo (..),
    columnInfo,
    ciCatalogName,
    ciTableName,
    ciPrecision,
    ciCaseSensitive,
    ciNullable,
    ciLabel,
    ciSchemaName,
    ciScale,
    ciName,
    ciType,

    -- * DataCatalog
    DataCatalog (..),
    dataCatalog,
    dcDescription,
    dcParameters,
    dcName,
    dcType,

    -- * DataCatalogSummary
    DataCatalogSummary (..),
    dataCatalogSummary,
    dcsCatalogName,
    dcsType,

    -- * Database
    Database (..),
    database,
    dDescription,
    dParameters,
    dName,

    -- * Datum
    Datum (..),
    datum,
    dVarCharValue,

    -- * EncryptionConfiguration
    EncryptionConfiguration (..),
    encryptionConfiguration,
    ecKMSKey,
    ecEncryptionOption,

    -- * EngineVersion
    EngineVersion (..),
    engineVersion,
    evEffectiveEngineVersion,
    evSelectedEngineVersion,

    -- * NamedQuery
    NamedQuery (..),
    namedQuery,
    nqNamedQueryId,
    nqWorkGroup,
    nqDescription,
    nqName,
    nqDatabase,
    nqQueryString,

    -- * QueryExecution
    QueryExecution (..),
    queryExecution,
    qeStatus,
    qeQueryExecutionId,
    qeStatistics,
    qeQuery,
    qeQueryExecutionContext,
    qeEngineVersion,
    qeResultConfiguration,
    qeWorkGroup,
    qeStatementType,

    -- * QueryExecutionContext
    QueryExecutionContext (..),
    queryExecutionContext,
    qecCatalog,
    qecDatabase,

    -- * QueryExecutionStatistics
    QueryExecutionStatistics (..),
    queryExecutionStatistics,
    qesTotalExecutionTimeInMillis,
    qesServiceProcessingTimeInMillis,
    qesQueryQueueTimeInMillis,
    qesDataScannedInBytes,
    qesQueryPlanningTimeInMillis,
    qesEngineExecutionTimeInMillis,
    qesDataManifestLocation,

    -- * QueryExecutionStatus
    QueryExecutionStatus (..),
    queryExecutionStatus,
    qesSubmissionDateTime,
    qesStateChangeReason,
    qesCompletionDateTime,
    qesState,

    -- * ResultConfiguration
    ResultConfiguration (..),
    resultConfiguration,
    rcEncryptionConfiguration,
    rcOutputLocation,

    -- * ResultConfigurationUpdates
    ResultConfigurationUpdates (..),
    resultConfigurationUpdates,
    rcuEncryptionConfiguration,
    rcuRemoveOutputLocation,
    rcuRemoveEncryptionConfiguration,
    rcuOutputLocation,

    -- * ResultSet
    ResultSet (..),
    resultSet,
    rsRows,
    rsResultSetMetadata,

    -- * ResultSetMetadata
    ResultSetMetadata (..),
    resultSetMetadata,
    rsmColumnInfo,

    -- * Row
    Row (..),
    row,
    rowData,

    -- * TableMetadata
    TableMetadata (..),
    tableMetadata,
    tmTableType,
    tmCreateTime,
    tmPartitionKeys,
    tmLastAccessTime,
    tmColumns,
    tmParameters,
    tmName,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * UnprocessedNamedQueryId
    UnprocessedNamedQueryId (..),
    unprocessedNamedQueryId,
    unqiNamedQueryId,
    unqiErrorMessage,
    unqiErrorCode,

    -- * UnprocessedQueryExecutionId
    UnprocessedQueryExecutionId (..),
    unprocessedQueryExecutionId,
    uqeiQueryExecutionId,
    uqeiErrorMessage,
    uqeiErrorCode,

    -- * WorkGroup
    WorkGroup (..),
    workGroup,
    wgCreationTime,
    wgConfiguration,
    wgState,
    wgDescription,
    wgName,

    -- * WorkGroupConfiguration
    WorkGroupConfiguration (..),
    workGroupConfiguration,
    wgcBytesScannedCutoffPerQuery,
    wgcPublishCloudWatchMetricsEnabled,
    wgcEnforceWorkGroupConfiguration,
    wgcRequesterPaysEnabled,
    wgcEngineVersion,
    wgcResultConfiguration,

    -- * WorkGroupConfigurationUpdates
    WorkGroupConfigurationUpdates (..),
    workGroupConfigurationUpdates,
    wgcuBytesScannedCutoffPerQuery,
    wgcuResultConfigurationUpdates,
    wgcuPublishCloudWatchMetricsEnabled,
    wgcuEnforceWorkGroupConfiguration,
    wgcuRequesterPaysEnabled,
    wgcuRemoveBytesScannedCutoffPerQuery,
    wgcuEngineVersion,

    -- * WorkGroupSummary
    WorkGroupSummary (..),
    workGroupSummary,
    wgsCreationTime,
    wgsState,
    wgsName,
    wgsEngineVersion,
    wgsDescription,
  )
where

import Network.AWS.Athena.Types.Column
import Network.AWS.Athena.Types.ColumnInfo
import Network.AWS.Athena.Types.ColumnNullable
import Network.AWS.Athena.Types.DataCatalog
import Network.AWS.Athena.Types.DataCatalogSummary
import Network.AWS.Athena.Types.DataCatalogType
import Network.AWS.Athena.Types.Database
import Network.AWS.Athena.Types.Datum
import Network.AWS.Athena.Types.EncryptionConfiguration
import Network.AWS.Athena.Types.EncryptionOption
import Network.AWS.Athena.Types.EngineVersion
import Network.AWS.Athena.Types.NamedQuery
import Network.AWS.Athena.Types.QueryExecution
import Network.AWS.Athena.Types.QueryExecutionContext
import Network.AWS.Athena.Types.QueryExecutionState
import Network.AWS.Athena.Types.QueryExecutionStatistics
import Network.AWS.Athena.Types.QueryExecutionStatus
import Network.AWS.Athena.Types.ResultConfiguration
import Network.AWS.Athena.Types.ResultConfigurationUpdates
import Network.AWS.Athena.Types.ResultSet
import Network.AWS.Athena.Types.ResultSetMetadata
import Network.AWS.Athena.Types.Row
import Network.AWS.Athena.Types.StatementType
import Network.AWS.Athena.Types.TableMetadata
import Network.AWS.Athena.Types.Tag
import Network.AWS.Athena.Types.UnprocessedNamedQueryId
import Network.AWS.Athena.Types.UnprocessedQueryExecutionId
import Network.AWS.Athena.Types.WorkGroup
import Network.AWS.Athena.Types.WorkGroupConfiguration
import Network.AWS.Athena.Types.WorkGroupConfigurationUpdates
import Network.AWS.Athena.Types.WorkGroupState
import Network.AWS.Athena.Types.WorkGroupSummary
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2017-05-18@ of the Amazon Athena SDK configuration.
athena :: Service
athena =
  Service
    { _svcAbbrev = "Athena",
      _svcSigner = v4,
      _svcPrefix = "athena",
      _svcVersion = "2017-05-18",
      _svcEndpoint = defaultEndpoint athena,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "Athena",
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

-- | Indicates that something is wrong with the input to the request. For example, a required parameter may be missing or out of range.
_InvalidRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRequestException =
  _MatchServiceError athena "InvalidRequestException"

-- | A resource, such as a workgroup, was not found.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    athena
    "ResourceNotFoundException"

-- | Indicates a platform issue, which may be due to a transient condition or outage.
_InternalServerException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerException =
  _MatchServiceError athena "InternalServerException"

-- | An exception that Athena received when it called a custom metastore. Occurs if the error is not caused by user input (@InvalidRequestException@ ) or from the Athena platform (@InternalServerException@ ). For example, if a user-created Lambda function is missing permissions, the Lambda @4XX@ exception is returned in a @MetadataException@ .
_MetadataException :: AsError a => Getting (First ServiceError) a ServiceError
_MetadataException =
  _MatchServiceError athena "MetadataException"

-- | Indicates that the request was throttled.
_TooManyRequestsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyRequestsException =
  _MatchServiceError
    athena
    "TooManyRequestsException"
