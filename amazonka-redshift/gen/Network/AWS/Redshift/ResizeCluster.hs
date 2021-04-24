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
-- Module      : Network.AWS.Redshift.ResizeCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the size of the cluster. You can change the cluster's type, or change the number or type of nodes. The default behavior is to use the elastic resize method. With an elastic resize, your cluster is available for read and write operations more quickly than with the classic resize method.
--
--
-- Elastic resize operations have the following restrictions:
--
--     * You can only resize clusters of the following types:
--
--     * dc1.large (if your cluster is in a VPC)
--
--     * dc1.8xlarge (if your cluster is in a VPC)
--
--     * dc2.large
--
--     * dc2.8xlarge
--
--     * ds2.xlarge
--
--     * ds2.8xlarge
--
--     * ra3.xlplus
--
--     * ra3.4xlarge
--
--     * ra3.16xlarge
--
--
--
--     * The type of nodes that you add must match the node type for the cluster.
module Network.AWS.Redshift.ResizeCluster
  ( -- * Creating a Request
    resizeCluster,
    ResizeCluster,

    -- * Request Lenses
    rccClassic,
    rccClusterType,
    rccNumberOfNodes,
    rccNodeType,
    rccClusterIdentifier,

    -- * Destructuring the Response
    resizeClusterResponse,
    ResizeClusterResponse,

    -- * Response Lenses
    rcrrsCluster,
    rcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
import Network.AWS.Request
import Network.AWS.Response

-- | Describes a resize cluster operation. For example, a scheduled action to run the @ResizeCluster@ API operation.
--
--
--
-- /See:/ 'resizeCluster' smart constructor.
data ResizeCluster = ResizeCluster'
  { _rccClassic ::
      !(Maybe Bool),
    _rccClusterType :: !(Maybe Text),
    _rccNumberOfNodes :: !(Maybe Int),
    _rccNodeType :: !(Maybe Text),
    _rccClusterIdentifier :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResizeCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rccClassic' - A boolean value indicating whether the resize operation is using the classic resize process. If you don't provide this parameter or set the value to @false@ , the resize type is elastic.
--
-- * 'rccClusterType' - The new cluster type for the specified cluster.
--
-- * 'rccNumberOfNodes' - The new number of nodes for the cluster. If not specified, the cluster's current number of nodes is used.
--
-- * 'rccNodeType' - The new node type for the nodes you are adding. If not specified, the cluster's current node type is used.
--
-- * 'rccClusterIdentifier' - The unique identifier for the cluster to resize.
resizeCluster ::
  -- | 'rccClusterIdentifier'
  Text ->
  ResizeCluster
resizeCluster pClusterIdentifier_ =
  ResizeCluster'
    { _rccClassic = Nothing,
      _rccClusterType = Nothing,
      _rccNumberOfNodes = Nothing,
      _rccNodeType = Nothing,
      _rccClusterIdentifier = pClusterIdentifier_
    }

-- | A boolean value indicating whether the resize operation is using the classic resize process. If you don't provide this parameter or set the value to @false@ , the resize type is elastic.
rccClassic :: Lens' ResizeCluster (Maybe Bool)
rccClassic = lens _rccClassic (\s a -> s {_rccClassic = a})

-- | The new cluster type for the specified cluster.
rccClusterType :: Lens' ResizeCluster (Maybe Text)
rccClusterType = lens _rccClusterType (\s a -> s {_rccClusterType = a})

-- | The new number of nodes for the cluster. If not specified, the cluster's current number of nodes is used.
rccNumberOfNodes :: Lens' ResizeCluster (Maybe Int)
rccNumberOfNodes = lens _rccNumberOfNodes (\s a -> s {_rccNumberOfNodes = a})

-- | The new node type for the nodes you are adding. If not specified, the cluster's current node type is used.
rccNodeType :: Lens' ResizeCluster (Maybe Text)
rccNodeType = lens _rccNodeType (\s a -> s {_rccNodeType = a})

-- | The unique identifier for the cluster to resize.
rccClusterIdentifier :: Lens' ResizeCluster Text
rccClusterIdentifier = lens _rccClusterIdentifier (\s a -> s {_rccClusterIdentifier = a})

instance AWSRequest ResizeCluster where
  type Rs ResizeCluster = ResizeClusterResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "ResizeClusterResult"
      ( \s h x ->
          ResizeClusterResponse'
            <$> (x .@? "Cluster") <*> (pure (fromEnum s))
      )

instance Hashable ResizeCluster

instance NFData ResizeCluster

instance ToHeaders ResizeCluster where
  toHeaders = const mempty

instance ToPath ResizeCluster where
  toPath = const "/"

instance ToQuery ResizeCluster where
  toQuery ResizeCluster' {..} =
    mconcat
      [ "Action" =: ("ResizeCluster" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "Classic" =: _rccClassic,
        "ClusterType" =: _rccClusterType,
        "NumberOfNodes" =: _rccNumberOfNodes,
        "NodeType" =: _rccNodeType,
        "ClusterIdentifier" =: _rccClusterIdentifier
      ]

-- | /See:/ 'resizeClusterResponse' smart constructor.
data ResizeClusterResponse = ResizeClusterResponse'
  { _rcrrsCluster ::
      !(Maybe Cluster),
    _rcrrsResponseStatus ::
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

-- | Creates a value of 'ResizeClusterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcrrsCluster' - Undocumented member.
--
-- * 'rcrrsResponseStatus' - -- | The response status code.
resizeClusterResponse ::
  -- | 'rcrrsResponseStatus'
  Int ->
  ResizeClusterResponse
resizeClusterResponse pResponseStatus_ =
  ResizeClusterResponse'
    { _rcrrsCluster = Nothing,
      _rcrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
rcrrsCluster :: Lens' ResizeClusterResponse (Maybe Cluster)
rcrrsCluster = lens _rcrrsCluster (\s a -> s {_rcrrsCluster = a})

-- | -- | The response status code.
rcrrsResponseStatus :: Lens' ResizeClusterResponse Int
rcrrsResponseStatus = lens _rcrrsResponseStatus (\s a -> s {_rcrrsResponseStatus = a})

instance NFData ResizeClusterResponse
