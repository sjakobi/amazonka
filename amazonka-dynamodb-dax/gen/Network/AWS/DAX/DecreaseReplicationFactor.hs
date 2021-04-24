{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DAX.DecreaseReplicationFactor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes one or more nodes from a DAX cluster.
module Network.AWS.DAX.DecreaseReplicationFactor
  ( -- * Creating a Request
    decreaseReplicationFactor,
    DecreaseReplicationFactor,

    -- * Request Lenses
    drfAvailabilityZones,
    drfNodeIdsToRemove,
    drfClusterName,
    drfNewReplicationFactor,

    -- * Destructuring the Response
    decreaseReplicationFactorResponse,
    DecreaseReplicationFactorResponse,

    -- * Response Lenses
    drfrrsCluster,
    drfrrsResponseStatus,
  )
where

import Network.AWS.DAX.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'decreaseReplicationFactor' smart constructor.
data DecreaseReplicationFactor = DecreaseReplicationFactor'
  { _drfAvailabilityZones ::
      !(Maybe [Text]),
    _drfNodeIdsToRemove ::
      !(Maybe [Text]),
    _drfClusterName ::
      !Text,
    _drfNewReplicationFactor ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DecreaseReplicationFactor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drfAvailabilityZones' - The Availability Zone(s) from which to remove nodes.
--
-- * 'drfNodeIdsToRemove' - The unique identifiers of the nodes to be removed from the cluster.
--
-- * 'drfClusterName' - The name of the DAX cluster from which you want to remove nodes.
--
-- * 'drfNewReplicationFactor' - The new number of nodes for the DAX cluster.
decreaseReplicationFactor ::
  -- | 'drfClusterName'
  Text ->
  -- | 'drfNewReplicationFactor'
  Int ->
  DecreaseReplicationFactor
decreaseReplicationFactor
  pClusterName_
  pNewReplicationFactor_ =
    DecreaseReplicationFactor'
      { _drfAvailabilityZones =
          Nothing,
        _drfNodeIdsToRemove = Nothing,
        _drfClusterName = pClusterName_,
        _drfNewReplicationFactor =
          pNewReplicationFactor_
      }

-- | The Availability Zone(s) from which to remove nodes.
drfAvailabilityZones :: Lens' DecreaseReplicationFactor [Text]
drfAvailabilityZones = lens _drfAvailabilityZones (\s a -> s {_drfAvailabilityZones = a}) . _Default . _Coerce

-- | The unique identifiers of the nodes to be removed from the cluster.
drfNodeIdsToRemove :: Lens' DecreaseReplicationFactor [Text]
drfNodeIdsToRemove = lens _drfNodeIdsToRemove (\s a -> s {_drfNodeIdsToRemove = a}) . _Default . _Coerce

-- | The name of the DAX cluster from which you want to remove nodes.
drfClusterName :: Lens' DecreaseReplicationFactor Text
drfClusterName = lens _drfClusterName (\s a -> s {_drfClusterName = a})

-- | The new number of nodes for the DAX cluster.
drfNewReplicationFactor :: Lens' DecreaseReplicationFactor Int
drfNewReplicationFactor = lens _drfNewReplicationFactor (\s a -> s {_drfNewReplicationFactor = a})

instance AWSRequest DecreaseReplicationFactor where
  type
    Rs DecreaseReplicationFactor =
      DecreaseReplicationFactorResponse
  request = postJSON dax
  response =
    receiveJSON
      ( \s h x ->
          DecreaseReplicationFactorResponse'
            <$> (x .?> "Cluster") <*> (pure (fromEnum s))
      )

instance Hashable DecreaseReplicationFactor

instance NFData DecreaseReplicationFactor

instance ToHeaders DecreaseReplicationFactor where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDAXV3.DecreaseReplicationFactor" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DecreaseReplicationFactor where
  toJSON DecreaseReplicationFactor' {..} =
    object
      ( catMaybes
          [ ("AvailabilityZones" .=) <$> _drfAvailabilityZones,
            ("NodeIdsToRemove" .=) <$> _drfNodeIdsToRemove,
            Just ("ClusterName" .= _drfClusterName),
            Just
              ( "NewReplicationFactor"
                  .= _drfNewReplicationFactor
              )
          ]
      )

instance ToPath DecreaseReplicationFactor where
  toPath = const "/"

instance ToQuery DecreaseReplicationFactor where
  toQuery = const mempty

-- | /See:/ 'decreaseReplicationFactorResponse' smart constructor.
data DecreaseReplicationFactorResponse = DecreaseReplicationFactorResponse'
  { _drfrrsCluster ::
      !( Maybe
           Cluster
       ),
    _drfrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DecreaseReplicationFactorResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drfrrsCluster' - A description of the DAX cluster, after you have decreased its replication factor.
--
-- * 'drfrrsResponseStatus' - -- | The response status code.
decreaseReplicationFactorResponse ::
  -- | 'drfrrsResponseStatus'
  Int ->
  DecreaseReplicationFactorResponse
decreaseReplicationFactorResponse pResponseStatus_ =
  DecreaseReplicationFactorResponse'
    { _drfrrsCluster =
        Nothing,
      _drfrrsResponseStatus = pResponseStatus_
    }

-- | A description of the DAX cluster, after you have decreased its replication factor.
drfrrsCluster :: Lens' DecreaseReplicationFactorResponse (Maybe Cluster)
drfrrsCluster = lens _drfrrsCluster (\s a -> s {_drfrrsCluster = a})

-- | -- | The response status code.
drfrrsResponseStatus :: Lens' DecreaseReplicationFactorResponse Int
drfrrsResponseStatus = lens _drfrrsResponseStatus (\s a -> s {_drfrrsResponseStatus = a})

instance NFData DecreaseReplicationFactorResponse
