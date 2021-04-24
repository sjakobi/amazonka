{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.EventSubscription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.EventSubscription where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.Types.Tag

-- | Describes event subscriptions.
--
--
--
-- /See:/ 'eventSubscription' smart constructor.
data EventSubscription = EventSubscription'
  { _esCustSubscriptionId ::
      !(Maybe Text),
    _esStatus :: !(Maybe Text),
    _esSourceIdsList :: !(Maybe [Text]),
    _esSeverity :: !(Maybe Text),
    _esEventCategoriesList ::
      !(Maybe [Text]),
    _esEnabled :: !(Maybe Bool),
    _esSubscriptionCreationTime ::
      !(Maybe ISO8601),
    _esCustomerAWSId :: !(Maybe Text),
    _esTags :: !(Maybe [Tag]),
    _esSourceType :: !(Maybe Text),
    _esSNSTopicARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EventSubscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esCustSubscriptionId' - The name of the Amazon Redshift event notification subscription.
--
-- * 'esStatus' - The status of the Amazon Redshift event notification subscription. Constraints:     * Can be one of the following: active | no-permission | topic-not-exist     * The status "no-permission" indicates that Amazon Redshift no longer has permission to post to the Amazon SNS topic. The status "topic-not-exist" indicates that the topic was deleted after the subscription was created.
--
-- * 'esSourceIdsList' - A list of the sources that publish events to the Amazon Redshift event notification subscription.
--
-- * 'esSeverity' - The event severity specified in the Amazon Redshift event notification subscription. Values: ERROR, INFO
--
-- * 'esEventCategoriesList' - The list of Amazon Redshift event categories specified in the event notification subscription. Values: Configuration, Management, Monitoring, Security
--
-- * 'esEnabled' - A boolean value indicating whether the subscription is enabled; @true@ indicates that the subscription is enabled.
--
-- * 'esSubscriptionCreationTime' - The date and time the Amazon Redshift event notification subscription was created.
--
-- * 'esCustomerAWSId' - The AWS customer account associated with the Amazon Redshift event notification subscription.
--
-- * 'esTags' - The list of tags for the event subscription.
--
-- * 'esSourceType' - The source type of the events returned by the Amazon Redshift event notification, such as cluster, cluster-snapshot, cluster-parameter-group, cluster-security-group, or scheduled-action.
--
-- * 'esSNSTopicARN' - The Amazon Resource Name (ARN) of the Amazon SNS topic used by the event notification subscription.
eventSubscription ::
  EventSubscription
eventSubscription =
  EventSubscription'
    { _esCustSubscriptionId = Nothing,
      _esStatus = Nothing,
      _esSourceIdsList = Nothing,
      _esSeverity = Nothing,
      _esEventCategoriesList = Nothing,
      _esEnabled = Nothing,
      _esSubscriptionCreationTime = Nothing,
      _esCustomerAWSId = Nothing,
      _esTags = Nothing,
      _esSourceType = Nothing,
      _esSNSTopicARN = Nothing
    }

-- | The name of the Amazon Redshift event notification subscription.
esCustSubscriptionId :: Lens' EventSubscription (Maybe Text)
esCustSubscriptionId = lens _esCustSubscriptionId (\s a -> s {_esCustSubscriptionId = a})

-- | The status of the Amazon Redshift event notification subscription. Constraints:     * Can be one of the following: active | no-permission | topic-not-exist     * The status "no-permission" indicates that Amazon Redshift no longer has permission to post to the Amazon SNS topic. The status "topic-not-exist" indicates that the topic was deleted after the subscription was created.
esStatus :: Lens' EventSubscription (Maybe Text)
esStatus = lens _esStatus (\s a -> s {_esStatus = a})

-- | A list of the sources that publish events to the Amazon Redshift event notification subscription.
esSourceIdsList :: Lens' EventSubscription [Text]
esSourceIdsList = lens _esSourceIdsList (\s a -> s {_esSourceIdsList = a}) . _Default . _Coerce

-- | The event severity specified in the Amazon Redshift event notification subscription. Values: ERROR, INFO
esSeverity :: Lens' EventSubscription (Maybe Text)
esSeverity = lens _esSeverity (\s a -> s {_esSeverity = a})

-- | The list of Amazon Redshift event categories specified in the event notification subscription. Values: Configuration, Management, Monitoring, Security
esEventCategoriesList :: Lens' EventSubscription [Text]
esEventCategoriesList = lens _esEventCategoriesList (\s a -> s {_esEventCategoriesList = a}) . _Default . _Coerce

-- | A boolean value indicating whether the subscription is enabled; @true@ indicates that the subscription is enabled.
esEnabled :: Lens' EventSubscription (Maybe Bool)
esEnabled = lens _esEnabled (\s a -> s {_esEnabled = a})

-- | The date and time the Amazon Redshift event notification subscription was created.
esSubscriptionCreationTime :: Lens' EventSubscription (Maybe UTCTime)
esSubscriptionCreationTime = lens _esSubscriptionCreationTime (\s a -> s {_esSubscriptionCreationTime = a}) . mapping _Time

-- | The AWS customer account associated with the Amazon Redshift event notification subscription.
esCustomerAWSId :: Lens' EventSubscription (Maybe Text)
esCustomerAWSId = lens _esCustomerAWSId (\s a -> s {_esCustomerAWSId = a})

-- | The list of tags for the event subscription.
esTags :: Lens' EventSubscription [Tag]
esTags = lens _esTags (\s a -> s {_esTags = a}) . _Default . _Coerce

-- | The source type of the events returned by the Amazon Redshift event notification, such as cluster, cluster-snapshot, cluster-parameter-group, cluster-security-group, or scheduled-action.
esSourceType :: Lens' EventSubscription (Maybe Text)
esSourceType = lens _esSourceType (\s a -> s {_esSourceType = a})

-- | The Amazon Resource Name (ARN) of the Amazon SNS topic used by the event notification subscription.
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
      <*> (x .@? "Severity")
      <*> ( x .@? "EventCategoriesList" .!@ mempty
              >>= may (parseXMLList "EventCategory")
          )
      <*> (x .@? "Enabled")
      <*> (x .@? "SubscriptionCreationTime")
      <*> (x .@? "CustomerAwsId")
      <*> ( x .@? "Tags" .!@ mempty
              >>= may (parseXMLList "Tag")
          )
      <*> (x .@? "SourceType")
      <*> (x .@? "SnsTopicArn")

instance Hashable EventSubscription

instance NFData EventSubscription
