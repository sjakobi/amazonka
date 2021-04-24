{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AWSHealth.Types.EventAggregate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AWSHealth.Types.EventAggregate where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The number of events of each issue type. Returned by the <https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventAggregates.html DescribeEventAggregates> operation.
--
--
--
-- /See:/ 'eventAggregate' smart constructor.
data EventAggregate = EventAggregate'
  { _eCount ::
      !(Maybe Int),
    _eAggregateValue :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EventAggregate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eCount' - The number of events of the associated issue type.
--
-- * 'eAggregateValue' - The issue type for the associated count.
eventAggregate ::
  EventAggregate
eventAggregate =
  EventAggregate'
    { _eCount = Nothing,
      _eAggregateValue = Nothing
    }

-- | The number of events of the associated issue type.
eCount :: Lens' EventAggregate (Maybe Int)
eCount = lens _eCount (\s a -> s {_eCount = a})

-- | The issue type for the associated count.
eAggregateValue :: Lens' EventAggregate (Maybe Text)
eAggregateValue = lens _eAggregateValue (\s a -> s {_eAggregateValue = a})

instance FromJSON EventAggregate where
  parseJSON =
    withObject
      "EventAggregate"
      ( \x ->
          EventAggregate'
            <$> (x .:? "count") <*> (x .:? "aggregateValue")
      )

instance Hashable EventAggregate

instance NFData EventAggregate
