{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types.ReplicationRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.ReplicationRule where

import Network.AWS.ECR.Types.ReplicationDestination
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An array of objects representing the replication destinations for a replication configuration. A replication configuration may contain only one replication rule but the rule may contain one or more replication destinations.
--
--
--
-- /See:/ 'replicationRule' smart constructor.
newtype ReplicationRule = ReplicationRule'
  { _rrDestinations ::
      [ReplicationDestination]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReplicationRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrDestinations' - An array of objects representing the details of a replication destination.
replicationRule ::
  ReplicationRule
replicationRule =
  ReplicationRule' {_rrDestinations = mempty}

-- | An array of objects representing the details of a replication destination.
rrDestinations :: Lens' ReplicationRule [ReplicationDestination]
rrDestinations = lens _rrDestinations (\s a -> s {_rrDestinations = a}) . _Coerce

instance FromJSON ReplicationRule where
  parseJSON =
    withObject
      "ReplicationRule"
      ( \x ->
          ReplicationRule'
            <$> (x .:? "destinations" .!= mempty)
      )

instance Hashable ReplicationRule

instance NFData ReplicationRule

instance ToJSON ReplicationRule where
  toJSON ReplicationRule' {..} =
    object
      ( catMaybes
          [Just ("destinations" .= _rrDestinations)]
      )
