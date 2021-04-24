{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MachineLearning
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Definition of the public APIs exposed by Amazon Machine Learning
module Network.AWS.MachineLearning
  ( -- * Service Configuration
    machineLearning,

    -- * Errors
    -- $errors

    -- ** PredictorNotMountedException
    _PredictorNotMountedException,

    -- ** TagLimitExceededException
    _TagLimitExceededException,

    -- ** InvalidInputException
    _InvalidInputException,

    -- ** InvalidTagException
    _InvalidTagException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** IdempotentParameterMismatchException
    _IdempotentParameterMismatchException,

    -- ** InternalServerException
    _InternalServerException,

    -- * Waiters
    -- $waiters

    -- ** MLModelAvailable
    mLModelAvailable,

    -- ** EvaluationAvailable
    evaluationAvailable,

    -- ** DataSourceAvailable
    dataSourceAvailable,

    -- ** BatchPredictionAvailable
    batchPredictionAvailable,

    -- * Operations
    -- $operations

    -- ** DeleteMLModel
    module Network.AWS.MachineLearning.DeleteMLModel,

    -- ** UpdateMLModel
    module Network.AWS.MachineLearning.UpdateMLModel,

    -- ** CreateDataSourceFromS3
    module Network.AWS.MachineLearning.CreateDataSourceFromS3,

    -- ** CreateDataSourceFromRedshift
    module Network.AWS.MachineLearning.CreateDataSourceFromRedshift,

    -- ** UpdateDataSource
    module Network.AWS.MachineLearning.UpdateDataSource,

    -- ** DescribeTags
    module Network.AWS.MachineLearning.DescribeTags,

    -- ** DeleteDataSource
    module Network.AWS.MachineLearning.DeleteDataSource,

    -- ** DescribeDataSources (Paginated)
    module Network.AWS.MachineLearning.DescribeDataSources,

    -- ** DescribeEvaluations (Paginated)
    module Network.AWS.MachineLearning.DescribeEvaluations,

    -- ** AddTags
    module Network.AWS.MachineLearning.AddTags,

    -- ** GetMLModel
    module Network.AWS.MachineLearning.GetMLModel,

    -- ** GetEvaluation
    module Network.AWS.MachineLearning.GetEvaluation,

    -- ** DeleteTags
    module Network.AWS.MachineLearning.DeleteTags,

    -- ** DeleteRealtimeEndpoint
    module Network.AWS.MachineLearning.DeleteRealtimeEndpoint,

    -- ** CreateDataSourceFromRDS
    module Network.AWS.MachineLearning.CreateDataSourceFromRDS,

    -- ** GetBatchPrediction
    module Network.AWS.MachineLearning.GetBatchPrediction,

    -- ** DescribeBatchPredictions (Paginated)
    module Network.AWS.MachineLearning.DescribeBatchPredictions,

    -- ** DeleteEvaluation
    module Network.AWS.MachineLearning.DeleteEvaluation,

    -- ** UpdateEvaluation
    module Network.AWS.MachineLearning.UpdateEvaluation,

    -- ** GetDataSource
    module Network.AWS.MachineLearning.GetDataSource,

    -- ** CreateRealtimeEndpoint
    module Network.AWS.MachineLearning.CreateRealtimeEndpoint,

    -- ** UpdateBatchPrediction
    module Network.AWS.MachineLearning.UpdateBatchPrediction,

    -- ** DeleteBatchPrediction
    module Network.AWS.MachineLearning.DeleteBatchPrediction,

    -- ** DescribeMLModels (Paginated)
    module Network.AWS.MachineLearning.DescribeMLModels,

    -- ** CreateBatchPrediction
    module Network.AWS.MachineLearning.CreateBatchPrediction,

    -- ** Predict
    module Network.AWS.MachineLearning.Predict,

    -- ** CreateMLModel
    module Network.AWS.MachineLearning.CreateMLModel,

    -- ** CreateEvaluation
    module Network.AWS.MachineLearning.CreateEvaluation,

    -- * Types

    -- ** Algorithm
    Algorithm (..),

    -- ** BatchPredictionFilterVariable
    BatchPredictionFilterVariable (..),

    -- ** DataSourceFilterVariable
    DataSourceFilterVariable (..),

    -- ** DetailsAttributes
    DetailsAttributes (..),

    -- ** EntityStatus
    EntityStatus (..),

    -- ** EvaluationFilterVariable
    EvaluationFilterVariable (..),

    -- ** MLModelFilterVariable
    MLModelFilterVariable (..),

    -- ** MLModelType
    MLModelType (..),

    -- ** RealtimeEndpointStatus
    RealtimeEndpointStatus (..),

    -- ** SortOrder
    SortOrder (..),

    -- ** TaggableResourceType
    TaggableResourceType (..),

    -- ** BatchPrediction
    BatchPrediction,
    batchPrediction,
    bpBatchPredictionId,
    bpStatus,
    bpStartedAt,
    bpOutputURI,
    bpMessage,
    bpCreatedAt,
    bpFinishedAt,
    bpCreatedByIAMUser,
    bpName,
    bpInvalidRecordCount,
    bpTotalRecordCount,
    bpBatchPredictionDataSourceId,
    bpMLModelId,
    bpInputDataLocationS3,
    bpComputeTime,
    bpLastUpdatedAt,

    -- ** DataSource
    DataSource,
    dataSource,
    dsStatus,
    dsStartedAt,
    dsDataRearrangement,
    dsRoleARN,
    dsRedshiftMetadata,
    dsMessage,
    dsDataSourceId,
    dsComputeStatistics,
    dsDataLocationS3,
    dsCreatedAt,
    dsNumberOfFiles,
    dsFinishedAt,
    dsCreatedByIAMUser,
    dsName,
    dsDataSizeInBytes,
    dsComputeTime,
    dsRDSMetadata,
    dsLastUpdatedAt,

    -- ** Evaluation
    Evaluation,
    evaluation,
    ePerformanceMetrics,
    eStatus,
    eStartedAt,
    eEvaluationDataSourceId,
    eMessage,
    eCreatedAt,
    eFinishedAt,
    eCreatedByIAMUser,
    eName,
    eEvaluationId,
    eMLModelId,
    eInputDataLocationS3,
    eComputeTime,
    eLastUpdatedAt,

    -- ** MLModel
    MLModel,
    mLModel,
    mlmAlgorithm,
    mlmStatus,
    mlmStartedAt,
    mlmMessage,
    mlmEndpointInfo,
    mlmScoreThresholdLastUpdatedAt,
    mlmCreatedAt,
    mlmTrainingParameters,
    mlmFinishedAt,
    mlmScoreThreshold,
    mlmCreatedByIAMUser,
    mlmName,
    mlmMLModelType,
    mlmMLModelId,
    mlmSizeInBytes,
    mlmInputDataLocationS3,
    mlmComputeTime,
    mlmTrainingDataSourceId,
    mlmLastUpdatedAt,

    -- ** PerformanceMetrics
    PerformanceMetrics,
    performanceMetrics,
    pmProperties,

    -- ** Prediction
    Prediction,
    prediction,
    pPredictedValue,
    pPredictedScores,
    pPredictedLabel,
    pDetails,

    -- ** RDSDataSpec
    RDSDataSpec,
    rdsDataSpec,
    rdsdsDataRearrangement,
    rdsdsDataSchema,
    rdsdsDataSchemaURI,
    rdsdsDatabaseInformation,
    rdsdsSelectSqlQuery,
    rdsdsDatabaseCredentials,
    rdsdsS3StagingLocation,
    rdsdsResourceRole,
    rdsdsServiceRole,
    rdsdsSubnetId,
    rdsdsSecurityGroupIds,

    -- ** RDSDatabase
    RDSDatabase,
    rdsDatabase,
    rdsdInstanceIdentifier,
    rdsdDatabaseName,

    -- ** RDSDatabaseCredentials
    RDSDatabaseCredentials,
    rdsDatabaseCredentials,
    rdsdcUsername,
    rdsdcPassword,

    -- ** RDSMetadata
    RDSMetadata,
    rdsMetadata,
    rdsmDataPipelineId,
    rdsmSelectSqlQuery,
    rdsmServiceRole,
    rdsmResourceRole,
    rdsmDatabaseUserName,
    rdsmDatabase,

    -- ** RealtimeEndpointInfo
    RealtimeEndpointInfo,
    realtimeEndpointInfo,
    reiCreatedAt,
    reiPeakRequestsPerSecond,
    reiEndpointStatus,
    reiEndpointURL,

    -- ** RedshiftDataSpec
    RedshiftDataSpec,
    redshiftDataSpec,
    rDataRearrangement,
    rDataSchema,
    rDataSchemaURI,
    rDatabaseInformation,
    rSelectSqlQuery,
    rDatabaseCredentials,
    rS3StagingLocation,

    -- ** RedshiftDatabase
    RedshiftDatabase,
    redshiftDatabase,
    rdDatabaseName,
    rdClusterIdentifier,

    -- ** RedshiftDatabaseCredentials
    RedshiftDatabaseCredentials,
    redshiftDatabaseCredentials,
    rdcUsername,
    rdcPassword,

    -- ** RedshiftMetadata
    RedshiftMetadata,
    redshiftMetadata,
    rmSelectSqlQuery,
    rmRedshiftDatabase,
    rmDatabaseUserName,

    -- ** S3DataSpec
    S3DataSpec,
    s3DataSpec,
    sdsDataRearrangement,
    sdsDataSchema,
    sdsDataSchemaLocationS3,
    sdsDataLocationS3,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,
  )
where

import Network.AWS.MachineLearning.AddTags
import Network.AWS.MachineLearning.CreateBatchPrediction
import Network.AWS.MachineLearning.CreateDataSourceFromRDS
import Network.AWS.MachineLearning.CreateDataSourceFromRedshift
import Network.AWS.MachineLearning.CreateDataSourceFromS3
import Network.AWS.MachineLearning.CreateEvaluation
import Network.AWS.MachineLearning.CreateMLModel
import Network.AWS.MachineLearning.CreateRealtimeEndpoint
import Network.AWS.MachineLearning.DeleteBatchPrediction
import Network.AWS.MachineLearning.DeleteDataSource
import Network.AWS.MachineLearning.DeleteEvaluation
import Network.AWS.MachineLearning.DeleteMLModel
import Network.AWS.MachineLearning.DeleteRealtimeEndpoint
import Network.AWS.MachineLearning.DeleteTags
import Network.AWS.MachineLearning.DescribeBatchPredictions
import Network.AWS.MachineLearning.DescribeDataSources
import Network.AWS.MachineLearning.DescribeEvaluations
import Network.AWS.MachineLearning.DescribeMLModels
import Network.AWS.MachineLearning.DescribeTags
import Network.AWS.MachineLearning.GetBatchPrediction
import Network.AWS.MachineLearning.GetDataSource
import Network.AWS.MachineLearning.GetEvaluation
import Network.AWS.MachineLearning.GetMLModel
import Network.AWS.MachineLearning.Predict
import Network.AWS.MachineLearning.Types
import Network.AWS.MachineLearning.UpdateBatchPrediction
import Network.AWS.MachineLearning.UpdateDataSource
import Network.AWS.MachineLearning.UpdateEvaluation
import Network.AWS.MachineLearning.UpdateMLModel
import Network.AWS.MachineLearning.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'MachineLearning'.

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
