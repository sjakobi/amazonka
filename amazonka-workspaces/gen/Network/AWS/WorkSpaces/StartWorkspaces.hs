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
-- Module      : Network.AWS.WorkSpaces.StartWorkspaces
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts the specified WorkSpaces.
--
--
-- You cannot start a WorkSpace unless it has a running mode of @AutoStop@ and a state of @STOPPED@ .
module Network.AWS.WorkSpaces.StartWorkspaces
  ( -- * Creating a Request
    startWorkspaces,
    StartWorkspaces,

    -- * Request Lenses
    swStartWorkspaceRequests,

    -- * Destructuring the Response
    startWorkspacesResponse,
    StartWorkspacesResponse,

    -- * Response Lenses
    srsFailedRequests,
    srsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkSpaces.Types

-- | /See:/ 'startWorkspaces' smart constructor.
newtype StartWorkspaces = StartWorkspaces'
  { _swStartWorkspaceRequests ::
      List1 StartRequest
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartWorkspaces' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'swStartWorkspaceRequests' - The WorkSpaces to start. You can specify up to 25 WorkSpaces.
startWorkspaces ::
  -- | 'swStartWorkspaceRequests'
  NonEmpty StartRequest ->
  StartWorkspaces
startWorkspaces pStartWorkspaceRequests_ =
  StartWorkspaces'
    { _swStartWorkspaceRequests =
        _List1 # pStartWorkspaceRequests_
    }

-- | The WorkSpaces to start. You can specify up to 25 WorkSpaces.
swStartWorkspaceRequests :: Lens' StartWorkspaces (NonEmpty StartRequest)
swStartWorkspaceRequests = lens _swStartWorkspaceRequests (\s a -> s {_swStartWorkspaceRequests = a}) . _List1

instance AWSRequest StartWorkspaces where
  type Rs StartWorkspaces = StartWorkspacesResponse
  request = postJSON workSpaces
  response =
    receiveJSON
      ( \s h x ->
          StartWorkspacesResponse'
            <$> (x .?> "FailedRequests" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable StartWorkspaces

instance NFData StartWorkspaces

instance ToHeaders StartWorkspaces where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("WorkspacesService.StartWorkspaces" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartWorkspaces where
  toJSON StartWorkspaces' {..} =
    object
      ( catMaybes
          [ Just
              ( "StartWorkspaceRequests"
                  .= _swStartWorkspaceRequests
              )
          ]
      )

instance ToPath StartWorkspaces where
  toPath = const "/"

instance ToQuery StartWorkspaces where
  toQuery = const mempty

-- | /See:/ 'startWorkspacesResponse' smart constructor.
data StartWorkspacesResponse = StartWorkspacesResponse'
  { _srsFailedRequests ::
      !( Maybe
           [FailedWorkspaceChangeRequest]
       ),
    _srsResponseStatus ::
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

-- | Creates a value of 'StartWorkspacesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srsFailedRequests' - Information about the WorkSpaces that could not be started.
--
-- * 'srsResponseStatus' - -- | The response status code.
startWorkspacesResponse ::
  -- | 'srsResponseStatus'
  Int ->
  StartWorkspacesResponse
startWorkspacesResponse pResponseStatus_ =
  StartWorkspacesResponse'
    { _srsFailedRequests =
        Nothing,
      _srsResponseStatus = pResponseStatus_
    }

-- | Information about the WorkSpaces that could not be started.
srsFailedRequests :: Lens' StartWorkspacesResponse [FailedWorkspaceChangeRequest]
srsFailedRequests = lens _srsFailedRequests (\s a -> s {_srsFailedRequests = a}) . _Default . _Coerce

-- | -- | The response status code.
srsResponseStatus :: Lens' StartWorkspacesResponse Int
srsResponseStatus = lens _srsResponseStatus (\s a -> s {_srsResponseStatus = a})

instance NFData StartWorkspacesResponse
