{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.KafkaAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.KafkaAction where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Send messages to an Amazon Managed Streaming for Apache Kafka (Amazon MSK) or self-managed Apache Kafka cluster.
--
--
--
-- /See:/ 'kafkaAction' smart constructor.
data KafkaAction = KafkaAction'
  { _kaKey ::
      !(Maybe Text),
    _kaPartition :: !(Maybe Text),
    _kaDestinationARN :: !Text,
    _kaTopic :: !Text,
    _kaClientProperties :: !(Map Text Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'KafkaAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'kaKey' - The Kafka message key.
--
-- * 'kaPartition' - The Kafka message partition.
--
-- * 'kaDestinationARN' - The ARN of Kafka action's VPC @TopicRuleDestination@ .
--
-- * 'kaTopic' - The Kafka topic for messages to be sent to the Kafka broker.
--
-- * 'kaClientProperties' - Properties of the Apache Kafka producer client.
kafkaAction ::
  -- | 'kaDestinationARN'
  Text ->
  -- | 'kaTopic'
  Text ->
  KafkaAction
kafkaAction pDestinationARN_ pTopic_ =
  KafkaAction'
    { _kaKey = Nothing,
      _kaPartition = Nothing,
      _kaDestinationARN = pDestinationARN_,
      _kaTopic = pTopic_,
      _kaClientProperties = mempty
    }

-- | The Kafka message key.
kaKey :: Lens' KafkaAction (Maybe Text)
kaKey = lens _kaKey (\s a -> s {_kaKey = a})

-- | The Kafka message partition.
kaPartition :: Lens' KafkaAction (Maybe Text)
kaPartition = lens _kaPartition (\s a -> s {_kaPartition = a})

-- | The ARN of Kafka action's VPC @TopicRuleDestination@ .
kaDestinationARN :: Lens' KafkaAction Text
kaDestinationARN = lens _kaDestinationARN (\s a -> s {_kaDestinationARN = a})

-- | The Kafka topic for messages to be sent to the Kafka broker.
kaTopic :: Lens' KafkaAction Text
kaTopic = lens _kaTopic (\s a -> s {_kaTopic = a})

-- | Properties of the Apache Kafka producer client.
kaClientProperties :: Lens' KafkaAction (HashMap Text Text)
kaClientProperties = lens _kaClientProperties (\s a -> s {_kaClientProperties = a}) . _Map

instance FromJSON KafkaAction where
  parseJSON =
    withObject
      "KafkaAction"
      ( \x ->
          KafkaAction'
            <$> (x .:? "key")
            <*> (x .:? "partition")
            <*> (x .: "destinationArn")
            <*> (x .: "topic")
            <*> (x .:? "clientProperties" .!= mempty)
      )

instance Hashable KafkaAction

instance NFData KafkaAction

instance ToJSON KafkaAction where
  toJSON KafkaAction' {..} =
    object
      ( catMaybes
          [ ("key" .=) <$> _kaKey,
            ("partition" .=) <$> _kaPartition,
            Just ("destinationArn" .= _kaDestinationARN),
            Just ("topic" .= _kaTopic),
            Just ("clientProperties" .= _kaClientProperties)
          ]
      )
