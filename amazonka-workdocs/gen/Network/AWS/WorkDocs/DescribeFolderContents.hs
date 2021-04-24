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
-- Module      : Network.AWS.WorkDocs.DescribeFolderContents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the contents of the specified folder, including its documents and subfolders.
--
--
-- By default, Amazon WorkDocs returns the first 100 active document and folder metadata items. If there are more results, the response includes a marker that you can use to request the next set of results. You can also request initialized documents.
--
--
-- This operation returns paginated results.
module Network.AWS.WorkDocs.DescribeFolderContents
  ( -- * Creating a Request
    describeFolderContents,
    DescribeFolderContents,

    -- * Request Lenses
    dfcInclude,
    dfcOrder,
    dfcAuthenticationToken,
    dfcType,
    dfcLimit,
    dfcSort,
    dfcMarker,
    dfcFolderId,

    -- * Destructuring the Response
    describeFolderContentsResponse,
    DescribeFolderContentsResponse,

    -- * Response Lenses
    dfcrrsDocuments,
    dfcrrsFolders,
    dfcrrsMarker,
    dfcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkDocs.Types

-- | /See:/ 'describeFolderContents' smart constructor.
data DescribeFolderContents = DescribeFolderContents'
  { _dfcInclude ::
      !(Maybe Text),
    _dfcOrder ::
      !(Maybe OrderType),
    _dfcAuthenticationToken ::
      !(Maybe (Sensitive Text)),
    _dfcType ::
      !( Maybe
           FolderContentType
       ),
    _dfcLimit :: !(Maybe Nat),
    _dfcSort ::
      !(Maybe ResourceSortType),
    _dfcMarker ::
      !(Maybe Text),
    _dfcFolderId :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeFolderContents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfcInclude' - The contents to include. Specify "INITIALIZED" to include initialized documents.
--
-- * 'dfcOrder' - The order for the contents of the folder.
--
-- * 'dfcAuthenticationToken' - Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
--
-- * 'dfcType' - The type of items.
--
-- * 'dfcLimit' - The maximum number of items to return with this call.
--
-- * 'dfcSort' - The sorting criteria.
--
-- * 'dfcMarker' - The marker for the next set of results. This marker was received from a previous call.
--
-- * 'dfcFolderId' - The ID of the folder.
describeFolderContents ::
  -- | 'dfcFolderId'
  Text ->
  DescribeFolderContents
describeFolderContents pFolderId_ =
  DescribeFolderContents'
    { _dfcInclude = Nothing,
      _dfcOrder = Nothing,
      _dfcAuthenticationToken = Nothing,
      _dfcType = Nothing,
      _dfcLimit = Nothing,
      _dfcSort = Nothing,
      _dfcMarker = Nothing,
      _dfcFolderId = pFolderId_
    }

-- | The contents to include. Specify "INITIALIZED" to include initialized documents.
dfcInclude :: Lens' DescribeFolderContents (Maybe Text)
dfcInclude = lens _dfcInclude (\s a -> s {_dfcInclude = a})

-- | The order for the contents of the folder.
dfcOrder :: Lens' DescribeFolderContents (Maybe OrderType)
dfcOrder = lens _dfcOrder (\s a -> s {_dfcOrder = a})

-- | Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
dfcAuthenticationToken :: Lens' DescribeFolderContents (Maybe Text)
dfcAuthenticationToken = lens _dfcAuthenticationToken (\s a -> s {_dfcAuthenticationToken = a}) . mapping _Sensitive

-- | The type of items.
dfcType :: Lens' DescribeFolderContents (Maybe FolderContentType)
dfcType = lens _dfcType (\s a -> s {_dfcType = a})

-- | The maximum number of items to return with this call.
dfcLimit :: Lens' DescribeFolderContents (Maybe Natural)
dfcLimit = lens _dfcLimit (\s a -> s {_dfcLimit = a}) . mapping _Nat

-- | The sorting criteria.
dfcSort :: Lens' DescribeFolderContents (Maybe ResourceSortType)
dfcSort = lens _dfcSort (\s a -> s {_dfcSort = a})

-- | The marker for the next set of results. This marker was received from a previous call.
dfcMarker :: Lens' DescribeFolderContents (Maybe Text)
dfcMarker = lens _dfcMarker (\s a -> s {_dfcMarker = a})

-- | The ID of the folder.
dfcFolderId :: Lens' DescribeFolderContents Text
dfcFolderId = lens _dfcFolderId (\s a -> s {_dfcFolderId = a})

instance AWSPager DescribeFolderContents where
  page rq rs
    | stop (rs ^. dfcrrsMarker) = Nothing
    | stop (rs ^. dfcrrsFolders) = Nothing
    | stop (rs ^. dfcrrsDocuments) = Nothing
    | otherwise =
      Just $ rq & dfcMarker .~ rs ^. dfcrrsMarker

instance AWSRequest DescribeFolderContents where
  type
    Rs DescribeFolderContents =
      DescribeFolderContentsResponse
  request = get workDocs
  response =
    receiveJSON
      ( \s h x ->
          DescribeFolderContentsResponse'
            <$> (x .?> "Documents" .!@ mempty)
            <*> (x .?> "Folders" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeFolderContents

instance NFData DescribeFolderContents

instance ToHeaders DescribeFolderContents where
  toHeaders DescribeFolderContents' {..} =
    mconcat
      [ "Authentication" =# _dfcAuthenticationToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToPath DescribeFolderContents where
  toPath DescribeFolderContents' {..} =
    mconcat
      ["/api/v1/folders/", toBS _dfcFolderId, "/contents"]

instance ToQuery DescribeFolderContents where
  toQuery DescribeFolderContents' {..} =
    mconcat
      [ "include" =: _dfcInclude,
        "order" =: _dfcOrder,
        "type" =: _dfcType,
        "limit" =: _dfcLimit,
        "sort" =: _dfcSort,
        "marker" =: _dfcMarker
      ]

-- | /See:/ 'describeFolderContentsResponse' smart constructor.
data DescribeFolderContentsResponse = DescribeFolderContentsResponse'
  { _dfcrrsDocuments ::
      !( Maybe
           [DocumentMetadata]
       ),
    _dfcrrsFolders ::
      !( Maybe
           [FolderMetadata]
       ),
    _dfcrrsMarker ::
      !( Maybe
           Text
       ),
    _dfcrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeFolderContentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfcrrsDocuments' - The documents in the specified folder.
--
-- * 'dfcrrsFolders' - The subfolders in the specified folder.
--
-- * 'dfcrrsMarker' - The marker to use when requesting the next set of results. If there are no additional results, the string is empty.
--
-- * 'dfcrrsResponseStatus' - -- | The response status code.
describeFolderContentsResponse ::
  -- | 'dfcrrsResponseStatus'
  Int ->
  DescribeFolderContentsResponse
describeFolderContentsResponse pResponseStatus_ =
  DescribeFolderContentsResponse'
    { _dfcrrsDocuments =
        Nothing,
      _dfcrrsFolders = Nothing,
      _dfcrrsMarker = Nothing,
      _dfcrrsResponseStatus = pResponseStatus_
    }

-- | The documents in the specified folder.
dfcrrsDocuments :: Lens' DescribeFolderContentsResponse [DocumentMetadata]
dfcrrsDocuments = lens _dfcrrsDocuments (\s a -> s {_dfcrrsDocuments = a}) . _Default . _Coerce

-- | The subfolders in the specified folder.
dfcrrsFolders :: Lens' DescribeFolderContentsResponse [FolderMetadata]
dfcrrsFolders = lens _dfcrrsFolders (\s a -> s {_dfcrrsFolders = a}) . _Default . _Coerce

-- | The marker to use when requesting the next set of results. If there are no additional results, the string is empty.
dfcrrsMarker :: Lens' DescribeFolderContentsResponse (Maybe Text)
dfcrrsMarker = lens _dfcrrsMarker (\s a -> s {_dfcrrsMarker = a})

-- | -- | The response status code.
dfcrrsResponseStatus :: Lens' DescribeFolderContentsResponse Int
dfcrrsResponseStatus = lens _dfcrrsResponseStatus (\s a -> s {_dfcrrsResponseStatus = a})

instance NFData DescribeFolderContentsResponse
