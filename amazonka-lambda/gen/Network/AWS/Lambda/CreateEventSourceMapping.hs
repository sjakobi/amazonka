{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.CreateEventSourceMapping
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a mapping between an event source and an AWS Lambda function. Lambda reads items from the event source and triggers the function.
--
--
-- For details about each event source type, see the following topics.
--
--     * <https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html Using AWS Lambda with Amazon DynamoDB>
--
--     * <https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html Using AWS Lambda with Amazon Kinesis>
--
--     * <https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html Using AWS Lambda with Amazon SQS>
--
--     * <https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html Using AWS Lambda with Amazon MQ>
--
--     * <https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html Using AWS Lambda with Amazon MSK>
--
--     * <https://docs.aws.amazon.com/lambda/latest/dg/kafka-smaa.html Using AWS Lambda with Self-Managed Apache Kafka>
--
--
--
-- The following error handling options are only available for stream sources (DynamoDB and Kinesis):
--
--     * @BisectBatchOnFunctionError@ - If the function returns an error, split the batch in two and retry.
--
--     * @DestinationConfig@ - Send discarded records to an Amazon SQS queue or Amazon SNS topic.
--
--     * @MaximumRecordAgeInSeconds@ - Discard records older than the specified age. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires
--
--     * @MaximumRetryAttempts@ - Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.
--
--     * @ParallelizationFactor@ - Process multiple batches from each shard concurrently.
module Network.AWS.Lambda.CreateEventSourceMapping
  ( -- * Creating a Request
    createEventSourceMapping,
    CreateEventSourceMapping,

    -- * Request Lenses
    cesmEventSourceARN,
    cesmEnabled,
    cesmTopics,
    cesmMaximumRecordAgeInSeconds,
    cesmFunctionResponseTypes,
    cesmQueues,
    cesmTumblingWindowInSeconds,
    cesmStartingPositionTimestamp,
    cesmMaximumBatchingWindowInSeconds,
    cesmBatchSize,
    cesmStartingPosition,
    cesmDestinationConfig,
    cesmMaximumRetryAttempts,
    cesmParallelizationFactor,
    cesmSelfManagedEventSource,
    cesmBisectBatchOnFunctionError,
    cesmSourceAccessConfigurations,
    cesmFunctionName,

    -- * Destructuring the Response
    eventSourceMappingConfiguration,
    EventSourceMappingConfiguration,

    -- * Response Lenses
    esmcEventSourceARN,
    esmcStateTransitionReason,
    esmcLastProcessingResult,
    esmcTopics,
    esmcMaximumRecordAgeInSeconds,
    esmcFunctionResponseTypes,
    esmcQueues,
    esmcTumblingWindowInSeconds,
    esmcFunctionARN,
    esmcStartingPositionTimestamp,
    esmcState,
    esmcMaximumBatchingWindowInSeconds,
    esmcBatchSize,
    esmcStartingPosition,
    esmcDestinationConfig,
    esmcMaximumRetryAttempts,
    esmcLastModified,
    esmcParallelizationFactor,
    esmcSelfManagedEventSource,
    esmcUUId,
    esmcBisectBatchOnFunctionError,
    esmcSourceAccessConfigurations,
  )
where

import Network.AWS.Lambda.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createEventSourceMapping' smart constructor.
data CreateEventSourceMapping = CreateEventSourceMapping'
  { _cesmEventSourceARN ::
      !(Maybe Text),
    _cesmEnabled ::
      !(Maybe Bool),
    _cesmTopics ::
      !(Maybe (List1 Text)),
    _cesmMaximumRecordAgeInSeconds ::
      !(Maybe Int),
    _cesmFunctionResponseTypes ::
      !( Maybe
           ( List1
               FunctionResponseType
           )
       ),
    _cesmQueues ::
      !(Maybe (List1 Text)),
    _cesmTumblingWindowInSeconds ::
      !(Maybe Nat),
    _cesmStartingPositionTimestamp ::
      !(Maybe POSIX),
    _cesmMaximumBatchingWindowInSeconds ::
      !(Maybe Nat),
    _cesmBatchSize ::
      !(Maybe Nat),
    _cesmStartingPosition ::
      !( Maybe
           EventSourcePosition
       ),
    _cesmDestinationConfig ::
      !( Maybe
           DestinationConfig
       ),
    _cesmMaximumRetryAttempts ::
      !(Maybe Int),
    _cesmParallelizationFactor ::
      !(Maybe Nat),
    _cesmSelfManagedEventSource ::
      !( Maybe
           SelfManagedEventSource
       ),
    _cesmBisectBatchOnFunctionError ::
      !(Maybe Bool),
    _cesmSourceAccessConfigurations ::
      !( Maybe
           [SourceAccessConfiguration]
       ),
    _cesmFunctionName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateEventSourceMapping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cesmEventSourceARN' - The Amazon Resource Name (ARN) of the event source.     * __Amazon Kinesis__ - The ARN of the data stream or a stream consumer.     * __Amazon DynamoDB Streams__ - The ARN of the stream.     * __Amazon Simple Queue Service__ - The ARN of the queue.     * __Amazon Managed Streaming for Apache Kafka__ - The ARN of the cluster.
--
-- * 'cesmEnabled' - If true, the event source mapping is active. Set to false to pause polling and invocation.
--
-- * 'cesmTopics' - The name of the Kafka topic.
--
-- * 'cesmMaximumRecordAgeInSeconds' - (Streams) Discard records older than the specified age. The default value is infinite (-1).
--
-- * 'cesmFunctionResponseTypes' - (Streams) A list of current response type enums applied to the event source mapping.
--
-- * 'cesmQueues' - (MQ) The name of the Amazon MQ broker destination queue to consume.
--
-- * 'cesmTumblingWindowInSeconds' - (Streams) The duration in seconds of a processing window. The range is between 1 second up to 900 seconds.
--
-- * 'cesmStartingPositionTimestamp' - With @StartingPosition@ set to @AT_TIMESTAMP@ , the time from which to start reading.
--
-- * 'cesmMaximumBatchingWindowInSeconds' - (Streams and SQS standard queues) The maximum amount of time to gather records before invoking the function, in seconds.
--
-- * 'cesmBatchSize' - The maximum number of items to retrieve in a single batch.     * __Amazon Kinesis__ - Default 100. Max 10,000.     * __Amazon DynamoDB Streams__ - Default 100. Max 1,000.     * __Amazon Simple Queue Service__ - Default 10. For standard queues the max is 10,000. For FIFO queues the max is 10.     * __Amazon Managed Streaming for Apache Kafka__ - Default 100. Max 10,000.     * __Self-Managed Apache Kafka__ - Default 100. Max 10,000.
--
-- * 'cesmStartingPosition' - The position in a stream from which to start reading. Required for Amazon Kinesis, Amazon DynamoDB, and Amazon MSK Streams sources. @AT_TIMESTAMP@ is only supported for Amazon Kinesis streams.
--
-- * 'cesmDestinationConfig' - (Streams) An Amazon SQS queue or Amazon SNS topic destination for discarded records.
--
-- * 'cesmMaximumRetryAttempts' - (Streams) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records will be retried until the record expires.
--
-- * 'cesmParallelizationFactor' - (Streams) The number of batches to process from each shard concurrently.
--
-- * 'cesmSelfManagedEventSource' - The Self-Managed Apache Kafka cluster to send records.
--
-- * 'cesmBisectBatchOnFunctionError' - (Streams) If the function returns an error, split the batch in two and retry.
--
-- * 'cesmSourceAccessConfigurations' - An array of the authentication protocol, or the VPC components to secure your event source.
--
-- * 'cesmFunctionName' - The name of the Lambda function. __Name formats__      * __Function name__ - @MyFunction@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:MyFunction@ .     * __Version or Alias ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD@ .     * __Partial ARN__ - @123456789012:function:MyFunction@ . The length constraint applies only to the full ARN. If you specify only the function name, it's limited to 64 characters in length.
createEventSourceMapping ::
  -- | 'cesmFunctionName'
  Text ->
  CreateEventSourceMapping
createEventSourceMapping pFunctionName_ =
  CreateEventSourceMapping'
    { _cesmEventSourceARN =
        Nothing,
      _cesmEnabled = Nothing,
      _cesmTopics = Nothing,
      _cesmMaximumRecordAgeInSeconds = Nothing,
      _cesmFunctionResponseTypes = Nothing,
      _cesmQueues = Nothing,
      _cesmTumblingWindowInSeconds = Nothing,
      _cesmStartingPositionTimestamp = Nothing,
      _cesmMaximumBatchingWindowInSeconds = Nothing,
      _cesmBatchSize = Nothing,
      _cesmStartingPosition = Nothing,
      _cesmDestinationConfig = Nothing,
      _cesmMaximumRetryAttempts = Nothing,
      _cesmParallelizationFactor = Nothing,
      _cesmSelfManagedEventSource = Nothing,
      _cesmBisectBatchOnFunctionError = Nothing,
      _cesmSourceAccessConfigurations = Nothing,
      _cesmFunctionName = pFunctionName_
    }

-- | The Amazon Resource Name (ARN) of the event source.     * __Amazon Kinesis__ - The ARN of the data stream or a stream consumer.     * __Amazon DynamoDB Streams__ - The ARN of the stream.     * __Amazon Simple Queue Service__ - The ARN of the queue.     * __Amazon Managed Streaming for Apache Kafka__ - The ARN of the cluster.
cesmEventSourceARN :: Lens' CreateEventSourceMapping (Maybe Text)
cesmEventSourceARN = lens _cesmEventSourceARN (\s a -> s {_cesmEventSourceARN = a})

-- | If true, the event source mapping is active. Set to false to pause polling and invocation.
cesmEnabled :: Lens' CreateEventSourceMapping (Maybe Bool)
cesmEnabled = lens _cesmEnabled (\s a -> s {_cesmEnabled = a})

-- | The name of the Kafka topic.
cesmTopics :: Lens' CreateEventSourceMapping (Maybe (NonEmpty Text))
cesmTopics = lens _cesmTopics (\s a -> s {_cesmTopics = a}) . mapping _List1

-- | (Streams) Discard records older than the specified age. The default value is infinite (-1).
cesmMaximumRecordAgeInSeconds :: Lens' CreateEventSourceMapping (Maybe Int)
cesmMaximumRecordAgeInSeconds = lens _cesmMaximumRecordAgeInSeconds (\s a -> s {_cesmMaximumRecordAgeInSeconds = a})

-- | (Streams) A list of current response type enums applied to the event source mapping.
cesmFunctionResponseTypes :: Lens' CreateEventSourceMapping (Maybe (NonEmpty FunctionResponseType))
cesmFunctionResponseTypes = lens _cesmFunctionResponseTypes (\s a -> s {_cesmFunctionResponseTypes = a}) . mapping _List1

-- | (MQ) The name of the Amazon MQ broker destination queue to consume.
cesmQueues :: Lens' CreateEventSourceMapping (Maybe (NonEmpty Text))
cesmQueues = lens _cesmQueues (\s a -> s {_cesmQueues = a}) . mapping _List1

-- | (Streams) The duration in seconds of a processing window. The range is between 1 second up to 900 seconds.
cesmTumblingWindowInSeconds :: Lens' CreateEventSourceMapping (Maybe Natural)
cesmTumblingWindowInSeconds = lens _cesmTumblingWindowInSeconds (\s a -> s {_cesmTumblingWindowInSeconds = a}) . mapping _Nat

-- | With @StartingPosition@ set to @AT_TIMESTAMP@ , the time from which to start reading.
cesmStartingPositionTimestamp :: Lens' CreateEventSourceMapping (Maybe UTCTime)
cesmStartingPositionTimestamp = lens _cesmStartingPositionTimestamp (\s a -> s {_cesmStartingPositionTimestamp = a}) . mapping _Time

-- | (Streams and SQS standard queues) The maximum amount of time to gather records before invoking the function, in seconds.
cesmMaximumBatchingWindowInSeconds :: Lens' CreateEventSourceMapping (Maybe Natural)
cesmMaximumBatchingWindowInSeconds = lens _cesmMaximumBatchingWindowInSeconds (\s a -> s {_cesmMaximumBatchingWindowInSeconds = a}) . mapping _Nat

-- | The maximum number of items to retrieve in a single batch.     * __Amazon Kinesis__ - Default 100. Max 10,000.     * __Amazon DynamoDB Streams__ - Default 100. Max 1,000.     * __Amazon Simple Queue Service__ - Default 10. For standard queues the max is 10,000. For FIFO queues the max is 10.     * __Amazon Managed Streaming for Apache Kafka__ - Default 100. Max 10,000.     * __Self-Managed Apache Kafka__ - Default 100. Max 10,000.
cesmBatchSize :: Lens' CreateEventSourceMapping (Maybe Natural)
cesmBatchSize = lens _cesmBatchSize (\s a -> s {_cesmBatchSize = a}) . mapping _Nat

-- | The position in a stream from which to start reading. Required for Amazon Kinesis, Amazon DynamoDB, and Amazon MSK Streams sources. @AT_TIMESTAMP@ is only supported for Amazon Kinesis streams.
cesmStartingPosition :: Lens' CreateEventSourceMapping (Maybe EventSourcePosition)
cesmStartingPosition = lens _cesmStartingPosition (\s a -> s {_cesmStartingPosition = a})

-- | (Streams) An Amazon SQS queue or Amazon SNS topic destination for discarded records.
cesmDestinationConfig :: Lens' CreateEventSourceMapping (Maybe DestinationConfig)
cesmDestinationConfig = lens _cesmDestinationConfig (\s a -> s {_cesmDestinationConfig = a})

-- | (Streams) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records will be retried until the record expires.
cesmMaximumRetryAttempts :: Lens' CreateEventSourceMapping (Maybe Int)
cesmMaximumRetryAttempts = lens _cesmMaximumRetryAttempts (\s a -> s {_cesmMaximumRetryAttempts = a})

-- | (Streams) The number of batches to process from each shard concurrently.
cesmParallelizationFactor :: Lens' CreateEventSourceMapping (Maybe Natural)
cesmParallelizationFactor = lens _cesmParallelizationFactor (\s a -> s {_cesmParallelizationFactor = a}) . mapping _Nat

-- | The Self-Managed Apache Kafka cluster to send records.
cesmSelfManagedEventSource :: Lens' CreateEventSourceMapping (Maybe SelfManagedEventSource)
cesmSelfManagedEventSource = lens _cesmSelfManagedEventSource (\s a -> s {_cesmSelfManagedEventSource = a})

-- | (Streams) If the function returns an error, split the batch in two and retry.
cesmBisectBatchOnFunctionError :: Lens' CreateEventSourceMapping (Maybe Bool)
cesmBisectBatchOnFunctionError = lens _cesmBisectBatchOnFunctionError (\s a -> s {_cesmBisectBatchOnFunctionError = a})

-- | An array of the authentication protocol, or the VPC components to secure your event source.
cesmSourceAccessConfigurations :: Lens' CreateEventSourceMapping [SourceAccessConfiguration]
cesmSourceAccessConfigurations = lens _cesmSourceAccessConfigurations (\s a -> s {_cesmSourceAccessConfigurations = a}) . _Default . _Coerce

-- | The name of the Lambda function. __Name formats__      * __Function name__ - @MyFunction@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:MyFunction@ .     * __Version or Alias ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD@ .     * __Partial ARN__ - @123456789012:function:MyFunction@ . The length constraint applies only to the full ARN. If you specify only the function name, it's limited to 64 characters in length.
cesmFunctionName :: Lens' CreateEventSourceMapping Text
cesmFunctionName = lens _cesmFunctionName (\s a -> s {_cesmFunctionName = a})

instance AWSRequest CreateEventSourceMapping where
  type
    Rs CreateEventSourceMapping =
      EventSourceMappingConfiguration
  request = postJSON lambda
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable CreateEventSourceMapping

instance NFData CreateEventSourceMapping

instance ToHeaders CreateEventSourceMapping where
  toHeaders = const mempty

instance ToJSON CreateEventSourceMapping where
  toJSON CreateEventSourceMapping' {..} =
    object
      ( catMaybes
          [ ("EventSourceArn" .=) <$> _cesmEventSourceARN,
            ("Enabled" .=) <$> _cesmEnabled,
            ("Topics" .=) <$> _cesmTopics,
            ("MaximumRecordAgeInSeconds" .=)
              <$> _cesmMaximumRecordAgeInSeconds,
            ("FunctionResponseTypes" .=)
              <$> _cesmFunctionResponseTypes,
            ("Queues" .=) <$> _cesmQueues,
            ("TumblingWindowInSeconds" .=)
              <$> _cesmTumblingWindowInSeconds,
            ("StartingPositionTimestamp" .=)
              <$> _cesmStartingPositionTimestamp,
            ("MaximumBatchingWindowInSeconds" .=)
              <$> _cesmMaximumBatchingWindowInSeconds,
            ("BatchSize" .=) <$> _cesmBatchSize,
            ("StartingPosition" .=) <$> _cesmStartingPosition,
            ("DestinationConfig" .=) <$> _cesmDestinationConfig,
            ("MaximumRetryAttempts" .=)
              <$> _cesmMaximumRetryAttempts,
            ("ParallelizationFactor" .=)
              <$> _cesmParallelizationFactor,
            ("SelfManagedEventSource" .=)
              <$> _cesmSelfManagedEventSource,
            ("BisectBatchOnFunctionError" .=)
              <$> _cesmBisectBatchOnFunctionError,
            ("SourceAccessConfigurations" .=)
              <$> _cesmSourceAccessConfigurations,
            Just ("FunctionName" .= _cesmFunctionName)
          ]
      )

instance ToPath CreateEventSourceMapping where
  toPath = const "/2015-03-31/event-source-mappings/"

instance ToQuery CreateEventSourceMapping where
  toQuery = const mempty
