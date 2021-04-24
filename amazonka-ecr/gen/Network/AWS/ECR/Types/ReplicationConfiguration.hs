{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types.ReplicationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.ReplicationConfiguration where

import Network.AWS.ECR.Types.ReplicationRule
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The replication configuration for a registry.
--
--
--
-- /See:/ 'replicationConfiguration' smart constructor.
newtype ReplicationConfiguration = ReplicationConfiguration'
  { _rcRules ::
      [ReplicationRule]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ReplicationConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcRules' - An array of objects representing the replication rules for a replication configuration. A replication configuration may contain only one replication rule but the rule may contain one or more replication destinations.
replicationConfiguration ::
  ReplicationConfiguration
replicationConfiguration =
  ReplicationConfiguration' {_rcRules = mempty}

-- | An array of objects representing the replication rules for a replication configuration. A replication configuration may contain only one replication rule but the rule may contain one or more replication destinations.
rcRules :: Lens' ReplicationConfiguration [ReplicationRule]
rcRules = lens _rcRules (\s a -> s {_rcRules = a}) . _Coerce

instance FromJSON ReplicationConfiguration where
  parseJSON =
    withObject
      "ReplicationConfiguration"
      ( \x ->
          ReplicationConfiguration'
            <$> (x .:? "rules" .!= mempty)
      )

instance Hashable ReplicationConfiguration

instance NFData ReplicationConfiguration

instance ToJSON ReplicationConfiguration where
  toJSON ReplicationConfiguration' {..} =
    object (catMaybes [Just ("rules" .= _rcRules)])
