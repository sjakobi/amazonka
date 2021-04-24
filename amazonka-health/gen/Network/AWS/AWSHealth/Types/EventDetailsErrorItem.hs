{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AWSHealth.Types.EventDetailsErrorItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AWSHealth.Types.EventDetailsErrorItem where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Error information returned when a <https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html DescribeEventDetails> operation cannot find a specified event.
--
--
--
-- /See:/ 'eventDetailsErrorItem' smart constructor.
data EventDetailsErrorItem = EventDetailsErrorItem'
  { _edeiErrorName ::
      !(Maybe Text),
    _edeiEventARN ::
      !(Maybe Text),
    _edeiErrorMessage ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'EventDetailsErrorItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edeiErrorName' - The name of the error.
--
-- * 'edeiEventARN' - The unique identifier for the event. Format: @arn:aws:health:/event-region/ ::event//SERVICE/ //EVENT_TYPE_CODE/ //EVENT_TYPE_PLUS_ID/ @ . Example: @Example: arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456@
--
-- * 'edeiErrorMessage' - A message that describes the error.
eventDetailsErrorItem ::
  EventDetailsErrorItem
eventDetailsErrorItem =
  EventDetailsErrorItem'
    { _edeiErrorName = Nothing,
      _edeiEventARN = Nothing,
      _edeiErrorMessage = Nothing
    }

-- | The name of the error.
edeiErrorName :: Lens' EventDetailsErrorItem (Maybe Text)
edeiErrorName = lens _edeiErrorName (\s a -> s {_edeiErrorName = a})

-- | The unique identifier for the event. Format: @arn:aws:health:/event-region/ ::event//SERVICE/ //EVENT_TYPE_CODE/ //EVENT_TYPE_PLUS_ID/ @ . Example: @Example: arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456@
edeiEventARN :: Lens' EventDetailsErrorItem (Maybe Text)
edeiEventARN = lens _edeiEventARN (\s a -> s {_edeiEventARN = a})

-- | A message that describes the error.
edeiErrorMessage :: Lens' EventDetailsErrorItem (Maybe Text)
edeiErrorMessage = lens _edeiErrorMessage (\s a -> s {_edeiErrorMessage = a})

instance FromJSON EventDetailsErrorItem where
  parseJSON =
    withObject
      "EventDetailsErrorItem"
      ( \x ->
          EventDetailsErrorItem'
            <$> (x .:? "errorName")
            <*> (x .:? "eventArn")
            <*> (x .:? "errorMessage")
      )

instance Hashable EventDetailsErrorItem

instance NFData EventDetailsErrorItem
