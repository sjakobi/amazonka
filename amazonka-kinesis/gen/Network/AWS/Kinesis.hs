{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Kinesis
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Amazon Kinesis Data Streams Service API Reference__
--
-- Amazon Kinesis Data Streams is a managed service that scales elastically for real-time processing of streaming big data.
module Network.AWS.Kinesis
  ( -- * Service Configuration
    kinesis,

    -- * Errors
    -- $errors

    -- ** KMSThrottlingException
    _KMSThrottlingException,

    -- ** ExpiredNextTokenException
    _ExpiredNextTokenException,

    -- ** KMSInvalidStateException
    _KMSInvalidStateException,

    -- ** KMSNotFoundException
    _KMSNotFoundException,

    -- ** KMSOptInRequired
    _KMSOptInRequired,

    -- ** ExpiredIteratorException
    _ExpiredIteratorException,

    -- ** ResourceInUseException
    _ResourceInUseException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** KMSAccessDeniedException
    _KMSAccessDeniedException,

    -- ** ProvisionedThroughputExceededException
    _ProvisionedThroughputExceededException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** InternalFailureException
    _InternalFailureException,

    -- ** InvalidArgumentException
    _InvalidArgumentException,

    -- ** KMSDisabledException
    _KMSDisabledException,

    -- * Waiters
    -- $waiters

    -- ** StreamExists
    streamExists,

    -- ** StreamNotExists
    streamNotExists,

    -- * Operations
    -- $operations

    -- ** SubscribeToShard
    module Network.AWS.Kinesis.SubscribeToShard,

    -- ** AddTagsToStream
    module Network.AWS.Kinesis.AddTagsToStream,

    -- ** ListTagsForStream
    module Network.AWS.Kinesis.ListTagsForStream,

    -- ** IncreaseStreamRetentionPeriod
    module Network.AWS.Kinesis.IncreaseStreamRetentionPeriod,

    -- ** DisableEnhancedMonitoring
    module Network.AWS.Kinesis.DisableEnhancedMonitoring,

    -- ** SplitShard
    module Network.AWS.Kinesis.SplitShard,

    -- ** ListStreamConsumers (Paginated)
    module Network.AWS.Kinesis.ListStreamConsumers,

    -- ** DescribeLimits
    module Network.AWS.Kinesis.DescribeLimits,

    -- ** StopStreamEncryption
    module Network.AWS.Kinesis.StopStreamEncryption,

    -- ** RegisterStreamConsumer
    module Network.AWS.Kinesis.RegisterStreamConsumer,

    -- ** StartStreamEncryption
    module Network.AWS.Kinesis.StartStreamEncryption,

    -- ** EnableEnhancedMonitoring
    module Network.AWS.Kinesis.EnableEnhancedMonitoring,

    -- ** GetRecords
    module Network.AWS.Kinesis.GetRecords,

    -- ** GetShardIterator
    module Network.AWS.Kinesis.GetShardIterator,

    -- ** ListShards (Paginated)
    module Network.AWS.Kinesis.ListShards,

    -- ** DeleteStream
    module Network.AWS.Kinesis.DeleteStream,

    -- ** RemoveTagsFromStream
    module Network.AWS.Kinesis.RemoveTagsFromStream,

    -- ** DescribeStreamSummary
    module Network.AWS.Kinesis.DescribeStreamSummary,

    -- ** DeregisterStreamConsumer
    module Network.AWS.Kinesis.DeregisterStreamConsumer,

    -- ** PutRecords
    module Network.AWS.Kinesis.PutRecords,

    -- ** MergeShards
    module Network.AWS.Kinesis.MergeShards,

    -- ** DescribeStreamConsumer
    module Network.AWS.Kinesis.DescribeStreamConsumer,

    -- ** DecreaseStreamRetentionPeriod
    module Network.AWS.Kinesis.DecreaseStreamRetentionPeriod,

    -- ** PutRecord
    module Network.AWS.Kinesis.PutRecord,

    -- ** DescribeStream (Paginated)
    module Network.AWS.Kinesis.DescribeStream,

    -- ** UpdateShardCount
    module Network.AWS.Kinesis.UpdateShardCount,

    -- ** CreateStream
    module Network.AWS.Kinesis.CreateStream,

    -- ** ListStreams (Paginated)
    module Network.AWS.Kinesis.ListStreams,

    -- * Types

    -- ** ConsumerStatus
    ConsumerStatus (..),

    -- ** EncryptionType
    EncryptionType (..),

    -- ** MetricsName
    MetricsName (..),

    -- ** ScalingType
    ScalingType (..),

    -- ** ShardFilterType
    ShardFilterType (..),

    -- ** ShardIteratorType
    ShardIteratorType (..),

    -- ** StreamStatus
    StreamStatus (..),

    -- ** ChildShard
    ChildShard,
    childShard,
    csShardId,
    csParentShards,
    csHashKeyRange,

    -- ** Consumer
    Consumer,
    consumer,
    cConsumerName,
    cConsumerARN,
    cConsumerStatus,
    cConsumerCreationTimestamp,

    -- ** ConsumerDescription
    ConsumerDescription,
    consumerDescription,
    cdConsumerName,
    cdConsumerARN,
    cdConsumerStatus,
    cdConsumerCreationTimestamp,
    cdStreamARN,

    -- ** EnhancedMetrics
    EnhancedMetrics,
    enhancedMetrics,
    emShardLevelMetrics,

    -- ** EnhancedMonitoringOutput
    EnhancedMonitoringOutput,
    enhancedMonitoringOutput,
    emoCurrentShardLevelMetrics,
    emoStreamName,
    emoDesiredShardLevelMetrics,

    -- ** HashKeyRange
    HashKeyRange,
    hashKeyRange,
    hkrStartingHashKey,
    hkrEndingHashKey,

    -- ** PutRecordsRequestEntry
    PutRecordsRequestEntry,
    putRecordsRequestEntry,
    prreExplicitHashKey,
    prreData,
    prrePartitionKey,

    -- ** PutRecordsResultEntry
    PutRecordsResultEntry,
    putRecordsResultEntry,
    prreSequenceNumber,
    prreShardId,
    prreErrorMessage,
    prreErrorCode,

    -- ** Record
    Record,
    record,
    rEncryptionType,
    rApproximateArrivalTimestamp,
    rSequenceNumber,
    rData,
    rPartitionKey,

    -- ** SequenceNumberRange
    SequenceNumberRange,
    sequenceNumberRange,
    snrEndingSequenceNumber,
    snrStartingSequenceNumber,

    -- ** Shard
    Shard,
    shard,
    sAdjacentParentShardId,
    sParentShardId,
    sShardId,
    sHashKeyRange,
    sSequenceNumberRange,

    -- ** ShardFilter
    ShardFilter,
    shardFilter,
    sfShardId,
    sfTimestamp,
    sfType,

    -- ** StartingPosition
    StartingPosition,
    startingPosition,
    spSequenceNumber,
    spTimestamp,
    spType,

    -- ** StreamDescription
    StreamDescription,
    streamDescription,
    sdEncryptionType,
    sdKeyId,
    sdStreamName,
    sdStreamARN,
    sdStreamStatus,
    sdShards,
    sdHasMoreShards,
    sdRetentionPeriodHours,
    sdStreamCreationTimestamp,
    sdEnhancedMonitoring,

    -- ** StreamDescriptionSummary
    StreamDescriptionSummary,
    streamDescriptionSummary,
    sdsEncryptionType,
    sdsConsumerCount,
    sdsKeyId,
    sdsStreamName,
    sdsStreamARN,
    sdsStreamStatus,
    sdsRetentionPeriodHours,
    sdsStreamCreationTimestamp,
    sdsEnhancedMonitoring,
    sdsOpenShardCount,

    -- ** SubscribeToShardEvent
    SubscribeToShardEvent,
    subscribeToShardEvent,
    stseChildShards,
    stseRecords,
    stseContinuationSequenceNumber,
    stseMillisBehindLatest,

    -- ** SubscribeToShardEventStream
    SubscribeToShardEventStream,
    subscribeToShardEventStream,
    stsesKMSThrottlingException,
    stsesKMSInvalidStateException,
    stsesKMSNotFoundException,
    stsesKMSOptInRequired,
    stsesResourceInUseException,
    stsesKMSAccessDeniedException,
    stsesResourceNotFoundException,
    stsesInternalFailureException,
    stsesKMSDisabledException,
    stsesSubscribeToShardEvent,

    -- ** Tag
    Tag,
    tag,
    tagValue,
    tagKey,
  )
where

import Network.AWS.Kinesis.AddTagsToStream
import Network.AWS.Kinesis.CreateStream
import Network.AWS.Kinesis.DecreaseStreamRetentionPeriod
import Network.AWS.Kinesis.DeleteStream
import Network.AWS.Kinesis.DeregisterStreamConsumer
import Network.AWS.Kinesis.DescribeLimits
import Network.AWS.Kinesis.DescribeStream
import Network.AWS.Kinesis.DescribeStreamConsumer
import Network.AWS.Kinesis.DescribeStreamSummary
import Network.AWS.Kinesis.DisableEnhancedMonitoring
import Network.AWS.Kinesis.EnableEnhancedMonitoring
import Network.AWS.Kinesis.GetRecords
import Network.AWS.Kinesis.GetShardIterator
import Network.AWS.Kinesis.IncreaseStreamRetentionPeriod
import Network.AWS.Kinesis.ListShards
import Network.AWS.Kinesis.ListStreamConsumers
import Network.AWS.Kinesis.ListStreams
import Network.AWS.Kinesis.ListTagsForStream
import Network.AWS.Kinesis.MergeShards
import Network.AWS.Kinesis.PutRecord
import Network.AWS.Kinesis.PutRecords
import Network.AWS.Kinesis.RegisterStreamConsumer
import Network.AWS.Kinesis.RemoveTagsFromStream
import Network.AWS.Kinesis.SplitShard
import Network.AWS.Kinesis.StartStreamEncryption
import Network.AWS.Kinesis.StopStreamEncryption
import Network.AWS.Kinesis.SubscribeToShard
import Network.AWS.Kinesis.Types
import Network.AWS.Kinesis.UpdateShardCount
import Network.AWS.Kinesis.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Kinesis'.

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
