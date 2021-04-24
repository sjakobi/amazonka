{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDBStreams.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDBStreams.Types
  ( -- * Service Configuration
    dynamoDBStreams,

    -- * Errors
    _TrimmedDataAccessException,
    _ExpiredIteratorException,
    _InternalServerError,
    _LimitExceededException,
    _ResourceNotFoundException,

    -- * KeyType
    KeyType (..),

    -- * OperationType
    OperationType (..),

    -- * ShardIteratorType
    ShardIteratorType (..),

    -- * StreamStatus
    StreamStatus (..),

    -- * StreamViewType
    StreamViewType (..),

    -- * AttributeValue
    AttributeValue (..),
    attributeValue,
    avBS,
    avBOOL,
    avN,
    avS,
    avNULL,
    avM,
    avB,
    avL,
    avSS,
    avNS,

    -- * Identity
    Identity (..),
    identity,
    iPrincipalId,
    iType,

    -- * KeySchemaElement
    KeySchemaElement (..),
    keySchemaElement,
    kseAttributeName,
    kseKeyType,

    -- * Record
    Record (..),
    record,
    rUserIdentity,
    rEventId,
    rEventSource,
    rEventName,
    rEventVersion,
    rDynamodb,
    rAwsRegion,

    -- * SequenceNumberRange
    SequenceNumberRange (..),
    sequenceNumberRange,
    snrStartingSequenceNumber,
    snrEndingSequenceNumber,

    -- * Shard
    Shard (..),
    shard,
    sShardId,
    sSequenceNumberRange,
    sParentShardId,

    -- * Stream
    Stream (..),
    stream,
    sTableName,
    sStreamARN,
    sStreamLabel,

    -- * StreamDescription
    StreamDescription (..),
    streamDescription,
    sdLastEvaluatedShardId,
    sdStreamViewType,
    sdTableName,
    sdCreationRequestDateTime,
    sdKeySchema,
    sdStreamStatus,
    sdShards,
    sdStreamARN,
    sdStreamLabel,

    -- * StreamRecord
    StreamRecord (..),
    streamRecord,
    srSequenceNumber,
    srStreamViewType,
    srKeys,
    srSizeBytes,
    srNewImage,
    srOldImage,
    srApproximateCreationDateTime,
  )
where

import Network.AWS.DynamoDBStreams.Types.AttributeValue
import Network.AWS.DynamoDBStreams.Types.Identity
import Network.AWS.DynamoDBStreams.Types.KeySchemaElement
import Network.AWS.DynamoDBStreams.Types.KeyType
import Network.AWS.DynamoDBStreams.Types.OperationType
import Network.AWS.DynamoDBStreams.Types.Record
import Network.AWS.DynamoDBStreams.Types.SequenceNumberRange
import Network.AWS.DynamoDBStreams.Types.Shard
import Network.AWS.DynamoDBStreams.Types.ShardIteratorType
import Network.AWS.DynamoDBStreams.Types.Stream
import Network.AWS.DynamoDBStreams.Types.StreamDescription
import Network.AWS.DynamoDBStreams.Types.StreamRecord
import Network.AWS.DynamoDBStreams.Types.StreamStatus
import Network.AWS.DynamoDBStreams.Types.StreamViewType
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2012-08-10@ of the Amazon DynamoDB Streams SDK configuration.
dynamoDBStreams :: Service
dynamoDBStreams =
  Service
    { _svcAbbrev = "DynamoDBStreams",
      _svcSigner = v4,
      _svcPrefix = "streams.dynamodb",
      _svcVersion = "2012-08-10",
      _svcEndpoint = defaultEndpoint dynamoDBStreams,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "DynamoDBStreams",
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

-- | The operation attempted to read past the oldest stream record in a shard.
--
--
-- In DynamoDB Streams, there is a 24 hour limit on data retention. Stream records whose age exceeds this limit are subject to removal (trimming) from the stream. You might receive a TrimmedDataAccessException if:
--
--     * You request a shard iterator with a sequence number older than the trim point (24 hours).
--
--     * You obtain a shard iterator, but before you use the iterator in a @GetRecords@ request, a stream record in the shard exceeds the 24 hour period and is trimmed. This causes the iterator to access a record that no longer exists.
_TrimmedDataAccessException :: AsError a => Getting (First ServiceError) a ServiceError
_TrimmedDataAccessException =
  _MatchServiceError
    dynamoDBStreams
    "TrimmedDataAccessException"

-- | The shard iterator has expired and can no longer be used to retrieve stream records. A shard iterator expires 15 minutes after it is retrieved using the @GetShardIterator@ action.
_ExpiredIteratorException :: AsError a => Getting (First ServiceError) a ServiceError
_ExpiredIteratorException =
  _MatchServiceError
    dynamoDBStreams
    "ExpiredIteratorException"

-- | An error occurred on the server side.
_InternalServerError :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerError =
  _MatchServiceError
    dynamoDBStreams
    "InternalServerError"

-- | There is no limit to the number of daily on-demand backups that can be taken.
--
--
-- Up to 50 simultaneous table operations are allowed per account. These operations include @CreateTable@ , @UpdateTable@ , @DeleteTable@ ,@UpdateTimeToLive@ , @RestoreTableFromBackup@ , and @RestoreTableToPointInTime@ .
--
-- The only exception is when you are creating a table with one or more secondary indexes. You can have up to 25 such requests running at a time; however, if the table or index specifications are complex, DynamoDB might temporarily reduce the number of concurrent operations.
--
-- There is a soft account quota of 256 tables.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    dynamoDBStreams
    "LimitExceededException"

-- | The operation tried to access a nonexistent table or index. The resource might not be specified correctly, or its status might not be @ACTIVE@ .
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    dynamoDBStreams
    "ResourceNotFoundException"
