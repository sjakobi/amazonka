{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.EventSubscription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.EventSubscription where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the results of a successful invocation of the @DescribeEventSubscriptions@ action.
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
    _esEventSubscriptionARN ::
      !(Maybe Text),
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
-- * 'esCustSubscriptionId' - The RDS event notification subscription Id.
--
-- * 'esStatus' - The status of the RDS event notification subscription. Constraints: Can be one of the following: creating | modifying | deleting | active | no-permission | topic-not-exist The status "no-permission" indicates that RDS no longer has permission to post to the SNS topic. The status "topic-not-exist" indicates that the topic was deleted after the subscription was created.
--
-- * 'esSourceIdsList' - A list of source IDs for the RDS event notification subscription.
--
-- * 'esEventCategoriesList' - A list of event categories for the RDS event notification subscription.
--
-- * 'esEnabled' - A Boolean value indicating if the subscription is enabled. True indicates the subscription is enabled.
--
-- * 'esEventSubscriptionARN' - The Amazon Resource Name (ARN) for the event subscription.
--
-- * 'esSubscriptionCreationTime' - The time the RDS event notification subscription was created.
--
-- * 'esCustomerAWSId' - The AWS customer account associated with the RDS event notification subscription.
--
-- * 'esSourceType' - The source type for the RDS event notification subscription.
--
-- * 'esSNSTopicARN' - The topic ARN of the RDS event notification subscription.
eventSubscription ::
  EventSubscription
eventSubscription =
  EventSubscription'
    { _esCustSubscriptionId = Nothing,
      _esStatus = Nothing,
      _esSourceIdsList = Nothing,
      _esEventCategoriesList = Nothing,
      _esEnabled = Nothing,
      _esEventSubscriptionARN = Nothing,
      _esSubscriptionCreationTime = Nothing,
      _esCustomerAWSId = Nothing,
      _esSourceType = Nothing,
      _esSNSTopicARN = Nothing
    }

-- | The RDS event notification subscription Id.
esCustSubscriptionId :: Lens' EventSubscription (Maybe Text)
esCustSubscriptionId = lens _esCustSubscriptionId (\s a -> s {_esCustSubscriptionId = a})

-- | The status of the RDS event notification subscription. Constraints: Can be one of the following: creating | modifying | deleting | active | no-permission | topic-not-exist The status "no-permission" indicates that RDS no longer has permission to post to the SNS topic. The status "topic-not-exist" indicates that the topic was deleted after the subscription was created.
esStatus :: Lens' EventSubscription (Maybe Text)
esStatus = lens _esStatus (\s a -> s {_esStatus = a})

-- | A list of source IDs for the RDS event notification subscription.
esSourceIdsList :: Lens' EventSubscription [Text]
esSourceIdsList = lens _esSourceIdsList (\s a -> s {_esSourceIdsList = a}) . _Default . _Coerce

-- | A list of event categories for the RDS event notification subscription.
esEventCategoriesList :: Lens' EventSubscription [Text]
esEventCategoriesList = lens _esEventCategoriesList (\s a -> s {_esEventCategoriesList = a}) . _Default . _Coerce

-- | A Boolean value indicating if the subscription is enabled. True indicates the subscription is enabled.
esEnabled :: Lens' EventSubscription (Maybe Bool)
esEnabled = lens _esEnabled (\s a -> s {_esEnabled = a})

-- | The Amazon Resource Name (ARN) for the event subscription.
esEventSubscriptionARN :: Lens' EventSubscription (Maybe Text)
esEventSubscriptionARN = lens _esEventSubscriptionARN (\s a -> s {_esEventSubscriptionARN = a})

-- | The time the RDS event notification subscription was created.
esSubscriptionCreationTime :: Lens' EventSubscription (Maybe Text)
esSubscriptionCreationTime = lens _esSubscriptionCreationTime (\s a -> s {_esSubscriptionCreationTime = a})

-- | The AWS customer account associated with the RDS event notification subscription.
esCustomerAWSId :: Lens' EventSubscription (Maybe Text)
esCustomerAWSId = lens _esCustomerAWSId (\s a -> s {_esCustomerAWSId = a})

-- | The source type for the RDS event notification subscription.
esSourceType :: Lens' EventSubscription (Maybe Text)
esSourceType = lens _esSourceType (\s a -> s {_esSourceType = a})

-- | The topic ARN of the RDS event notification subscription.
esSNSTopicARN :: Lens' EventSubscription (Maybe Text)
esSNSTopicARN = lens _esSNSTopicARN (\s a -> s {_esSNSTopicARN = a})

instance FromXML EventSubscription where
  parseXML x =
    EventSubscription'
      <$> (x .@? "CustSubscriptionId")
      <*> (x .@? "Status")
      <*> ( x .@? "SourceIdsList" .!@ mempty
              >>= may (parseXMLList "SourceId")
          )
      <*> ( x .@? "EventCategoriesList" .!@ mempty
              >>= may (parseXMLList "EventCategory")
          )
      <*> (x .@? "Enabled")
      <*> (x .@? "EventSubscriptionArn")
      <*> (x .@? "SubscriptionCreationTime")
      <*> (x .@? "CustomerAwsId")
      <*> (x .@? "SourceType")
      <*> (x .@? "SnsTopicArn")

instance Hashable EventSubscription

instance NFData EventSubscription
