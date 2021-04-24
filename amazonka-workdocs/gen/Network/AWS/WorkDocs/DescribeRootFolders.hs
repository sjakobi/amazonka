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
-- Module      : Network.AWS.WorkDocs.DescribeRootFolders
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the current user's special folders; the @RootFolder@ and the @RecycleBin@ . @RootFolder@ is the root of user's files and folders and @RecycleBin@ is the root of recycled items. This is not a valid action for SigV4 (administrative API) clients.
--
--
-- This action requires an authentication token. To get an authentication token, register an application with Amazon WorkDocs. For more information, see <https://docs.aws.amazon.com/workdocs/latest/developerguide/wd-auth-user.html Authentication and Access Control for User Applications> in the /Amazon WorkDocs Developer Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.WorkDocs.DescribeRootFolders
  ( -- * Creating a Request
    describeRootFolders,
    DescribeRootFolders,

    -- * Request Lenses
    drfLimit,
    drfMarker,
    drfAuthenticationToken,

    -- * Destructuring the Response
    describeRootFoldersResponse,
    DescribeRootFoldersResponse,

    -- * Response Lenses
    drfrrsFolders,
    drfrrsMarker,
    drfrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkDocs.Types

-- | /See:/ 'describeRootFolders' smart constructor.
data DescribeRootFolders = DescribeRootFolders'
  { _drfLimit ::
      !(Maybe Nat),
    _drfMarker :: !(Maybe Text),
    _drfAuthenticationToken ::
      !(Sensitive Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeRootFolders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drfLimit' - The maximum number of items to return.
--
-- * 'drfMarker' - The marker for the next set of results. (You received this marker from a previous call.)
--
-- * 'drfAuthenticationToken' - Amazon WorkDocs authentication token.
describeRootFolders ::
  -- | 'drfAuthenticationToken'
  Text ->
  DescribeRootFolders
describeRootFolders pAuthenticationToken_ =
  DescribeRootFolders'
    { _drfLimit = Nothing,
      _drfMarker = Nothing,
      _drfAuthenticationToken =
        _Sensitive # pAuthenticationToken_
    }

-- | The maximum number of items to return.
drfLimit :: Lens' DescribeRootFolders (Maybe Natural)
drfLimit = lens _drfLimit (\s a -> s {_drfLimit = a}) . mapping _Nat

-- | The marker for the next set of results. (You received this marker from a previous call.)
drfMarker :: Lens' DescribeRootFolders (Maybe Text)
drfMarker = lens _drfMarker (\s a -> s {_drfMarker = a})

-- | Amazon WorkDocs authentication token.
drfAuthenticationToken :: Lens' DescribeRootFolders Text
drfAuthenticationToken = lens _drfAuthenticationToken (\s a -> s {_drfAuthenticationToken = a}) . _Sensitive

instance AWSPager DescribeRootFolders where
  page rq rs
    | stop (rs ^. drfrrsMarker) = Nothing
    | stop (rs ^. drfrrsFolders) = Nothing
    | otherwise =
      Just $ rq & drfMarker .~ rs ^. drfrrsMarker

instance AWSRequest DescribeRootFolders where
  type
    Rs DescribeRootFolders =
      DescribeRootFoldersResponse
  request = get workDocs
  response =
    receiveJSON
      ( \s h x ->
          DescribeRootFoldersResponse'
            <$> (x .?> "Folders" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeRootFolders

instance NFData DescribeRootFolders

instance ToHeaders DescribeRootFolders where
  toHeaders DescribeRootFolders' {..} =
    mconcat
      [ "Authentication" =# _drfAuthenticationToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToPath DescribeRootFolders where
  toPath = const "/api/v1/me/root"

instance ToQuery DescribeRootFolders where
  toQuery DescribeRootFolders' {..} =
    mconcat
      ["limit" =: _drfLimit, "marker" =: _drfMarker]

-- | /See:/ 'describeRootFoldersResponse' smart constructor.
data DescribeRootFoldersResponse = DescribeRootFoldersResponse'
  { _drfrrsFolders ::
      !( Maybe
           [FolderMetadata]
       ),
    _drfrrsMarker ::
      !(Maybe Text),
    _drfrrsResponseStatus ::
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

-- | Creates a value of 'DescribeRootFoldersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drfrrsFolders' - The user's special folders.
--
-- * 'drfrrsMarker' - The marker for the next set of results.
--
-- * 'drfrrsResponseStatus' - -- | The response status code.
describeRootFoldersResponse ::
  -- | 'drfrrsResponseStatus'
  Int ->
  DescribeRootFoldersResponse
describeRootFoldersResponse pResponseStatus_ =
  DescribeRootFoldersResponse'
    { _drfrrsFolders =
        Nothing,
      _drfrrsMarker = Nothing,
      _drfrrsResponseStatus = pResponseStatus_
    }

-- | The user's special folders.
drfrrsFolders :: Lens' DescribeRootFoldersResponse [FolderMetadata]
drfrrsFolders = lens _drfrrsFolders (\s a -> s {_drfrrsFolders = a}) . _Default . _Coerce

-- | The marker for the next set of results.
drfrrsMarker :: Lens' DescribeRootFoldersResponse (Maybe Text)
drfrrsMarker = lens _drfrrsMarker (\s a -> s {_drfrrsMarker = a})

-- | -- | The response status code.
drfrrsResponseStatus :: Lens' DescribeRootFoldersResponse Int
drfrrsResponseStatus = lens _drfrrsResponseStatus (\s a -> s {_drfrrsResponseStatus = a})

instance NFData DescribeRootFoldersResponse
