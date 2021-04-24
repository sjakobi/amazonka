{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.NotificationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.NotificationConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.LambdaFunctionConfiguration
import Network.AWS.S3.Types.QueueConfiguration
import Network.AWS.S3.Types.TopicConfiguration

-- | A container for specifying the notification configuration of the bucket. If this element is empty, notifications are turned off for the bucket.
--
--
--
-- /See:/ 'notificationConfiguration' smart constructor.
data NotificationConfiguration = NotificationConfiguration'
  { _ncLambdaFunctionConfigurations ::
      !( Maybe
           [LambdaFunctionConfiguration]
       ),
    _ncQueueConfigurations ::
      !( Maybe
           [QueueConfiguration]
       ),
    _ncTopicConfigurations ::
      !( Maybe
           [TopicConfiguration]
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

-- | Creates a value of 'NotificationConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncLambdaFunctionConfigurations' - Describes the AWS Lambda functions to invoke and the events for which to invoke them.
--
-- * 'ncQueueConfigurations' - The Amazon Simple Queue Service queues to publish messages to and the events for which to publish messages.
--
-- * 'ncTopicConfigurations' - The topic to which notifications are sent and the events for which notifications are generated.
notificationConfiguration ::
  NotificationConfiguration
notificationConfiguration =
  NotificationConfiguration'
    { _ncLambdaFunctionConfigurations =
        Nothing,
      _ncQueueConfigurations = Nothing,
      _ncTopicConfigurations = Nothing
    }

-- | Describes the AWS Lambda functions to invoke and the events for which to invoke them.
ncLambdaFunctionConfigurations :: Lens' NotificationConfiguration [LambdaFunctionConfiguration]
ncLambdaFunctionConfigurations = lens _ncLambdaFunctionConfigurations (\s a -> s {_ncLambdaFunctionConfigurations = a}) . _Default . _Coerce

-- | The Amazon Simple Queue Service queues to publish messages to and the events for which to publish messages.
ncQueueConfigurations :: Lens' NotificationConfiguration [QueueConfiguration]
ncQueueConfigurations = lens _ncQueueConfigurations (\s a -> s {_ncQueueConfigurations = a}) . _Default . _Coerce

-- | The topic to which notifications are sent and the events for which notifications are generated.
ncTopicConfigurations :: Lens' NotificationConfiguration [TopicConfiguration]
ncTopicConfigurations = lens _ncTopicConfigurations (\s a -> s {_ncTopicConfigurations = a}) . _Default . _Coerce

instance FromXML NotificationConfiguration where
  parseXML x =
    NotificationConfiguration'
      <$> (may (parseXMLList "CloudFunctionConfiguration") x)
      <*> (may (parseXMLList "QueueConfiguration") x)
      <*> (may (parseXMLList "TopicConfiguration") x)

instance Hashable NotificationConfiguration

instance NFData NotificationConfiguration

instance ToXML NotificationConfiguration where
  toXML NotificationConfiguration' {..} =
    mconcat
      [ toXML
          ( toXMLList "CloudFunctionConfiguration"
              <$> _ncLambdaFunctionConfigurations
          ),
        toXML
          ( toXMLList "QueueConfiguration"
              <$> _ncQueueConfigurations
          ),
        toXML
          ( toXMLList "TopicConfiguration"
              <$> _ncTopicConfigurations
          )
      ]
