{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.EventSubscription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.EventSubscription where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an event notification subscription created by the @CreateEventSubscription@ operation.
--
--
--
-- /See:/ 'eventSubscription' smart constructor.
data EventSubscription = EventSubscription'
  { _esCustSubscriptionId ::
      !(Maybe Text),
    _esStatus :: !(Maybe Text),
    _esSourceIdsList :: !(Maybe [Text]),
    _esEventCategoriesList ::
      !(Maybe [Text]),
    _esEnabled :: !(Maybe Bool),
    _esSubscriptionCreationTime ::
      !(Maybe Text),
    _esCustomerAWSId :: !(Maybe Text),
    _esSourceType :: !(Maybe Text),
    _esSNSTopicARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EventSubscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esCustSubscriptionId' - The AWS DMS event notification subscription Id.
--
-- * 'esStatus' - The status of the AWS DMS event notification subscription. Constraints: Can be one of the following: creating | modifying | deleting | active | no-permission | topic-not-exist The status "no-permission" indicates that AWS DMS no longer has permission to post to the SNS topic. The status "topic-not-exist" indicates that the topic was deleted after the subscription was created.
--
-- * 'esSourceIdsList' - A list of source Ids for the event subscription.
--
-- * 'esEventCategoriesList' - A lists of event categories.
--
-- * 'esEnabled' - Boolean value that indicates if the event subscription is enabled.
--
-- * 'esSubscriptionCreationTime' - The time the AWS DMS event notification subscription was created.
--
-- * 'esCustomerAWSId' - The AWS customer account associated with the AWS DMS event notification subscription.
--
-- * 'esSourceType' - The type of AWS DMS resource that generates events.  Valid values: replication-instance | replication-server | security-group | replication-task
--
-- * 'esSNSTopicARN' - The topic ARN of the AWS DMS event notification subscription.
eventSubscription ::
  EventSubscription
eventSubscription =
  EventSubscription'
    { _esCustSubscriptionId = Nothing,
      _esStatus = Nothing,
      _esSourceIdsList = Nothing,
      _esEventCategoriesList = Nothing,
      _esEnabled = Nothing,
      _esSubscriptionCreationTime = Nothing,
      _esCustomerAWSId = Nothing,
      _esSourceType = Nothing,
      _esSNSTopicARN = Nothing
    }

-- | The AWS DMS event notification subscription Id.
esCustSubscriptionId :: Lens' EventSubscription (Maybe Text)
esCustSubscriptionId = lens _esCustSubscriptionId (\s a -> s {_esCustSubscriptionId = a})

-- | The status of the AWS DMS event notification subscription. Constraints: Can be one of the following: creating | modifying | deleting | active | no-permission | topic-not-exist The status "no-permission" indicates that AWS DMS no longer has permission to post to the SNS topic. The status "topic-not-exist" indicates that the topic was deleted after the subscription was created.
esStatus :: Lens' EventSubscription (Maybe Text)
esStatus = lens _esStatus (\s a -> s {_esStatus = a})

-- | A list of source Ids for the event subscription.
esSourceIdsList :: Lens' EventSubscription [Text]
esSourceIdsList = lens _esSourceIdsList (\s a -> s {_esSourceIdsList = a}) . _Default . _Coerce

-- | A lists of event categories.
esEventCategoriesList :: Lens' EventSubscription [Text]
esEventCategoriesList = lens _esEventCategoriesList (\s a -> s {_esEventCategoriesList = a}) . _Default . _Coerce

-- | Boolean value that indicates if the event subscription is enabled.
esEnabled :: Lens' EventSubscription (Maybe Bool)
esEnabled = lens _esEnabled (\s a -> s {_esEnabled = a})

-- | The time the AWS DMS event notification subscription was created.
esSubscriptionCreationTime :: Lens' EventSubscription (Maybe Text)
esSubscriptionCreationTime = lens _esSubscriptionCreationTime (\s a -> s {_esSubscriptionCreationTime = a})

-- | The AWS customer account associated with the AWS DMS event notification subscription.
esCustomerAWSId :: Lens' EventSubscription (Maybe Text)
esCustomerAWSId = lens _esCustomerAWSId (\s a -> s {_esCustomerAWSId = a})

-- | The type of AWS DMS resource that generates events.  Valid values: replication-instance | replication-server | security-group | replication-task
esSourceType :: Lens' EventSubscription (Maybe Text)
esSourceType = lens _esSourceType (\s a -> s {_esSourceType = a})

-- | The topic ARN of the AWS DMS event notification subscription.
esSNSTopicARN :: Lens' EventSubscription (Maybe Text)
esSNSTopicARN = lens _esSNSTopicARN (\s a -> s {_esSNSTopicARN = a})

instance FromJSON EventSubscription where
  parseJSON =
    withObject
      "EventSubscription"
      ( \x ->
          EventSubscription'
            <$> (x .:? "CustSubscriptionId")
            <*> (x .:? "Status")
            <*> (x .:? "SourceIdsList" .!= mempty)
            <*> (x .:? "EventCategoriesList" .!= mempty)
            <*> (x .:? "Enabled")
            <*> (x .:? "SubscriptionCreationTime")
            <*> (x .:? "CustomerAwsId")
            <*> (x .:? "SourceType")
            <*> (x .:? "SnsTopicArn")
      )

instance Hashable EventSubscription

instance NFData EventSubscription
