{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types.ReplicationDestination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.ReplicationDestination where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | An array of objects representing the details of a replication destination.
--
--
--
-- /See:/ 'replicationDestination' smart constructor.
data ReplicationDestination = ReplicationDestination'
  { _rdRegion ::
      !Text,
    _rdRegistryId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ReplicationDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdRegion' - A Region to replicate to.
--
-- * 'rdRegistryId' - The account ID of the destination registry to replicate to.
replicationDestination ::
  -- | 'rdRegion'
  Text ->
  -- | 'rdRegistryId'
  Text ->
  ReplicationDestination
replicationDestination pRegion_ pRegistryId_ =
  ReplicationDestination'
    { _rdRegion = pRegion_,
      _rdRegistryId = pRegistryId_
    }

-- | A Region to replicate to.
rdRegion :: Lens' ReplicationDestination Text
rdRegion = lens _rdRegion (\s a -> s {_rdRegion = a})

-- | The account ID of the destination registry to replicate to.
rdRegistryId :: Lens' ReplicationDestination Text
rdRegistryId = lens _rdRegistryId (\s a -> s {_rdRegistryId = a})

instance FromJSON ReplicationDestination where
  parseJSON =
    withObject
      "ReplicationDestination"
      ( \x ->
          ReplicationDestination'
            <$> (x .: "region") <*> (x .: "registryId")
      )

instance Hashable ReplicationDestination

instance NFData ReplicationDestination

instance ToJSON ReplicationDestination where
  toJSON ReplicationDestination' {..} =
    object
      ( catMaybes
          [ Just ("region" .= _rdRegion),
            Just ("registryId" .= _rdRegistryId)
          ]
      )
