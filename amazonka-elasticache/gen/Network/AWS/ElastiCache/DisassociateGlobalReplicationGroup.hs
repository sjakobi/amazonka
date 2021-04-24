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
-- Module      : Network.AWS.ElastiCache.DisassociateGlobalReplicationGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Remove a secondary cluster from the Global Datastore using the Global Datastore name. The secondary cluster will no longer receive updates from the primary cluster, but will remain as a standalone cluster in that AWS region.
module Network.AWS.ElastiCache.DisassociateGlobalReplicationGroup
  ( -- * Creating a Request
    disassociateGlobalReplicationGroup,
    DisassociateGlobalReplicationGroup,

    -- * Request Lenses
    dGlobalReplicationGroupId,
    dReplicationGroupId,
    dReplicationGroupRegion,

    -- * Destructuring the Response
    disassociateGlobalReplicationGroupResponse,
    DisassociateGlobalReplicationGroupResponse,

    -- * Response Lenses
    dgrgrrsGlobalReplicationGroup,
    dgrgrrsResponseStatus,
  )
where

import Network.AWS.ElastiCache.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'disassociateGlobalReplicationGroup' smart constructor.
data DisassociateGlobalReplicationGroup = DisassociateGlobalReplicationGroup'
  { _dGlobalReplicationGroupId ::
      !Text,
    _dReplicationGroupId ::
      !Text,
    _dReplicationGroupRegion ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DisassociateGlobalReplicationGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dGlobalReplicationGroupId' - The name of the Global Datastore
--
-- * 'dReplicationGroupId' - The name of the secondary cluster you wish to remove from the Global Datastore
--
-- * 'dReplicationGroupRegion' - The AWS region of secondary cluster you wish to remove from the Global Datastore
disassociateGlobalReplicationGroup ::
  -- | 'dGlobalReplicationGroupId'
  Text ->
  -- | 'dReplicationGroupId'
  Text ->
  -- | 'dReplicationGroupRegion'
  Text ->
  DisassociateGlobalReplicationGroup
disassociateGlobalReplicationGroup
  pGlobalReplicationGroupId_
  pReplicationGroupId_
  pReplicationGroupRegion_ =
    DisassociateGlobalReplicationGroup'
      { _dGlobalReplicationGroupId =
          pGlobalReplicationGroupId_,
        _dReplicationGroupId =
          pReplicationGroupId_,
        _dReplicationGroupRegion =
          pReplicationGroupRegion_
      }

-- | The name of the Global Datastore
dGlobalReplicationGroupId :: Lens' DisassociateGlobalReplicationGroup Text
dGlobalReplicationGroupId = lens _dGlobalReplicationGroupId (\s a -> s {_dGlobalReplicationGroupId = a})

-- | The name of the secondary cluster you wish to remove from the Global Datastore
dReplicationGroupId :: Lens' DisassociateGlobalReplicationGroup Text
dReplicationGroupId = lens _dReplicationGroupId (\s a -> s {_dReplicationGroupId = a})

-- | The AWS region of secondary cluster you wish to remove from the Global Datastore
dReplicationGroupRegion :: Lens' DisassociateGlobalReplicationGroup Text
dReplicationGroupRegion = lens _dReplicationGroupRegion (\s a -> s {_dReplicationGroupRegion = a})

instance
  AWSRequest
    DisassociateGlobalReplicationGroup
  where
  type
    Rs DisassociateGlobalReplicationGroup =
      DisassociateGlobalReplicationGroupResponse
  request = postQuery elastiCache
  response =
    receiveXMLWrapper
      "DisassociateGlobalReplicationGroupResult"
      ( \s h x ->
          DisassociateGlobalReplicationGroupResponse'
            <$> (x .@? "GlobalReplicationGroup")
            <*> (pure (fromEnum s))
      )

instance Hashable DisassociateGlobalReplicationGroup

instance NFData DisassociateGlobalReplicationGroup

instance ToHeaders DisassociateGlobalReplicationGroup where
  toHeaders = const mempty

instance ToPath DisassociateGlobalReplicationGroup where
  toPath = const "/"

instance ToQuery DisassociateGlobalReplicationGroup where
  toQuery DisassociateGlobalReplicationGroup' {..} =
    mconcat
      [ "Action"
          =: ("DisassociateGlobalReplicationGroup" :: ByteString),
        "Version" =: ("2015-02-02" :: ByteString),
        "GlobalReplicationGroupId"
          =: _dGlobalReplicationGroupId,
        "ReplicationGroupId" =: _dReplicationGroupId,
        "ReplicationGroupRegion" =: _dReplicationGroupRegion
      ]

-- | /See:/ 'disassociateGlobalReplicationGroupResponse' smart constructor.
data DisassociateGlobalReplicationGroupResponse = DisassociateGlobalReplicationGroupResponse'
  { _dgrgrrsGlobalReplicationGroup ::
      !( Maybe
           GlobalReplicationGroup
       ),
    _dgrgrrsResponseStatus ::
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

-- | Creates a value of 'DisassociateGlobalReplicationGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgrgrrsGlobalReplicationGroup' - Undocumented member.
--
-- * 'dgrgrrsResponseStatus' - -- | The response status code.
disassociateGlobalReplicationGroupResponse ::
  -- | 'dgrgrrsResponseStatus'
  Int ->
  DisassociateGlobalReplicationGroupResponse
disassociateGlobalReplicationGroupResponse
  pResponseStatus_ =
    DisassociateGlobalReplicationGroupResponse'
      { _dgrgrrsGlobalReplicationGroup =
          Nothing,
        _dgrgrrsResponseStatus =
          pResponseStatus_
      }

-- | Undocumented member.
dgrgrrsGlobalReplicationGroup :: Lens' DisassociateGlobalReplicationGroupResponse (Maybe GlobalReplicationGroup)
dgrgrrsGlobalReplicationGroup = lens _dgrgrrsGlobalReplicationGroup (\s a -> s {_dgrgrrsGlobalReplicationGroup = a})

-- | -- | The response status code.
dgrgrrsResponseStatus :: Lens' DisassociateGlobalReplicationGroupResponse Int
dgrgrrsResponseStatus = lens _dgrgrrsResponseStatus (\s a -> s {_dgrgrrsResponseStatus = a})

instance
  NFData
    DisassociateGlobalReplicationGroupResponse
