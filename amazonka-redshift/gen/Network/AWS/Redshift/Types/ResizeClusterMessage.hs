{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.ResizeClusterMessage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ResizeClusterMessage where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal

-- | Describes a resize cluster operation. For example, a scheduled action to run the @ResizeCluster@ API operation.
--
--
--
-- /See:/ 'resizeClusterMessage' smart constructor.
data ResizeClusterMessage = ResizeClusterMessage'
  { _rClassic ::
      !(Maybe Bool),
    _rClusterType ::
      !(Maybe Text),
    _rNumberOfNodes ::
      !(Maybe Int),
    _rNodeType :: !(Maybe Text),
    _rClusterIdentifier :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResizeClusterMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rClassic' - A boolean value indicating whether the resize operation is using the classic resize process. If you don't provide this parameter or set the value to @false@ , the resize type is elastic.
--
-- * 'rClusterType' - The new cluster type for the specified cluster.
--
-- * 'rNumberOfNodes' - The new number of nodes for the cluster. If not specified, the cluster's current number of nodes is used.
--
-- * 'rNodeType' - The new node type for the nodes you are adding. If not specified, the cluster's current node type is used.
--
-- * 'rClusterIdentifier' - The unique identifier for the cluster to resize.
resizeClusterMessage ::
  -- | 'rClusterIdentifier'
  Text ->
  ResizeClusterMessage
resizeClusterMessage pClusterIdentifier_ =
  ResizeClusterMessage'
    { _rClassic = Nothing,
      _rClusterType = Nothing,
      _rNumberOfNodes = Nothing,
      _rNodeType = Nothing,
      _rClusterIdentifier = pClusterIdentifier_
    }

-- | A boolean value indicating whether the resize operation is using the classic resize process. If you don't provide this parameter or set the value to @false@ , the resize type is elastic.
rClassic :: Lens' ResizeClusterMessage (Maybe Bool)
rClassic = lens _rClassic (\s a -> s {_rClassic = a})

-- | The new cluster type for the specified cluster.
rClusterType :: Lens' ResizeClusterMessage (Maybe Text)
rClusterType = lens _rClusterType (\s a -> s {_rClusterType = a})

-- | The new number of nodes for the cluster. If not specified, the cluster's current number of nodes is used.
rNumberOfNodes :: Lens' ResizeClusterMessage (Maybe Int)
rNumberOfNodes = lens _rNumberOfNodes (\s a -> s {_rNumberOfNodes = a})

-- | The new node type for the nodes you are adding. If not specified, the cluster's current node type is used.
rNodeType :: Lens' ResizeClusterMessage (Maybe Text)
rNodeType = lens _rNodeType (\s a -> s {_rNodeType = a})

-- | The unique identifier for the cluster to resize.
rClusterIdentifier :: Lens' ResizeClusterMessage Text
rClusterIdentifier = lens _rClusterIdentifier (\s a -> s {_rClusterIdentifier = a})

instance FromXML ResizeClusterMessage where
  parseXML x =
    ResizeClusterMessage'
      <$> (x .@? "Classic")
      <*> (x .@? "ClusterType")
      <*> (x .@? "NumberOfNodes")
      <*> (x .@? "NodeType")
      <*> (x .@ "ClusterIdentifier")

instance Hashable ResizeClusterMessage

instance NFData ResizeClusterMessage

instance ToQuery ResizeClusterMessage where
  toQuery ResizeClusterMessage' {..} =
    mconcat
      [ "Classic" =: _rClassic,
        "ClusterType" =: _rClusterType,
        "NumberOfNodes" =: _rNumberOfNodes,
        "NodeType" =: _rNodeType,
        "ClusterIdentifier" =: _rClusterIdentifier
      ]
