{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AWSHealth.Types.EventType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AWSHealth.Types.EventType where

import Network.AWS.AWSHealth.Types.EventTypeCategory
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the metadata about a type of event that is reported by AWS Health. The @EventType@ shows the category, service, and the event type code of the event. For example, an @issue@ might be the category, @EC2@ the service, and @AWS_EC2_SYSTEM_MAINTENANCE_EVENT@ the event type code.
--
--
-- You can use the <https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventTypes.html DescribeEventTypes> API operation to return this information about an event.
--
-- You can also use the Amazon CloudWatch Events console to create a rule so that you can get notified or take action when AWS Health delivers a specific event to your AWS account. For more information, see <https://docs.aws.amazon.com/health/latest/ug/cloudwatch-events-health.html Monitor for AWS Health events with Amazon CloudWatch Events> in the /AWS Health User Guide/ .
--
--
-- /See:/ 'eventType' smart constructor.
data EventType = EventType'
  { _etCategory ::
      !(Maybe EventTypeCategory),
    _etCode :: !(Maybe Text),
    _etService :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EventType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etCategory' - A list of event type category codes (@issue@ , @scheduledChange@ , or @accountNotification@ ).
--
-- * 'etCode' - The unique identifier for the event type. The format is @AWS_/SERVICE/ _/DESCRIPTION/ @ ; for example, @AWS_EC2_SYSTEM_MAINTENANCE_EVENT@ .
--
-- * 'etService' - The AWS service that is affected by the event. For example, @EC2@ , @RDS@ .
eventType ::
  EventType
eventType =
  EventType'
    { _etCategory = Nothing,
      _etCode = Nothing,
      _etService = Nothing
    }

-- | A list of event type category codes (@issue@ , @scheduledChange@ , or @accountNotification@ ).
etCategory :: Lens' EventType (Maybe EventTypeCategory)
etCategory = lens _etCategory (\s a -> s {_etCategory = a})

-- | The unique identifier for the event type. The format is @AWS_/SERVICE/ _/DESCRIPTION/ @ ; for example, @AWS_EC2_SYSTEM_MAINTENANCE_EVENT@ .
etCode :: Lens' EventType (Maybe Text)
etCode = lens _etCode (\s a -> s {_etCode = a})

-- | The AWS service that is affected by the event. For example, @EC2@ , @RDS@ .
etService :: Lens' EventType (Maybe Text)
etService = lens _etService (\s a -> s {_etService = a})

instance FromJSON EventType where
  parseJSON =
    withObject
      "EventType"
      ( \x ->
          EventType'
            <$> (x .:? "category")
            <*> (x .:? "code")
            <*> (x .:? "service")
      )

instance Hashable EventType

instance NFData EventType
