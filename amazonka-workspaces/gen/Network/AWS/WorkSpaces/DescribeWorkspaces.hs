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
-- Module      : Network.AWS.WorkSpaces.DescribeWorkspaces
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified WorkSpaces.
--
--
-- You can filter the results by using the bundle identifier, directory identifier, or owner, but you can specify only one filter at a time.
--
--
-- This operation returns paginated results.
module Network.AWS.WorkSpaces.DescribeWorkspaces
  ( -- * Creating a Request
    describeWorkspaces,
    DescribeWorkspaces,

    -- * Request Lenses
    dwNextToken,
    dwBundleId,
    dwWorkspaceIds,
    dwDirectoryId,
    dwUserName,
    dwLimit,

    -- * Destructuring the Response
    describeWorkspacesResponse,
    DescribeWorkspacesResponse,

    -- * Response Lenses
    dwrrsNextToken,
    dwrrsWorkspaces,
    dwrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkSpaces.Types

-- | /See:/ 'describeWorkspaces' smart constructor.
data DescribeWorkspaces = DescribeWorkspaces'
  { _dwNextToken ::
      !(Maybe Text),
    _dwBundleId :: !(Maybe Text),
    _dwWorkspaceIds ::
      !(Maybe (List1 Text)),
    _dwDirectoryId :: !(Maybe Text),
    _dwUserName :: !(Maybe Text),
    _dwLimit :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeWorkspaces' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dwNextToken' - If you received a @NextToken@ from a previous call that was paginated, provide this token to receive the next set of results.
--
-- * 'dwBundleId' - The identifier of the bundle. All WorkSpaces that are created from this bundle are retrieved. You cannot combine this parameter with any other filter.
--
-- * 'dwWorkspaceIds' - The identifiers of the WorkSpaces. You cannot combine this parameter with any other filter. Because the 'CreateWorkspaces' operation is asynchronous, the identifier it returns is not immediately available. If you immediately call 'DescribeWorkspaces' with this identifier, no information is returned.
--
-- * 'dwDirectoryId' - The identifier of the directory. In addition, you can optionally specify a specific directory user (see @UserName@ ). You cannot combine this parameter with any other filter.
--
-- * 'dwUserName' - The name of the directory user. You must specify this parameter with @DirectoryId@ .
--
-- * 'dwLimit' - The maximum number of items to return.
describeWorkspaces ::
  DescribeWorkspaces
describeWorkspaces =
  DescribeWorkspaces'
    { _dwNextToken = Nothing,
      _dwBundleId = Nothing,
      _dwWorkspaceIds = Nothing,
      _dwDirectoryId = Nothing,
      _dwUserName = Nothing,
      _dwLimit = Nothing
    }

-- | If you received a @NextToken@ from a previous call that was paginated, provide this token to receive the next set of results.
dwNextToken :: Lens' DescribeWorkspaces (Maybe Text)
dwNextToken = lens _dwNextToken (\s a -> s {_dwNextToken = a})

-- | The identifier of the bundle. All WorkSpaces that are created from this bundle are retrieved. You cannot combine this parameter with any other filter.
dwBundleId :: Lens' DescribeWorkspaces (Maybe Text)
dwBundleId = lens _dwBundleId (\s a -> s {_dwBundleId = a})

-- | The identifiers of the WorkSpaces. You cannot combine this parameter with any other filter. Because the 'CreateWorkspaces' operation is asynchronous, the identifier it returns is not immediately available. If you immediately call 'DescribeWorkspaces' with this identifier, no information is returned.
dwWorkspaceIds :: Lens' DescribeWorkspaces (Maybe (NonEmpty Text))
dwWorkspaceIds = lens _dwWorkspaceIds (\s a -> s {_dwWorkspaceIds = a}) . mapping _List1

-- | The identifier of the directory. In addition, you can optionally specify a specific directory user (see @UserName@ ). You cannot combine this parameter with any other filter.
dwDirectoryId :: Lens' DescribeWorkspaces (Maybe Text)
dwDirectoryId = lens _dwDirectoryId (\s a -> s {_dwDirectoryId = a})

-- | The name of the directory user. You must specify this parameter with @DirectoryId@ .
dwUserName :: Lens' DescribeWorkspaces (Maybe Text)
dwUserName = lens _dwUserName (\s a -> s {_dwUserName = a})

-- | The maximum number of items to return.
dwLimit :: Lens' DescribeWorkspaces (Maybe Natural)
dwLimit = lens _dwLimit (\s a -> s {_dwLimit = a}) . mapping _Nat

instance AWSPager DescribeWorkspaces where
  page rq rs
    | stop (rs ^. dwrrsNextToken) = Nothing
    | stop (rs ^. dwrrsWorkspaces) = Nothing
    | otherwise =
      Just $ rq & dwNextToken .~ rs ^. dwrrsNextToken

instance AWSRequest DescribeWorkspaces where
  type
    Rs DescribeWorkspaces =
      DescribeWorkspacesResponse
  request = postJSON workSpaces
  response =
    receiveJSON
      ( \s h x ->
          DescribeWorkspacesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Workspaces" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeWorkspaces

instance NFData DescribeWorkspaces

instance ToHeaders DescribeWorkspaces where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "WorkspacesService.DescribeWorkspaces" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeWorkspaces where
  toJSON DescribeWorkspaces' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dwNextToken,
            ("BundleId" .=) <$> _dwBundleId,
            ("WorkspaceIds" .=) <$> _dwWorkspaceIds,
            ("DirectoryId" .=) <$> _dwDirectoryId,
            ("UserName" .=) <$> _dwUserName,
            ("Limit" .=) <$> _dwLimit
          ]
      )

instance ToPath DescribeWorkspaces where
  toPath = const "/"

instance ToQuery DescribeWorkspaces where
  toQuery = const mempty

-- | /See:/ 'describeWorkspacesResponse' smart constructor.
data DescribeWorkspacesResponse = DescribeWorkspacesResponse'
  { _dwrrsNextToken ::
      !(Maybe Text),
    _dwrrsWorkspaces ::
      !( Maybe
           [Workspace]
       ),
    _dwrrsResponseStatus ::
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

-- | Creates a value of 'DescribeWorkspacesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dwrrsNextToken' - The token to use to retrieve the next set of results, or null if no more results are available.
--
-- * 'dwrrsWorkspaces' - Information about the WorkSpaces. Because 'CreateWorkspaces' is an asynchronous operation, some of the returned information could be incomplete.
--
-- * 'dwrrsResponseStatus' - -- | The response status code.
describeWorkspacesResponse ::
  -- | 'dwrrsResponseStatus'
  Int ->
  DescribeWorkspacesResponse
describeWorkspacesResponse pResponseStatus_ =
  DescribeWorkspacesResponse'
    { _dwrrsNextToken =
        Nothing,
      _dwrrsWorkspaces = Nothing,
      _dwrrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next set of results, or null if no more results are available.
dwrrsNextToken :: Lens' DescribeWorkspacesResponse (Maybe Text)
dwrrsNextToken = lens _dwrrsNextToken (\s a -> s {_dwrrsNextToken = a})

-- | Information about the WorkSpaces. Because 'CreateWorkspaces' is an asynchronous operation, some of the returned information could be incomplete.
dwrrsWorkspaces :: Lens' DescribeWorkspacesResponse [Workspace]
dwrrsWorkspaces = lens _dwrrsWorkspaces (\s a -> s {_dwrrsWorkspaces = a}) . _Default . _Coerce

-- | -- | The response status code.
dwrrsResponseStatus :: Lens' DescribeWorkspacesResponse Int
dwrrsResponseStatus = lens _dwrrsResponseStatus (\s a -> s {_dwrrsResponseStatus = a})

instance NFData DescribeWorkspacesResponse
