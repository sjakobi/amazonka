{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MachineLearning.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MachineLearning.Types
  ( -- * Service Configuration
    machineLearning,

    -- * Errors
    _PredictorNotMountedException,
    _TagLimitExceededException,
    _InvalidInputException,
    _InvalidTagException,
    _LimitExceededException,
    _ResourceNotFoundException,
    _IdempotentParameterMismatchException,
    _InternalServerException,

    -- * Algorithm
    Algorithm (..),

    -- * BatchPredictionFilterVariable
    BatchPredictionFilterVariable (..),

    -- * DataSourceFilterVariable
    DataSourceFilterVariable (..),

    -- * DetailsAttributes
    DetailsAttributes (..),

    -- * EntityStatus
    EntityStatus (..),

    -- * EvaluationFilterVariable
    EvaluationFilterVariable (..),

    -- * MLModelFilterVariable
    MLModelFilterVariable (..),

    -- * MLModelType
    MLModelType (..),

    -- * RealtimeEndpointStatus
    RealtimeEndpointStatus (..),

    -- * SortOrder
    SortOrder (..),

    -- * TaggableResourceType
    TaggableResourceType (..),

    -- * BatchPrediction
    BatchPrediction (..),
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

    -- * DataSource
    DataSource (..),
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

    -- * Evaluation
    Evaluation (..),
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

    -- * MLModel
    MLModel (..),
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

    -- * PerformanceMetrics
    PerformanceMetrics (..),
    performanceMetrics,
    pmProperties,

    -- * Prediction
    Prediction (..),
    prediction,
    pPredictedValue,
    pPredictedScores,
    pPredictedLabel,
    pDetails,

    -- * RDSDataSpec
    RDSDataSpec (..),
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

    -- * RDSDatabase
    RDSDatabase (..),
    rdsDatabase,
    rdsdInstanceIdentifier,
    rdsdDatabaseName,

    -- * RDSDatabaseCredentials
    RDSDatabaseCredentials (..),
    rdsDatabaseCredentials,
    rdsdcUsername,
    rdsdcPassword,

    -- * RDSMetadata
    RDSMetadata (..),
    rdsMetadata,
    rdsmDataPipelineId,
    rdsmSelectSqlQuery,
    rdsmServiceRole,
    rdsmResourceRole,
    rdsmDatabaseUserName,
    rdsmDatabase,

    -- * RealtimeEndpointInfo
    RealtimeEndpointInfo (..),
    realtimeEndpointInfo,
    reiCreatedAt,
    reiPeakRequestsPerSecond,
    reiEndpointStatus,
    reiEndpointURL,

    -- * RedshiftDataSpec
    RedshiftDataSpec (..),
    redshiftDataSpec,
    rDataRearrangement,
    rDataSchema,
    rDataSchemaURI,
    rDatabaseInformation,
    rSelectSqlQuery,
    rDatabaseCredentials,
    rS3StagingLocation,

    -- * RedshiftDatabase
    RedshiftDatabase (..),
    redshiftDatabase,
    rdDatabaseName,
    rdClusterIdentifier,

    -- * RedshiftDatabaseCredentials
    RedshiftDatabaseCredentials (..),
    redshiftDatabaseCredentials,
    rdcUsername,
    rdcPassword,

    -- * RedshiftMetadata
    RedshiftMetadata (..),
    redshiftMetadata,
    rmSelectSqlQuery,
    rmRedshiftDatabase,
    rmDatabaseUserName,

    -- * S3DataSpec
    S3DataSpec (..),
    s3DataSpec,
    sdsDataRearrangement,
    sdsDataSchema,
    sdsDataSchemaLocationS3,
    sdsDataLocationS3,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,
  )
where

import Network.AWS.Lens
import Network.AWS.MachineLearning.Types.Algorithm
import Network.AWS.MachineLearning.Types.BatchPrediction
import Network.AWS.MachineLearning.Types.BatchPredictionFilterVariable
import Network.AWS.MachineLearning.Types.DataSource
import Network.AWS.MachineLearning.Types.DataSourceFilterVariable
import Network.AWS.MachineLearning.Types.DetailsAttributes
import Network.AWS.MachineLearning.Types.EntityStatus
import Network.AWS.MachineLearning.Types.Evaluation
import Network.AWS.MachineLearning.Types.EvaluationFilterVariable
import Network.AWS.MachineLearning.Types.MLModel
import Network.AWS.MachineLearning.Types.MLModelFilterVariable
import Network.AWS.MachineLearning.Types.MLModelType
import Network.AWS.MachineLearning.Types.PerformanceMetrics
import Network.AWS.MachineLearning.Types.Prediction
import Network.AWS.MachineLearning.Types.RDSDataSpec
import Network.AWS.MachineLearning.Types.RDSDatabase
import Network.AWS.MachineLearning.Types.RDSDatabaseCredentials
import Network.AWS.MachineLearning.Types.RDSMetadata
import Network.AWS.MachineLearning.Types.RealtimeEndpointInfo
import Network.AWS.MachineLearning.Types.RealtimeEndpointStatus
import Network.AWS.MachineLearning.Types.RedshiftDataSpec
import Network.AWS.MachineLearning.Types.RedshiftDatabase
import Network.AWS.MachineLearning.Types.RedshiftDatabaseCredentials
import Network.AWS.MachineLearning.Types.RedshiftMetadata
import Network.AWS.MachineLearning.Types.S3DataSpec
import Network.AWS.MachineLearning.Types.SortOrder
import Network.AWS.MachineLearning.Types.Tag
import Network.AWS.MachineLearning.Types.TaggableResourceType
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2014-12-12@ of the Amazon Machine Learning SDK configuration.
machineLearning :: Service
machineLearning =
  Service
    { _svcAbbrev = "MachineLearning",
      _svcSigner = v4,
      _svcPrefix = "machinelearning",
      _svcVersion = "2014-12-12",
      _svcEndpoint = defaultEndpoint machineLearning,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "MachineLearning",
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

-- | The exception is thrown when a predict request is made to an unmounted @MLModel@ .
_PredictorNotMountedException :: AsError a => Getting (First ServiceError) a ServiceError
_PredictorNotMountedException =
  _MatchServiceError
    machineLearning
    "PredictorNotMountedException"
    . hasStatus 400

-- | Prism for TagLimitExceededException' errors.
_TagLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_TagLimitExceededException =
  _MatchServiceError
    machineLearning
    "TagLimitExceededException"

-- | An error on the client occurred. Typically, the cause is an invalid input value.
_InvalidInputException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidInputException =
  _MatchServiceError
    machineLearning
    "InvalidInputException"
    . hasStatus 400

-- | Prism for InvalidTagException' errors.
_InvalidTagException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTagException =
  _MatchServiceError
    machineLearning
    "InvalidTagException"

-- | The subscriber exceeded the maximum number of operations. This exception can occur when listing objects such as @DataSource@ .
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    machineLearning
    "LimitExceededException"
    . hasStatus 417

-- | A specified resource cannot be located.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    machineLearning
    "ResourceNotFoundException"
    . hasStatus 404

-- | A second request to use or change an object was not allowed. This can result from retrying a request using a parameter that was not present in the original request.
_IdempotentParameterMismatchException :: AsError a => Getting (First ServiceError) a ServiceError
_IdempotentParameterMismatchException =
  _MatchServiceError
    machineLearning
    "IdempotentParameterMismatchException"
    . hasStatus 400

-- | An error on the server occurred when trying to process a request.
_InternalServerException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerException =
  _MatchServiceError
    machineLearning
    "InternalServerException"
    . hasStatus 500
