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
-- Module      : Network.AWS.RDS.DeleteGlobalCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a global database cluster. The primary and secondary clusters must already be detached or destroyed first.
module Network.AWS.RDS.DeleteGlobalCluster
  ( -- * Creating a Request
    deleteGlobalCluster,
    DeleteGlobalCluster,

    -- * Request Lenses
    dGlobalClusterIdentifier,

    -- * Destructuring the Response
    deleteGlobalClusterResponse,
    DeleteGlobalClusterResponse,

    -- * Response Lenses
    delrsGlobalCluster,
    delrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteGlobalCluster' smart constructor.
newtype DeleteGlobalCluster = DeleteGlobalCluster'
  { _dGlobalClusterIdentifier ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteGlobalCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dGlobalClusterIdentifier' - The cluster identifier of the global database cluster being deleted.
deleteGlobalCluster ::
  -- | 'dGlobalClusterIdentifier'
  Text ->
  DeleteGlobalCluster
deleteGlobalCluster pGlobalClusterIdentifier_ =
  DeleteGlobalCluster'
    { _dGlobalClusterIdentifier =
        pGlobalClusterIdentifier_
    }

-- | The cluster identifier of the global database cluster being deleted.
dGlobalClusterIdentifier :: Lens' DeleteGlobalCluster Text
dGlobalClusterIdentifier = lens _dGlobalClusterIdentifier (\s a -> s {_dGlobalClusterIdentifier = a})

instance AWSRequest DeleteGlobalCluster where
  type
    Rs DeleteGlobalCluster =
      DeleteGlobalClusterResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DeleteGlobalClusterResult"
      ( \s h x ->
          DeleteGlobalClusterResponse'
            <$> (x .@? "GlobalCluster") <*> (pure (fromEnum s))
      )

instance Hashable DeleteGlobalCluster

instance NFData DeleteGlobalCluster

instance ToHeaders DeleteGlobalCluster where
  toHeaders = const mempty

instance ToPath DeleteGlobalCluster where
  toPath = const "/"

instance ToQuery DeleteGlobalCluster where
  toQuery DeleteGlobalCluster' {..} =
    mconcat
      [ "Action" =: ("DeleteGlobalCluster" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "GlobalClusterIdentifier"
          =: _dGlobalClusterIdentifier
      ]

-- | /See:/ 'deleteGlobalClusterResponse' smart constructor.
data DeleteGlobalClusterResponse = DeleteGlobalClusterResponse'
  { _delrsGlobalCluster ::
      !( Maybe
           GlobalCluster
       ),
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

-- | Creates a value of 'DeleteGlobalClusterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delrsGlobalCluster' - Undocumented member.
--
-- * 'delrsResponseStatus' - -- | The response status code.
deleteGlobalClusterResponse ::
  -- | 'delrsResponseStatus'
  Int ->
  DeleteGlobalClusterResponse
deleteGlobalClusterResponse pResponseStatus_ =
  DeleteGlobalClusterResponse'
    { _delrsGlobalCluster =
        Nothing,
      _delrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
delrsGlobalCluster :: Lens' DeleteGlobalClusterResponse (Maybe GlobalCluster)
delrsGlobalCluster = lens _delrsGlobalCluster (\s a -> s {_delrsGlobalCluster = a})

-- | -- | The response status code.
delrsResponseStatus :: Lens' DeleteGlobalClusterResponse Int
delrsResponseStatus = lens _delrsResponseStatus (\s a -> s {_delrsResponseStatus = a})

instance NFData DeleteGlobalClusterResponse
