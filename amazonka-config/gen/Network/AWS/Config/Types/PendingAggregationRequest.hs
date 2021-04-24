{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.PendingAggregationRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.PendingAggregationRequest where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object that represents the account ID and region of an aggregator account that is requesting authorization but is not yet authorized.
--
--
--
-- /See:/ 'pendingAggregationRequest' smart constructor.
data PendingAggregationRequest = PendingAggregationRequest'
  { _parRequesterAWSRegion ::
      !(Maybe Text),
    _parRequesterAccountId ::
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

-- | Creates a value of 'PendingAggregationRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'parRequesterAWSRegion' - The region requesting to aggregate data.
--
-- * 'parRequesterAccountId' - The 12-digit account ID of the account requesting to aggregate data.
pendingAggregationRequest ::
  PendingAggregationRequest
pendingAggregationRequest =
  PendingAggregationRequest'
    { _parRequesterAWSRegion =
        Nothing,
      _parRequesterAccountId = Nothing
    }

-- | The region requesting to aggregate data.
parRequesterAWSRegion :: Lens' PendingAggregationRequest (Maybe Text)
parRequesterAWSRegion = lens _parRequesterAWSRegion (\s a -> s {_parRequesterAWSRegion = a})

-- | The 12-digit account ID of the account requesting to aggregate data.
parRequesterAccountId :: Lens' PendingAggregationRequest (Maybe Text)
parRequesterAccountId = lens _parRequesterAccountId (\s a -> s {_parRequesterAccountId = a})

instance FromJSON PendingAggregationRequest where
  parseJSON =
    withObject
      "PendingAggregationRequest"
      ( \x ->
          PendingAggregationRequest'
            <$> (x .:? "RequesterAwsRegion")
            <*> (x .:? "RequesterAccountId")
      )

instance Hashable PendingAggregationRequest

instance NFData PendingAggregationRequest
