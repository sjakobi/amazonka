{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Athena
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Amazon Athena is an interactive query service that lets you use standard SQL to analyze data directly in Amazon S3. You can point Athena at your data in Amazon S3 and run ad-hoc queries and get results in seconds. Athena is serverless, so there is no infrastructure to set up or manage. You pay only for the queries you run. Athena scales automatically—executing queries in parallel—so results are fast, even with large datasets and complex queries. For more information, see <http://docs.aws.amazon.com/athena/latest/ug/what-is.html What is Amazon Athena> in the /Amazon Athena User Guide/ .
--
--
-- If you connect to Athena using the JDBC driver, use version 1.1.0 of the driver or later with the Amazon Athena API. Earlier version drivers do not support the API. For more information and to download the driver, see <https://docs.aws.amazon.com/athena/latest/ug/connect-with-jdbc.html Accessing Amazon Athena with JDBC> .
--
-- For code samples using the AWS SDK for Java, see <https://docs.aws.amazon.com/athena/latest/ug/code-samples.html Examples and Code Samples> in the /Amazon Athena User Guide/ .
module Network.AWS.Athena
  ( -- * Service Configuration
    athena,

    -- * Errors
    -- $errors

    -- ** InvalidRequestException
    _InvalidRequestException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** InternalServerException
    _InternalServerException,

    -- ** MetadataException
    _MetadataException,

    -- ** TooManyRequestsException
    _TooManyRequestsException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** CreateDataCatalog
    module Network.AWS.Athena.CreateDataCatalog,

    -- ** ListQueryExecutions (Paginated)
    module Network.AWS.Athena.ListQueryExecutions,

    -- ** ListTableMetadata (Paginated)
    module Network.AWS.Athena.ListTableMetadata,

    -- ** GetQueryExecution
    module Network.AWS.Athena.GetQueryExecution,

    -- ** BatchGetNamedQuery
    module Network.AWS.Athena.BatchGetNamedQuery,

    -- ** UntagResource
    module Network.AWS.Athena.UntagResource,

    -- ** GetDatabase
    module Network.AWS.Athena.GetDatabase,

    -- ** DeleteNamedQuery
    module Network.AWS.Athena.DeleteNamedQuery,

    -- ** TagResource
    module Network.AWS.Athena.TagResource,

    -- ** ListEngineVersions
    module Network.AWS.Athena.ListEngineVersions,

    -- ** GetDataCatalog
    module Network.AWS.Athena.GetDataCatalog,

    -- ** ListDataCatalogs (Paginated)
    module Network.AWS.Athena.ListDataCatalogs,

    -- ** CreateWorkGroup
    module Network.AWS.Athena.CreateWorkGroup,

    -- ** GetNamedQuery
    module Network.AWS.Athena.GetNamedQuery,

    -- ** UpdateWorkGroup
    module Network.AWS.Athena.UpdateWorkGroup,

    -- ** DeleteWorkGroup
    module Network.AWS.Athena.DeleteWorkGroup,

    -- ** ListWorkGroups
    module Network.AWS.Athena.ListWorkGroups,

    -- ** ListDatabases (Paginated)
    module Network.AWS.Athena.ListDatabases,

    -- ** GetQueryResults (Paginated)
    module Network.AWS.Athena.GetQueryResults,

    -- ** GetWorkGroup
    module Network.AWS.Athena.GetWorkGroup,

    -- ** StartQueryExecution
    module Network.AWS.Athena.StartQueryExecution,

    -- ** StopQueryExecution
    module Network.AWS.Athena.StopQueryExecution,

    -- ** GetTableMetadata
    module Network.AWS.Athena.GetTableMetadata,

    -- ** CreateNamedQuery
    module Network.AWS.Athena.CreateNamedQuery,

    -- ** ListNamedQueries (Paginated)
    module Network.AWS.Athena.ListNamedQueries,

    -- ** BatchGetQueryExecution
    module Network.AWS.Athena.BatchGetQueryExecution,

    -- ** ListTagsForResource (Paginated)
    module Network.AWS.Athena.ListTagsForResource,

    -- ** DeleteDataCatalog
    module Network.AWS.Athena.DeleteDataCatalog,

    -- ** UpdateDataCatalog
    module Network.AWS.Athena.UpdateDataCatalog,

    -- * Types

    -- ** ColumnNullable
    ColumnNullable (..),

    -- ** DataCatalogType
    DataCatalogType (..),

    -- ** EncryptionOption
    EncryptionOption (..),

    -- ** QueryExecutionState
    QueryExecutionState (..),

    -- ** StatementType
    StatementType (..),

    -- ** WorkGroupState
    WorkGroupState (..),

    -- ** Column
    Column,
    column,
    cComment,
    cType,
    cName,

    -- ** ColumnInfo
    ColumnInfo,
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

    -- ** DataCatalog
    DataCatalog,
    dataCatalog,
    dcDescription,
    dcParameters,
    dcName,
    dcType,

    -- ** DataCatalogSummary
    DataCatalogSummary,
    dataCatalogSummary,
    dcsCatalogName,
    dcsType,

    -- ** Database
    Database,
    database,
    dDescription,
    dParameters,
    dName,

    -- ** Datum
    Datum,
    datum,
    dVarCharValue,

    -- ** EncryptionConfiguration
    EncryptionConfiguration,
    encryptionConfiguration,
    ecKMSKey,
    ecEncryptionOption,

    -- ** EngineVersion
    EngineVersion,
    engineVersion,
    evEffectiveEngineVersion,
    evSelectedEngineVersion,

    -- ** NamedQuery
    NamedQuery,
    namedQuery,
    nqNamedQueryId,
    nqWorkGroup,
    nqDescription,
    nqName,
    nqDatabase,
    nqQueryString,

    -- ** QueryExecution
    QueryExecution,
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

    -- ** QueryExecutionContext
    QueryExecutionContext,
    queryExecutionContext,
    qecCatalog,
    qecDatabase,

    -- ** QueryExecutionStatistics
    QueryExecutionStatistics,
    queryExecutionStatistics,
    qesTotalExecutionTimeInMillis,
    qesServiceProcessingTimeInMillis,
    qesQueryQueueTimeInMillis,
    qesDataScannedInBytes,
    qesQueryPlanningTimeInMillis,
    qesEngineExecutionTimeInMillis,
    qesDataManifestLocation,

    -- ** QueryExecutionStatus
    QueryExecutionStatus,
    queryExecutionStatus,
    qesSubmissionDateTime,
    qesStateChangeReason,
    qesCompletionDateTime,
    qesState,

    -- ** ResultConfiguration
    ResultConfiguration,
    resultConfiguration,
    rcEncryptionConfiguration,
    rcOutputLocation,

    -- ** ResultConfigurationUpdates
    ResultConfigurationUpdates,
    resultConfigurationUpdates,
    rcuEncryptionConfiguration,
    rcuRemoveOutputLocation,
    rcuRemoveEncryptionConfiguration,
    rcuOutputLocation,

    -- ** ResultSet
    ResultSet,
    resultSet,
    rsRows,
    rsResultSetMetadata,

    -- ** ResultSetMetadata
    ResultSetMetadata,
    resultSetMetadata,
    rsmColumnInfo,

    -- ** Row
    Row,
    row,
    rowData,

    -- ** TableMetadata
    TableMetadata,
    tableMetadata,
    tmTableType,
    tmCreateTime,
    tmPartitionKeys,
    tmLastAccessTime,
    tmColumns,
    tmParameters,
    tmName,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** UnprocessedNamedQueryId
    UnprocessedNamedQueryId,
    unprocessedNamedQueryId,
    unqiNamedQueryId,
    unqiErrorMessage,
    unqiErrorCode,

    -- ** UnprocessedQueryExecutionId
    UnprocessedQueryExecutionId,
    unprocessedQueryExecutionId,
    uqeiQueryExecutionId,
    uqeiErrorMessage,
    uqeiErrorCode,

    -- ** WorkGroup
    WorkGroup,
    workGroup,
    wgCreationTime,
    wgConfiguration,
    wgState,
    wgDescription,
    wgName,

    -- ** WorkGroupConfiguration
    WorkGroupConfiguration,
    workGroupConfiguration,
    wgcBytesScannedCutoffPerQuery,
    wgcPublishCloudWatchMetricsEnabled,
    wgcEnforceWorkGroupConfiguration,
    wgcRequesterPaysEnabled,
    wgcEngineVersion,
    wgcResultConfiguration,

    -- ** WorkGroupConfigurationUpdates
    WorkGroupConfigurationUpdates,
    workGroupConfigurationUpdates,
    wgcuBytesScannedCutoffPerQuery,
    wgcuResultConfigurationUpdates,
    wgcuPublishCloudWatchMetricsEnabled,
    wgcuEnforceWorkGroupConfiguration,
    wgcuRequesterPaysEnabled,
    wgcuRemoveBytesScannedCutoffPerQuery,
    wgcuEngineVersion,

    -- ** WorkGroupSummary
    WorkGroupSummary,
    workGroupSummary,
    wgsCreationTime,
    wgsState,
    wgsName,
    wgsEngineVersion,
    wgsDescription,
  )
where

import Network.AWS.Athena.BatchGetNamedQuery
import Network.AWS.Athena.BatchGetQueryExecution
import Network.AWS.Athena.CreateDataCatalog
import Network.AWS.Athena.CreateNamedQuery
import Network.AWS.Athena.CreateWorkGroup
import Network.AWS.Athena.DeleteDataCatalog
import Network.AWS.Athena.DeleteNamedQuery
import Network.AWS.Athena.DeleteWorkGroup
import Network.AWS.Athena.GetDataCatalog
import Network.AWS.Athena.GetDatabase
import Network.AWS.Athena.GetNamedQuery
import Network.AWS.Athena.GetQueryExecution
import Network.AWS.Athena.GetQueryResults
import Network.AWS.Athena.GetTableMetadata
import Network.AWS.Athena.GetWorkGroup
import Network.AWS.Athena.ListDataCatalogs
import Network.AWS.Athena.ListDatabases
import Network.AWS.Athena.ListEngineVersions
import Network.AWS.Athena.ListNamedQueries
import Network.AWS.Athena.ListQueryExecutions
import Network.AWS.Athena.ListTableMetadata
import Network.AWS.Athena.ListTagsForResource
import Network.AWS.Athena.ListWorkGroups
import Network.AWS.Athena.StartQueryExecution
import Network.AWS.Athena.StopQueryExecution
import Network.AWS.Athena.TagResource
import Network.AWS.Athena.Types
import Network.AWS.Athena.UntagResource
import Network.AWS.Athena.UpdateDataCatalog
import Network.AWS.Athena.UpdateWorkGroup
import Network.AWS.Athena.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Athena'.

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
