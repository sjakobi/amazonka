{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.EventSourceMappingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.EventSourceMappingConfiguration where

import Network.AWS.Lambda.Types.DestinationConfig
import Network.AWS.Lambda.Types.EventSourcePosition
import Network.AWS.Lambda.Types.FunctionResponseType
import Network.AWS.Lambda.Types.SelfManagedEventSource
import Network.AWS.Lambda.Types.SourceAccessConfiguration
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A mapping between an AWS resource and an AWS Lambda function. See 'CreateEventSourceMapping' for details.
--
--
--
-- /See:/ 'eventSourceMappingConfiguration' smart constructor.
data EventSourceMappingConfiguration = EventSourceMappingConfiguration'
  { _esmcEventSourceARN ::
      !( Maybe
           Text
       ),
    _esmcStateTransitionReason ::
      !( Maybe
           Text
       ),
    _esmcLastProcessingResult ::
      !( Maybe
           Text
       ),
    _esmcTopics ::
      !( Maybe
           ( List1
               Text
           )
       ),
    _esmcMaximumRecordAgeInSeconds ::
      !( Maybe
           Int
       ),
    _esmcFunctionResponseTypes ::
      !( Maybe
           ( List1
               FunctionResponseType
           )
       ),
    _esmcQueues ::
      !( Maybe
           ( List1
               Text
           )
       ),
    _esmcTumblingWindowInSeconds ::
      !( Maybe
           Nat
       ),
    _esmcFunctionARN ::
      !( Maybe
           Text
       ),
    _esmcStartingPositionTimestamp ::
      !( Maybe
           POSIX
       ),
    _esmcState ::
      !( Maybe
           Text
       ),
    _esmcMaximumBatchingWindowInSeconds ::
      !( Maybe
           Nat
       ),
    _esmcBatchSize ::
      !( Maybe
           Nat
       ),
    _esmcStartingPosition ::
      !( Maybe
           EventSourcePosition
       ),
    _esmcDestinationConfig ::
      !( Maybe
           DestinationConfig
       ),
    _esmcMaximumRetryAttempts ::
      !( Maybe
           Int
       ),
    _esmcLastModified ::
      !( Maybe
           POSIX
       ),
    _esmcParallelizationFactor ::
      !( Maybe
           Nat
       ),
    _esmcSelfManagedEventSource ::
      !( Maybe
           SelfManagedEventSource
       ),
    _esmcUUId ::
      !( Maybe
           Text
       ),
    _esmcBisectBatchOnFunctionError ::
      !( Maybe
           Bool
       ),
    _esmcSourceAccessConfigurations ::
      !( Maybe
           [SourceAccessConfiguration]
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'EventSourceMappingConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esmcEventSourceARN' - The Amazon Resource Name (ARN) of the event source.
--
-- * 'esmcStateTransitionReason' - Indicates whether the last change to the event source mapping was made by a user, or by the Lambda service.
--
-- * 'esmcLastProcessingResult' - The result of the last AWS Lambda invocation of your Lambda function.
--
-- * 'esmcTopics' - The name of the Kafka topic.
--
-- * 'esmcMaximumRecordAgeInSeconds' - (Streams) Discard records older than the specified age. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.
--
-- * 'esmcFunctionResponseTypes' - (Streams) A list of current response type enums applied to the event source mapping.
--
-- * 'esmcQueues' - (MQ) The name of the Amazon MQ broker destination queue to consume.
--
-- * 'esmcTumblingWindowInSeconds' - (Streams) The duration in seconds of a processing window. The range is between 1 second up to 900 seconds.
--
-- * 'esmcFunctionARN' - The ARN of the Lambda function.
--
-- * 'esmcStartingPositionTimestamp' - With @StartingPosition@ set to @AT_TIMESTAMP@ , the time from which to start reading.
--
-- * 'esmcState' - The state of the event source mapping. It can be one of the following: @Creating@ , @Enabling@ , @Enabled@ , @Disabling@ , @Disabled@ , @Updating@ , or @Deleting@ .
--
-- * 'esmcMaximumBatchingWindowInSeconds' - (Streams and SQS standard queues) The maximum amount of time to gather records before invoking the function, in seconds. The default value is zero.
--
-- * 'esmcBatchSize' - The maximum number of items to retrieve in a single batch.
--
-- * 'esmcStartingPosition' - The position in a stream from which to start reading. Required for Amazon Kinesis, Amazon DynamoDB, and Amazon MSK Streams sources. @AT_TIMESTAMP@ is only supported for Amazon Kinesis streams.
--
-- * 'esmcDestinationConfig' - (Streams) An Amazon SQS queue or Amazon SNS topic destination for discarded records.
--
-- * 'esmcMaximumRetryAttempts' - (Streams) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.
--
-- * 'esmcLastModified' - The date that the event source mapping was last updated, or its state changed.
--
-- * 'esmcParallelizationFactor' - (Streams) The number of batches to process from each shard concurrently. The default value is 1.
--
-- * 'esmcSelfManagedEventSource' - The Self-Managed Apache Kafka cluster for your event source.
--
-- * 'esmcUUId' - The identifier of the event source mapping.
--
-- * 'esmcBisectBatchOnFunctionError' - (Streams) If the function returns an error, split the batch in two and retry. The default value is false.
--
-- * 'esmcSourceAccessConfigurations' - An array of the authentication protocol, or the VPC components to secure your event source.
eventSourceMappingConfiguration ::
  EventSourceMappingConfiguration
eventSourceMappingConfiguration =
  EventSourceMappingConfiguration'
    { _esmcEventSourceARN =
        Nothing,
      _esmcStateTransitionReason = Nothing,
      _esmcLastProcessingResult = Nothing,
      _esmcTopics = Nothing,
      _esmcMaximumRecordAgeInSeconds = Nothing,
      _esmcFunctionResponseTypes = Nothing,
      _esmcQueues = Nothing,
      _esmcTumblingWindowInSeconds = Nothing,
      _esmcFunctionARN = Nothing,
      _esmcStartingPositionTimestamp = Nothing,
      _esmcState = Nothing,
      _esmcMaximumBatchingWindowInSeconds =
        Nothing,
      _esmcBatchSize = Nothing,
      _esmcStartingPosition = Nothing,
      _esmcDestinationConfig = Nothing,
      _esmcMaximumRetryAttempts = Nothing,
      _esmcLastModified = Nothing,
      _esmcParallelizationFactor = Nothing,
      _esmcSelfManagedEventSource = Nothing,
      _esmcUUId = Nothing,
      _esmcBisectBatchOnFunctionError = Nothing,
      _esmcSourceAccessConfigurations = Nothing
    }

-- | The Amazon Resource Name (ARN) of the event source.
esmcEventSourceARN :: Lens' EventSourceMappingConfiguration (Maybe Text)
esmcEventSourceARN = lens _esmcEventSourceARN (\s a -> s {_esmcEventSourceARN = a})

-- | Indicates whether the last change to the event source mapping was made by a user, or by the Lambda service.
esmcStateTransitionReason :: Lens' EventSourceMappingConfiguration (Maybe Text)
esmcStateTransitionReason = lens _esmcStateTransitionReason (\s a -> s {_esmcStateTransitionReason = a})

-- | The result of the last AWS Lambda invocation of your Lambda function.
esmcLastProcessingResult :: Lens' EventSourceMappingConfiguration (Maybe Text)
esmcLastProcessingResult = lens _esmcLastProcessingResult (\s a -> s {_esmcLastProcessingResult = a})

-- | The name of the Kafka topic.
esmcTopics :: Lens' EventSourceMappingConfiguration (Maybe (NonEmpty Text))
esmcTopics = lens _esmcTopics (\s a -> s {_esmcTopics = a}) . mapping _List1

-- | (Streams) Discard records older than the specified age. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.
esmcMaximumRecordAgeInSeconds :: Lens' EventSourceMappingConfiguration (Maybe Int)
esmcMaximumRecordAgeInSeconds = lens _esmcMaximumRecordAgeInSeconds (\s a -> s {_esmcMaximumRecordAgeInSeconds = a})

-- | (Streams) A list of current response type enums applied to the event source mapping.
esmcFunctionResponseTypes :: Lens' EventSourceMappingConfiguration (Maybe (NonEmpty FunctionResponseType))
esmcFunctionResponseTypes = lens _esmcFunctionResponseTypes (\s a -> s {_esmcFunctionResponseTypes = a}) . mapping _List1

-- | (MQ) The name of the Amazon MQ broker destination queue to consume.
esmcQueues :: Lens' EventSourceMappingConfiguration (Maybe (NonEmpty Text))
esmcQueues = lens _esmcQueues (\s a -> s {_esmcQueues = a}) . mapping _List1

-- | (Streams) The duration in seconds of a processing window. The range is between 1 second up to 900 seconds.
esmcTumblingWindowInSeconds :: Lens' EventSourceMappingConfiguration (Maybe Natural)
esmcTumblingWindowInSeconds = lens _esmcTumblingWindowInSeconds (\s a -> s {_esmcTumblingWindowInSeconds = a}) . mapping _Nat

-- | The ARN of the Lambda function.
esmcFunctionARN :: Lens' EventSourceMappingConfiguration (Maybe Text)
esmcFunctionARN = lens _esmcFunctionARN (\s a -> s {_esmcFunctionARN = a})

-- | With @StartingPosition@ set to @AT_TIMESTAMP@ , the time from which to start reading.
esmcStartingPositionTimestamp :: Lens' EventSourceMappingConfiguration (Maybe UTCTime)
esmcStartingPositionTimestamp = lens _esmcStartingPositionTimestamp (\s a -> s {_esmcStartingPositionTimestamp = a}) . mapping _Time

-- | The state of the event source mapping. It can be one of the following: @Creating@ , @Enabling@ , @Enabled@ , @Disabling@ , @Disabled@ , @Updating@ , or @Deleting@ .
esmcState :: Lens' EventSourceMappingConfiguration (Maybe Text)
esmcState = lens _esmcState (\s a -> s {_esmcState = a})

-- | (Streams and SQS standard queues) The maximum amount of time to gather records before invoking the function, in seconds. The default value is zero.
esmcMaximumBatchingWindowInSeconds :: Lens' EventSourceMappingConfiguration (Maybe Natural)
esmcMaximumBatchingWindowInSeconds = lens _esmcMaximumBatchingWindowInSeconds (\s a -> s {_esmcMaximumBatchingWindowInSeconds = a}) . mapping _Nat

-- | The maximum number of items to retrieve in a single batch.
esmcBatchSize :: Lens' EventSourceMappingConfiguration (Maybe Natural)
esmcBatchSize = lens _esmcBatchSize (\s a -> s {_esmcBatchSize = a}) . mapping _Nat

-- | The position in a stream from which to start reading. Required for Amazon Kinesis, Amazon DynamoDB, and Amazon MSK Streams sources. @AT_TIMESTAMP@ is only supported for Amazon Kinesis streams.
esmcStartingPosition :: Lens' EventSourceMappingConfiguration (Maybe EventSourcePosition)
esmcStartingPosition = lens _esmcStartingPosition (\s a -> s {_esmcStartingPosition = a})

-- | (Streams) An Amazon SQS queue or Amazon SNS topic destination for discarded records.
esmcDestinationConfig :: Lens' EventSourceMappingConfiguration (Maybe DestinationConfig)
esmcDestinationConfig = lens _esmcDestinationConfig (\s a -> s {_esmcDestinationConfig = a})

-- | (Streams) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.
esmcMaximumRetryAttempts :: Lens' EventSourceMappingConfiguration (Maybe Int)
esmcMaximumRetryAttempts = lens _esmcMaximumRetryAttempts (\s a -> s {_esmcMaximumRetryAttempts = a})

-- | The date that the event source mapping was last updated, or its state changed.
esmcLastModified :: Lens' EventSourceMappingConfiguration (Maybe UTCTime)
esmcLastModified = lens _esmcLastModified (\s a -> s {_esmcLastModified = a}) . mapping _Time

-- | (Streams) The number of batches to process from each shard concurrently. The default value is 1.
esmcParallelizationFactor :: Lens' EventSourceMappingConfiguration (Maybe Natural)
esmcParallelizationFactor = lens _esmcParallelizationFactor (\s a -> s {_esmcParallelizationFactor = a}) . mapping _Nat

-- | The Self-Managed Apache Kafka cluster for your event source.
esmcSelfManagedEventSource :: Lens' EventSourceMappingConfiguration (Maybe SelfManagedEventSource)
esmcSelfManagedEventSource = lens _esmcSelfManagedEventSource (\s a -> s {_esmcSelfManagedEventSource = a})

-- | The identifier of the event source mapping.
esmcUUId :: Lens' EventSourceMappingConfiguration (Maybe Text)
esmcUUId = lens _esmcUUId (\s a -> s {_esmcUUId = a})

-- | (Streams) If the function returns an error, split the batch in two and retry. The default value is false.
esmcBisectBatchOnFunctionError :: Lens' EventSourceMappingConfiguration (Maybe Bool)
esmcBisectBatchOnFunctionError = lens _esmcBisectBatchOnFunctionError (\s a -> s {_esmcBisectBatchOnFunctionError = a})

-- | An array of the authentication protocol, or the VPC components to secure your event source.
esmcSourceAccessConfigurations :: Lens' EventSourceMappingConfiguration [SourceAccessConfiguration]
esmcSourceAccessConfigurations = lens _esmcSourceAccessConfigurations (\s a -> s {_esmcSourceAccessConfigurations = a}) . _Default . _Coerce

instance FromJSON EventSourceMappingConfiguration where
  parseJSON =
    withObject
      "EventSourceMappingConfiguration"
      ( \x ->
          EventSourceMappingConfiguration'
            <$> (x .:? "EventSourceArn")
            <*> (x .:? "StateTransitionReason")
            <*> (x .:? "LastProcessingResult")
            <*> (x .:? "Topics")
            <*> (x .:? "MaximumRecordAgeInSeconds")
            <*> (x .:? "FunctionResponseTypes")
            <*> (x .:? "Queues")
            <*> (x .:? "TumblingWindowInSeconds")
            <*> (x .:? "FunctionArn")
            <*> (x .:? "StartingPositionTimestamp")
            <*> (x .:? "State")
            <*> (x .:? "MaximumBatchingWindowInSeconds")
            <*> (x .:? "BatchSize")
            <*> (x .:? "StartingPosition")
            <*> (x .:? "DestinationConfig")
            <*> (x .:? "MaximumRetryAttempts")
            <*> (x .:? "LastModified")
            <*> (x .:? "ParallelizationFactor")
            <*> (x .:? "SelfManagedEventSource")
            <*> (x .:? "UUID")
            <*> (x .:? "BisectBatchOnFunctionError")
            <*> (x .:? "SourceAccessConfigurations" .!= mempty)
      )

instance Hashable EventSourceMappingConfiguration

instance NFData EventSourceMappingConfiguration
