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
-- Module      : Network.AWS.WorkSpaces.RebootWorkspaces
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reboots the specified WorkSpaces.
--
--
-- You cannot reboot a WorkSpace unless its state is @AVAILABLE@ or @UNHEALTHY@ .
--
-- This operation is asynchronous and returns before the WorkSpaces have rebooted.
module Network.AWS.WorkSpaces.RebootWorkspaces
  ( -- * Creating a Request
    rebootWorkspaces,
    RebootWorkspaces,

    -- * Request Lenses
    rwRebootWorkspaceRequests,

    -- * Destructuring the Response
    rebootWorkspacesResponse,
    RebootWorkspacesResponse,

    -- * Response Lenses
    rebrsFailedRequests,
    rebrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkSpaces.Types

-- | /See:/ 'rebootWorkspaces' smart constructor.
newtype RebootWorkspaces = RebootWorkspaces'
  { _rwRebootWorkspaceRequests ::
      List1 RebootRequest
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RebootWorkspaces' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rwRebootWorkspaceRequests' - The WorkSpaces to reboot. You can specify up to 25 WorkSpaces.
rebootWorkspaces ::
  -- | 'rwRebootWorkspaceRequests'
  NonEmpty RebootRequest ->
  RebootWorkspaces
rebootWorkspaces pRebootWorkspaceRequests_ =
  RebootWorkspaces'
    { _rwRebootWorkspaceRequests =
        _List1 # pRebootWorkspaceRequests_
    }

-- | The WorkSpaces to reboot. You can specify up to 25 WorkSpaces.
rwRebootWorkspaceRequests :: Lens' RebootWorkspaces (NonEmpty RebootRequest)
rwRebootWorkspaceRequests = lens _rwRebootWorkspaceRequests (\s a -> s {_rwRebootWorkspaceRequests = a}) . _List1

instance AWSRequest RebootWorkspaces where
  type Rs RebootWorkspaces = RebootWorkspacesResponse
  request = postJSON workSpaces
  response =
    receiveJSON
      ( \s h x ->
          RebootWorkspacesResponse'
            <$> (x .?> "FailedRequests" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable RebootWorkspaces

instance NFData RebootWorkspaces

instance ToHeaders RebootWorkspaces where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("WorkspacesService.RebootWorkspaces" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RebootWorkspaces where
  toJSON RebootWorkspaces' {..} =
    object
      ( catMaybes
          [ Just
              ( "RebootWorkspaceRequests"
                  .= _rwRebootWorkspaceRequests
              )
          ]
      )

instance ToPath RebootWorkspaces where
  toPath = const "/"

instance ToQuery RebootWorkspaces where
  toQuery = const mempty

-- | /See:/ 'rebootWorkspacesResponse' smart constructor.
data RebootWorkspacesResponse = RebootWorkspacesResponse'
  { _rebrsFailedRequests ::
      !( Maybe
           [FailedWorkspaceChangeRequest]
       ),
    _rebrsResponseStatus ::
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

-- | Creates a value of 'RebootWorkspacesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rebrsFailedRequests' - Information about the WorkSpaces that could not be rebooted.
--
-- * 'rebrsResponseStatus' - -- | The response status code.
rebootWorkspacesResponse ::
  -- | 'rebrsResponseStatus'
  Int ->
  RebootWorkspacesResponse
rebootWorkspacesResponse pResponseStatus_ =
  RebootWorkspacesResponse'
    { _rebrsFailedRequests =
        Nothing,
      _rebrsResponseStatus = pResponseStatus_
    }

-- | Information about the WorkSpaces that could not be rebooted.
rebrsFailedRequests :: Lens' RebootWorkspacesResponse [FailedWorkspaceChangeRequest]
rebrsFailedRequests = lens _rebrsFailedRequests (\s a -> s {_rebrsFailedRequests = a}) . _Default . _Coerce

-- | -- | The response status code.
rebrsResponseStatus :: Lens' RebootWorkspacesResponse Int
rebrsResponseStatus = lens _rebrsResponseStatus (\s a -> s {_rebrsResponseStatus = a})

instance NFData RebootWorkspacesResponse
