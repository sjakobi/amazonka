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
-- Module      : Network.AWS.WorkSpaces.CreateWorkspaces
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates one or more WorkSpaces.
--
--
-- This operation is asynchronous and returns before the WorkSpaces are created.
module Network.AWS.WorkSpaces.CreateWorkspaces
  ( -- * Creating a Request
    createWorkspaces,
    CreateWorkspaces,

    -- * Request Lenses
    cwWorkspaces,

    -- * Destructuring the Response
    createWorkspacesResponse,
    CreateWorkspacesResponse,

    -- * Response Lenses
    cwrrsFailedRequests,
    cwrrsPendingRequests,
    cwrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkSpaces.Types

-- | /See:/ 'createWorkspaces' smart constructor.
newtype CreateWorkspaces = CreateWorkspaces'
  { _cwWorkspaces ::
      List1 WorkspaceRequest
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateWorkspaces' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwWorkspaces' - The WorkSpaces to create. You can specify up to 25 WorkSpaces.
createWorkspaces ::
  -- | 'cwWorkspaces'
  NonEmpty WorkspaceRequest ->
  CreateWorkspaces
createWorkspaces pWorkspaces_ =
  CreateWorkspaces'
    { _cwWorkspaces =
        _List1 # pWorkspaces_
    }

-- | The WorkSpaces to create. You can specify up to 25 WorkSpaces.
cwWorkspaces :: Lens' CreateWorkspaces (NonEmpty WorkspaceRequest)
cwWorkspaces = lens _cwWorkspaces (\s a -> s {_cwWorkspaces = a}) . _List1

instance AWSRequest CreateWorkspaces where
  type Rs CreateWorkspaces = CreateWorkspacesResponse
  request = postJSON workSpaces
  response =
    receiveJSON
      ( \s h x ->
          CreateWorkspacesResponse'
            <$> (x .?> "FailedRequests" .!@ mempty)
            <*> (x .?> "PendingRequests" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable CreateWorkspaces

instance NFData CreateWorkspaces

instance ToHeaders CreateWorkspaces where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("WorkspacesService.CreateWorkspaces" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateWorkspaces where
  toJSON CreateWorkspaces' {..} =
    object
      (catMaybes [Just ("Workspaces" .= _cwWorkspaces)])

instance ToPath CreateWorkspaces where
  toPath = const "/"

instance ToQuery CreateWorkspaces where
  toQuery = const mempty

-- | /See:/ 'createWorkspacesResponse' smart constructor.
data CreateWorkspacesResponse = CreateWorkspacesResponse'
  { _cwrrsFailedRequests ::
      !( Maybe
           [FailedCreateWorkspaceRequest]
       ),
    _cwrrsPendingRequests ::
      !(Maybe [Workspace]),
    _cwrrsResponseStatus ::
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

-- | Creates a value of 'CreateWorkspacesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwrrsFailedRequests' - Information about the WorkSpaces that could not be created.
--
-- * 'cwrrsPendingRequests' - Information about the WorkSpaces that were created. Because this operation is asynchronous, the identifier returned is not immediately available for use with other operations. For example, if you call 'DescribeWorkspaces' before the WorkSpace is created, the information returned can be incomplete.
--
-- * 'cwrrsResponseStatus' - -- | The response status code.
createWorkspacesResponse ::
  -- | 'cwrrsResponseStatus'
  Int ->
  CreateWorkspacesResponse
createWorkspacesResponse pResponseStatus_ =
  CreateWorkspacesResponse'
    { _cwrrsFailedRequests =
        Nothing,
      _cwrrsPendingRequests = Nothing,
      _cwrrsResponseStatus = pResponseStatus_
    }

-- | Information about the WorkSpaces that could not be created.
cwrrsFailedRequests :: Lens' CreateWorkspacesResponse [FailedCreateWorkspaceRequest]
cwrrsFailedRequests = lens _cwrrsFailedRequests (\s a -> s {_cwrrsFailedRequests = a}) . _Default . _Coerce

-- | Information about the WorkSpaces that were created. Because this operation is asynchronous, the identifier returned is not immediately available for use with other operations. For example, if you call 'DescribeWorkspaces' before the WorkSpace is created, the information returned can be incomplete.
cwrrsPendingRequests :: Lens' CreateWorkspacesResponse [Workspace]
cwrrsPendingRequests = lens _cwrrsPendingRequests (\s a -> s {_cwrrsPendingRequests = a}) . _Default . _Coerce

-- | -- | The response status code.
cwrrsResponseStatus :: Lens' CreateWorkspacesResponse Int
cwrrsResponseStatus = lens _cwrrsResponseStatus (\s a -> s {_cwrrsResponseStatus = a})

instance NFData CreateWorkspacesResponse
