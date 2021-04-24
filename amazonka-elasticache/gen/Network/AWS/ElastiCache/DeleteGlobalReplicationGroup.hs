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
-- Module      : Network.AWS.ElastiCache.DeleteGlobalReplicationGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deleting a Global Datastore is a two-step process:
--
--
--     * First, you must 'DisassociateGlobalReplicationGroup' to remove the secondary clusters in the Global Datastore.
--
--     * Once the Global Datastore contains only the primary cluster, you can use DeleteGlobalReplicationGroup API to delete the Global Datastore while retainining the primary cluster using Retain…= true.
--
--
--
-- Since the Global Datastore has only a primary cluster, you can delete the Global Datastore while retaining the primary by setting @RetainPrimaryCluster=true@ .
--
-- When you receive a successful response from this operation, Amazon ElastiCache immediately begins deleting the selected resources; you cannot cancel or revert this operation.
module Network.AWS.ElastiCache.DeleteGlobalReplicationGroup
  ( -- * Creating a Request
    deleteGlobalReplicationGroup,
    DeleteGlobalReplicationGroup,

    -- * Request Lenses
    delGlobalReplicationGroupId,
    delRetainPrimaryReplicationGroup,

    -- * Destructuring the Response
    deleteGlobalReplicationGroupResponse,
    DeleteGlobalReplicationGroupResponse,

    -- * Response Lenses
    ddrsGlobalReplicationGroup,
    ddrsResponseStatus,
  )
where

import Network.AWS.ElastiCache.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteGlobalReplicationGroup' smart constructor.
data DeleteGlobalReplicationGroup = DeleteGlobalReplicationGroup'
  { _delGlobalReplicationGroupId ::
      !Text,
    _delRetainPrimaryReplicationGroup ::
      !Bool
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteGlobalReplicationGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delGlobalReplicationGroupId' - The name of the Global Datastore
--
-- * 'delRetainPrimaryReplicationGroup' - The primary replication group is retained as a standalone replication group.
deleteGlobalReplicationGroup ::
  -- | 'delGlobalReplicationGroupId'
  Text ->
  -- | 'delRetainPrimaryReplicationGroup'
  Bool ->
  DeleteGlobalReplicationGroup
deleteGlobalReplicationGroup
  pGlobalReplicationGroupId_
  pRetainPrimaryReplicationGroup_ =
    DeleteGlobalReplicationGroup'
      { _delGlobalReplicationGroupId =
          pGlobalReplicationGroupId_,
        _delRetainPrimaryReplicationGroup =
          pRetainPrimaryReplicationGroup_
      }

-- | The name of the Global Datastore
delGlobalReplicationGroupId :: Lens' DeleteGlobalReplicationGroup Text
delGlobalReplicationGroupId = lens _delGlobalReplicationGroupId (\s a -> s {_delGlobalReplicationGroupId = a})

-- | The primary replication group is retained as a standalone replication group.
delRetainPrimaryReplicationGroup :: Lens' DeleteGlobalReplicationGroup Bool
delRetainPrimaryReplicationGroup = lens _delRetainPrimaryReplicationGroup (\s a -> s {_delRetainPrimaryReplicationGroup = a})

instance AWSRequest DeleteGlobalReplicationGroup where
  type
    Rs DeleteGlobalReplicationGroup =
      DeleteGlobalReplicationGroupResponse
  request = postQuery elastiCache
  response =
    receiveXMLWrapper
      "DeleteGlobalReplicationGroupResult"
      ( \s h x ->
          DeleteGlobalReplicationGroupResponse'
            <$> (x .@? "GlobalReplicationGroup")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteGlobalReplicationGroup

instance NFData DeleteGlobalReplicationGroup

instance ToHeaders DeleteGlobalReplicationGroup where
  toHeaders = const mempty

instance ToPath DeleteGlobalReplicationGroup where
  toPath = const "/"

instance ToQuery DeleteGlobalReplicationGroup where
  toQuery DeleteGlobalReplicationGroup' {..} =
    mconcat
      [ "Action"
          =: ("DeleteGlobalReplicationGroup" :: ByteString),
        "Version" =: ("2015-02-02" :: ByteString),
        "GlobalReplicationGroupId"
          =: _delGlobalReplicationGroupId,
        "RetainPrimaryReplicationGroup"
          =: _delRetainPrimaryReplicationGroup
      ]

-- | /See:/ 'deleteGlobalReplicationGroupResponse' smart constructor.
data DeleteGlobalReplicationGroupResponse = DeleteGlobalReplicationGroupResponse'
  { _ddrsGlobalReplicationGroup ::
      !( Maybe
           GlobalReplicationGroup
       ),
    _ddrsResponseStatus ::
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

-- | Creates a value of 'DeleteGlobalReplicationGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddrsGlobalReplicationGroup' - Undocumented member.
--
-- * 'ddrsResponseStatus' - -- | The response status code.
deleteGlobalReplicationGroupResponse ::
  -- | 'ddrsResponseStatus'
  Int ->
  DeleteGlobalReplicationGroupResponse
deleteGlobalReplicationGroupResponse pResponseStatus_ =
  DeleteGlobalReplicationGroupResponse'
    { _ddrsGlobalReplicationGroup =
        Nothing,
      _ddrsResponseStatus =
        pResponseStatus_
    }

-- | Undocumented member.
ddrsGlobalReplicationGroup :: Lens' DeleteGlobalReplicationGroupResponse (Maybe GlobalReplicationGroup)
ddrsGlobalReplicationGroup = lens _ddrsGlobalReplicationGroup (\s a -> s {_ddrsGlobalReplicationGroup = a})

-- | -- | The response status code.
ddrsResponseStatus :: Lens' DeleteGlobalReplicationGroupResponse Int
ddrsResponseStatus = lens _ddrsResponseStatus (\s a -> s {_ddrsResponseStatus = a})

instance NFData DeleteGlobalReplicationGroupResponse
