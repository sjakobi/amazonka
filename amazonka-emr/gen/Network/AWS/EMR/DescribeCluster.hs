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
-- Module      : Network.AWS.EMR.DescribeCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides cluster-level details including status, hardware and software configuration, VPC settings, and so on.
module Network.AWS.EMR.DescribeCluster
  ( -- * Creating a Request
    describeCluster,
    DescribeCluster,

    -- * Request Lenses
    dcClusterId,

    -- * Destructuring the Response
    describeClusterResponse,
    DescribeClusterResponse,

    -- * Response Lenses
    dcrrsResponseStatus,
    dcrrsCluster,
  )
where

import Network.AWS.EMR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | This input determines which cluster to describe.
--
--
--
-- /See:/ 'describeCluster' smart constructor.
newtype DescribeCluster = DescribeCluster'
  { _dcClusterId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcClusterId' - The identifier of the cluster to describe.
describeCluster ::
  -- | 'dcClusterId'
  Text ->
  DescribeCluster
describeCluster pClusterId_ =
  DescribeCluster' {_dcClusterId = pClusterId_}

-- | The identifier of the cluster to describe.
dcClusterId :: Lens' DescribeCluster Text
dcClusterId = lens _dcClusterId (\s a -> s {_dcClusterId = a})

instance AWSRequest DescribeCluster where
  type Rs DescribeCluster = DescribeClusterResponse
  request = postJSON emr
  response =
    receiveJSON
      ( \s h x ->
          DescribeClusterResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "Cluster")
      )

instance Hashable DescribeCluster

instance NFData DescribeCluster

instance ToHeaders DescribeCluster where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("ElasticMapReduce.DescribeCluster" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeCluster where
  toJSON DescribeCluster' {..} =
    object
      (catMaybes [Just ("ClusterId" .= _dcClusterId)])

instance ToPath DescribeCluster where
  toPath = const "/"

instance ToQuery DescribeCluster where
  toQuery = const mempty

-- | This output contains the description of the cluster.
--
--
--
-- /See:/ 'describeClusterResponse' smart constructor.
data DescribeClusterResponse = DescribeClusterResponse'
  { _dcrrsResponseStatus ::
      !Int,
    _dcrrsCluster ::
      !Cluster
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeClusterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrrsResponseStatus' - -- | The response status code.
--
-- * 'dcrrsCluster' - This output contains the details for the requested cluster.
describeClusterResponse ::
  -- | 'dcrrsResponseStatus'
  Int ->
  -- | 'dcrrsCluster'
  Cluster ->
  DescribeClusterResponse
describeClusterResponse pResponseStatus_ pCluster_ =
  DescribeClusterResponse'
    { _dcrrsResponseStatus =
        pResponseStatus_,
      _dcrrsCluster = pCluster_
    }

-- | -- | The response status code.
dcrrsResponseStatus :: Lens' DescribeClusterResponse Int
dcrrsResponseStatus = lens _dcrrsResponseStatus (\s a -> s {_dcrrsResponseStatus = a})

-- | This output contains the details for the requested cluster.
dcrrsCluster :: Lens' DescribeClusterResponse Cluster
dcrrsCluster = lens _dcrrsCluster (\s a -> s {_dcrrsCluster = a})

instance NFData DescribeClusterResponse
