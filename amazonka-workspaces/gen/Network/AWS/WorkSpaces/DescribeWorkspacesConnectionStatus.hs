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
-- Module      : Network.AWS.WorkSpaces.DescribeWorkspacesConnectionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the connection status of the specified WorkSpaces.
--
--
--
-- This operation returns paginated results.
module Network.AWS.WorkSpaces.DescribeWorkspacesConnectionStatus
  ( -- * Creating a Request
    describeWorkspacesConnectionStatus,
    DescribeWorkspacesConnectionStatus,

    -- * Request Lenses
    dwcsNextToken,
    dwcsWorkspaceIds,

    -- * Destructuring the Response
    describeWorkspacesConnectionStatusResponse,
    DescribeWorkspacesConnectionStatusResponse,

    -- * Response Lenses
    dwcsrrsNextToken,
    dwcsrrsWorkspacesConnectionStatus,
    dwcsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkSpaces.Types

-- | /See:/ 'describeWorkspacesConnectionStatus' smart constructor.
data DescribeWorkspacesConnectionStatus = DescribeWorkspacesConnectionStatus'
  { _dwcsNextToken ::
      !( Maybe
           Text
       ),
    _dwcsWorkspaceIds ::
      !( Maybe
           ( List1
               Text
           )
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeWorkspacesConnectionStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dwcsNextToken' - If you received a @NextToken@ from a previous call that was paginated, provide this token to receive the next set of results.
--
-- * 'dwcsWorkspaceIds' - The identifiers of the WorkSpaces. You can specify up to 25 WorkSpaces.
describeWorkspacesConnectionStatus ::
  DescribeWorkspacesConnectionStatus
describeWorkspacesConnectionStatus =
  DescribeWorkspacesConnectionStatus'
    { _dwcsNextToken =
        Nothing,
      _dwcsWorkspaceIds = Nothing
    }

-- | If you received a @NextToken@ from a previous call that was paginated, provide this token to receive the next set of results.
dwcsNextToken :: Lens' DescribeWorkspacesConnectionStatus (Maybe Text)
dwcsNextToken = lens _dwcsNextToken (\s a -> s {_dwcsNextToken = a})

-- | The identifiers of the WorkSpaces. You can specify up to 25 WorkSpaces.
dwcsWorkspaceIds :: Lens' DescribeWorkspacesConnectionStatus (Maybe (NonEmpty Text))
dwcsWorkspaceIds = lens _dwcsWorkspaceIds (\s a -> s {_dwcsWorkspaceIds = a}) . mapping _List1

instance AWSPager DescribeWorkspacesConnectionStatus where
  page rq rs
    | stop (rs ^. dwcsrrsNextToken) = Nothing
    | stop (rs ^. dwcsrrsWorkspacesConnectionStatus) =
      Nothing
    | otherwise =
      Just $ rq & dwcsNextToken .~ rs ^. dwcsrrsNextToken

instance
  AWSRequest
    DescribeWorkspacesConnectionStatus
  where
  type
    Rs DescribeWorkspacesConnectionStatus =
      DescribeWorkspacesConnectionStatusResponse
  request = postJSON workSpaces
  response =
    receiveJSON
      ( \s h x ->
          DescribeWorkspacesConnectionStatusResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "WorkspacesConnectionStatus" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeWorkspacesConnectionStatus

instance NFData DescribeWorkspacesConnectionStatus

instance ToHeaders DescribeWorkspacesConnectionStatus where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "WorkspacesService.DescribeWorkspacesConnectionStatus" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeWorkspacesConnectionStatus where
  toJSON DescribeWorkspacesConnectionStatus' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dwcsNextToken,
            ("WorkspaceIds" .=) <$> _dwcsWorkspaceIds
          ]
      )

instance ToPath DescribeWorkspacesConnectionStatus where
  toPath = const "/"

instance ToQuery DescribeWorkspacesConnectionStatus where
  toQuery = const mempty

-- | /See:/ 'describeWorkspacesConnectionStatusResponse' smart constructor.
data DescribeWorkspacesConnectionStatusResponse = DescribeWorkspacesConnectionStatusResponse'
  { _dwcsrrsNextToken ::
      !( Maybe
           Text
       ),
    _dwcsrrsWorkspacesConnectionStatus ::
      !( Maybe
           [WorkspaceConnectionStatus]
       ),
    _dwcsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeWorkspacesConnectionStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dwcsrrsNextToken' - The token to use to retrieve the next set of results, or null if no more results are available.
--
-- * 'dwcsrrsWorkspacesConnectionStatus' - Information about the connection status of the WorkSpace.
--
-- * 'dwcsrrsResponseStatus' - -- | The response status code.
describeWorkspacesConnectionStatusResponse ::
  -- | 'dwcsrrsResponseStatus'
  Int ->
  DescribeWorkspacesConnectionStatusResponse
describeWorkspacesConnectionStatusResponse
  pResponseStatus_ =
    DescribeWorkspacesConnectionStatusResponse'
      { _dwcsrrsNextToken =
          Nothing,
        _dwcsrrsWorkspacesConnectionStatus =
          Nothing,
        _dwcsrrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next set of results, or null if no more results are available.
dwcsrrsNextToken :: Lens' DescribeWorkspacesConnectionStatusResponse (Maybe Text)
dwcsrrsNextToken = lens _dwcsrrsNextToken (\s a -> s {_dwcsrrsNextToken = a})

-- | Information about the connection status of the WorkSpace.
dwcsrrsWorkspacesConnectionStatus :: Lens' DescribeWorkspacesConnectionStatusResponse [WorkspaceConnectionStatus]
dwcsrrsWorkspacesConnectionStatus = lens _dwcsrrsWorkspacesConnectionStatus (\s a -> s {_dwcsrrsWorkspacesConnectionStatus = a}) . _Default . _Coerce

-- | -- | The response status code.
dwcsrrsResponseStatus :: Lens' DescribeWorkspacesConnectionStatusResponse Int
dwcsrrsResponseStatus = lens _dwcsrrsResponseStatus (\s a -> s {_dwcsrrsResponseStatus = a})

instance
  NFData
    DescribeWorkspacesConnectionStatusResponse
