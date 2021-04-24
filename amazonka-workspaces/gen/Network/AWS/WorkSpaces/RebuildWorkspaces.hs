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
-- Module      : Network.AWS.WorkSpaces.RebuildWorkspaces
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rebuilds the specified WorkSpace.
--
--
-- You cannot rebuild a WorkSpace unless its state is @AVAILABLE@ , @ERROR@ , @UNHEALTHY@ , @STOPPED@ , or @REBOOTING@ .
--
-- Rebuilding a WorkSpace is a potentially destructive action that can result in the loss of data. For more information, see <https://docs.aws.amazon.com/workspaces/latest/adminguide/reset-workspace.html Rebuild a WorkSpace> .
--
-- This operation is asynchronous and returns before the WorkSpaces have been completely rebuilt.
module Network.AWS.WorkSpaces.RebuildWorkspaces
  ( -- * Creating a Request
    rebuildWorkspaces,
    RebuildWorkspaces,

    -- * Request Lenses
    rwRebuildWorkspaceRequests,

    -- * Destructuring the Response
    rebuildWorkspacesResponse,
    RebuildWorkspacesResponse,

    -- * Response Lenses
    rrsFailedRequests,
    rrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkSpaces.Types

-- | /See:/ 'rebuildWorkspaces' smart constructor.
newtype RebuildWorkspaces = RebuildWorkspaces'
  { _rwRebuildWorkspaceRequests ::
      List1 RebuildRequest
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RebuildWorkspaces' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rwRebuildWorkspaceRequests' - The WorkSpace to rebuild. You can specify a single WorkSpace.
rebuildWorkspaces ::
  -- | 'rwRebuildWorkspaceRequests'
  NonEmpty RebuildRequest ->
  RebuildWorkspaces
rebuildWorkspaces pRebuildWorkspaceRequests_ =
  RebuildWorkspaces'
    { _rwRebuildWorkspaceRequests =
        _List1 # pRebuildWorkspaceRequests_
    }

-- | The WorkSpace to rebuild. You can specify a single WorkSpace.
rwRebuildWorkspaceRequests :: Lens' RebuildWorkspaces (NonEmpty RebuildRequest)
rwRebuildWorkspaceRequests = lens _rwRebuildWorkspaceRequests (\s a -> s {_rwRebuildWorkspaceRequests = a}) . _List1

instance AWSRequest RebuildWorkspaces where
  type Rs RebuildWorkspaces = RebuildWorkspacesResponse
  request = postJSON workSpaces
  response =
    receiveJSON
      ( \s h x ->
          RebuildWorkspacesResponse'
            <$> (x .?> "FailedRequests" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable RebuildWorkspaces

instance NFData RebuildWorkspaces

instance ToHeaders RebuildWorkspaces where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "WorkspacesService.RebuildWorkspaces" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RebuildWorkspaces where
  toJSON RebuildWorkspaces' {..} =
    object
      ( catMaybes
          [ Just
              ( "RebuildWorkspaceRequests"
                  .= _rwRebuildWorkspaceRequests
              )
          ]
      )

instance ToPath RebuildWorkspaces where
  toPath = const "/"

instance ToQuery RebuildWorkspaces where
  toQuery = const mempty

-- | /See:/ 'rebuildWorkspacesResponse' smart constructor.
data RebuildWorkspacesResponse = RebuildWorkspacesResponse'
  { _rrsFailedRequests ::
      !( Maybe
           [FailedWorkspaceChangeRequest]
       ),
    _rrsResponseStatus ::
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

-- | Creates a value of 'RebuildWorkspacesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrsFailedRequests' - Information about the WorkSpace that could not be rebuilt.
--
-- * 'rrsResponseStatus' - -- | The response status code.
rebuildWorkspacesResponse ::
  -- | 'rrsResponseStatus'
  Int ->
  RebuildWorkspacesResponse
rebuildWorkspacesResponse pResponseStatus_ =
  RebuildWorkspacesResponse'
    { _rrsFailedRequests =
        Nothing,
      _rrsResponseStatus = pResponseStatus_
    }

-- | Information about the WorkSpace that could not be rebuilt.
rrsFailedRequests :: Lens' RebuildWorkspacesResponse [FailedWorkspaceChangeRequest]
rrsFailedRequests = lens _rrsFailedRequests (\s a -> s {_rrsFailedRequests = a}) . _Default . _Coerce

-- | -- | The response status code.
rrsResponseStatus :: Lens' RebuildWorkspacesResponse Int
rrsResponseStatus = lens _rrsResponseStatus (\s a -> s {_rrsResponseStatus = a})

instance NFData RebuildWorkspacesResponse
