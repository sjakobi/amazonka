{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AWSHealth.Types.EntityAggregate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AWSHealth.Types.EntityAggregate where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The number of entities that are affected by one or more events. Returned by the <https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEntityAggregates.html DescribeEntityAggregates> operation.
--
--
--
-- /See:/ 'entityAggregate' smart constructor.
data EntityAggregate = EntityAggregate'
  { _eaEventARN ::
      !(Maybe Text),
    _eaCount :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EntityAggregate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eaEventARN' - The unique identifier for the event. Format: @arn:aws:health:/event-region/ ::event//SERVICE/ //EVENT_TYPE_CODE/ //EVENT_TYPE_PLUS_ID/ @ . Example: @Example: arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456@
--
-- * 'eaCount' - The number of entities that match the criteria for the specified events.
entityAggregate ::
  EntityAggregate
entityAggregate =
  EntityAggregate'
    { _eaEventARN = Nothing,
      _eaCount = Nothing
    }

-- | The unique identifier for the event. Format: @arn:aws:health:/event-region/ ::event//SERVICE/ //EVENT_TYPE_CODE/ //EVENT_TYPE_PLUS_ID/ @ . Example: @Example: arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456@
eaEventARN :: Lens' EntityAggregate (Maybe Text)
eaEventARN = lens _eaEventARN (\s a -> s {_eaEventARN = a})

-- | The number of entities that match the criteria for the specified events.
eaCount :: Lens' EntityAggregate (Maybe Int)
eaCount = lens _eaCount (\s a -> s {_eaCount = a})

instance FromJSON EntityAggregate where
  parseJSON =
    withObject
      "EntityAggregate"
      ( \x ->
          EntityAggregate'
            <$> (x .:? "eventArn") <*> (x .:? "count")
      )

instance Hashable EntityAggregate

instance NFData EntityAggregate
