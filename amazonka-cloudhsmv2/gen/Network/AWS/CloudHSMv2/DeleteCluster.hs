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
-- Module      : Network.AWS.CloudHSMv2.DeleteCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified AWS CloudHSM cluster. Before you can delete a cluster, you must delete all HSMs in the cluster. To see if the cluster contains any HSMs, use 'DescribeClusters' . To delete an HSM, use 'DeleteHsm' .
module Network.AWS.CloudHSMv2.DeleteCluster
  ( -- * Creating a Request
    deleteCluster,
    DeleteCluster,

    -- * Request Lenses
    dcClusterId,

    -- * Destructuring the Response
    deleteClusterResponse,
    DeleteClusterResponse,

    -- * Response Lenses
    delrsCluster,
    delrsResponseStatus,
  )
where

import Network.AWS.CloudHSMv2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteCluster' smart constructor.
newtype DeleteCluster = DeleteCluster'
  { _dcClusterId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcClusterId' - The identifier (ID) of the cluster that you are deleting. To find the cluster ID, use 'DescribeClusters' .
deleteCluster ::
  -- | 'dcClusterId'
  Text ->
  DeleteCluster
deleteCluster pClusterId_ =
  DeleteCluster' {_dcClusterId = pClusterId_}

-- | The identifier (ID) of the cluster that you are deleting. To find the cluster ID, use 'DescribeClusters' .
dcClusterId :: Lens' DeleteCluster Text
dcClusterId = lens _dcClusterId (\s a -> s {_dcClusterId = a})

instance AWSRequest DeleteCluster where
  type Rs DeleteCluster = DeleteClusterResponse
  request = postJSON cloudHSMv2
  response =
    receiveJSON
      ( \s h x ->
          DeleteClusterResponse'
            <$> (x .?> "Cluster") <*> (pure (fromEnum s))
      )

instance Hashable DeleteCluster

instance NFData DeleteCluster

instance ToHeaders DeleteCluster where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("BaldrApiService.DeleteCluster" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteCluster where
  toJSON DeleteCluster' {..} =
    object
      (catMaybes [Just ("ClusterId" .= _dcClusterId)])

instance ToPath DeleteCluster where
  toPath = const "/"

instance ToQuery DeleteCluster where
  toQuery = const mempty

-- | /See:/ 'deleteClusterResponse' smart constructor.
data DeleteClusterResponse = DeleteClusterResponse'
  { _delrsCluster ::
      !(Maybe Cluster),
    _delrsResponseStatus ::
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

-- | Creates a value of 'DeleteClusterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delrsCluster' - Information about the cluster that was deleted.
--
-- * 'delrsResponseStatus' - -- | The response status code.
deleteClusterResponse ::
  -- | 'delrsResponseStatus'
  Int ->
  DeleteClusterResponse
deleteClusterResponse pResponseStatus_ =
  DeleteClusterResponse'
    { _delrsCluster = Nothing,
      _delrsResponseStatus = pResponseStatus_
    }

-- | Information about the cluster that was deleted.
delrsCluster :: Lens' DeleteClusterResponse (Maybe Cluster)
delrsCluster = lens _delrsCluster (\s a -> s {_delrsCluster = a})

-- | -- | The response status code.
delrsResponseStatus :: Lens' DeleteClusterResponse Int
delrsResponseStatus = lens _delrsResponseStatus (\s a -> s {_delrsResponseStatus = a})

instance NFData DeleteClusterResponse
