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
-- Module      : Network.AWS.WorkDocs.DescribeDocumentVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the document versions for the specified document.
--
--
-- By default, only active versions are returned.
--
--
-- This operation returns paginated results.
module Network.AWS.WorkDocs.DescribeDocumentVersions
  ( -- * Creating a Request
    describeDocumentVersions,
    DescribeDocumentVersions,

    -- * Request Lenses
    ddvInclude,
    ddvFields,
    ddvAuthenticationToken,
    ddvLimit,
    ddvMarker,
    ddvDocumentId,

    -- * Destructuring the Response
    describeDocumentVersionsResponse,
    DescribeDocumentVersionsResponse,

    -- * Response Lenses
    ddvrrsDocumentVersions,
    ddvrrsMarker,
    ddvrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkDocs.Types

-- | /See:/ 'describeDocumentVersions' smart constructor.
data DescribeDocumentVersions = DescribeDocumentVersions'
  { _ddvInclude ::
      !(Maybe Text),
    _ddvFields ::
      !(Maybe Text),
    _ddvAuthenticationToken ::
      !( Maybe
           (Sensitive Text)
       ),
    _ddvLimit ::
      !(Maybe Nat),
    _ddvMarker ::
      !(Maybe Text),
    _ddvDocumentId ::
      !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeDocumentVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddvInclude' - A comma-separated list of values. Specify "INITIALIZED" to include incomplete versions.
--
-- * 'ddvFields' - Specify "SOURCE" to include initialized versions and a URL for the source document.
--
-- * 'ddvAuthenticationToken' - Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
--
-- * 'ddvLimit' - The maximum number of versions to return with this call.
--
-- * 'ddvMarker' - The marker for the next set of results. (You received this marker from a previous call.)
--
-- * 'ddvDocumentId' - The ID of the document.
describeDocumentVersions ::
  -- | 'ddvDocumentId'
  Text ->
  DescribeDocumentVersions
describeDocumentVersions pDocumentId_ =
  DescribeDocumentVersions'
    { _ddvInclude = Nothing,
      _ddvFields = Nothing,
      _ddvAuthenticationToken = Nothing,
      _ddvLimit = Nothing,
      _ddvMarker = Nothing,
      _ddvDocumentId = pDocumentId_
    }

-- | A comma-separated list of values. Specify "INITIALIZED" to include incomplete versions.
ddvInclude :: Lens' DescribeDocumentVersions (Maybe Text)
ddvInclude = lens _ddvInclude (\s a -> s {_ddvInclude = a})

-- | Specify "SOURCE" to include initialized versions and a URL for the source document.
ddvFields :: Lens' DescribeDocumentVersions (Maybe Text)
ddvFields = lens _ddvFields (\s a -> s {_ddvFields = a})

-- | Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
ddvAuthenticationToken :: Lens' DescribeDocumentVersions (Maybe Text)
ddvAuthenticationToken = lens _ddvAuthenticationToken (\s a -> s {_ddvAuthenticationToken = a}) . mapping _Sensitive

-- | The maximum number of versions to return with this call.
ddvLimit :: Lens' DescribeDocumentVersions (Maybe Natural)
ddvLimit = lens _ddvLimit (\s a -> s {_ddvLimit = a}) . mapping _Nat

-- | The marker for the next set of results. (You received this marker from a previous call.)
ddvMarker :: Lens' DescribeDocumentVersions (Maybe Text)
ddvMarker = lens _ddvMarker (\s a -> s {_ddvMarker = a})

-- | The ID of the document.
ddvDocumentId :: Lens' DescribeDocumentVersions Text
ddvDocumentId = lens _ddvDocumentId (\s a -> s {_ddvDocumentId = a})

instance AWSPager DescribeDocumentVersions where
  page rq rs
    | stop (rs ^. ddvrrsMarker) = Nothing
    | stop (rs ^. ddvrrsDocumentVersions) = Nothing
    | otherwise =
      Just $ rq & ddvMarker .~ rs ^. ddvrrsMarker

instance AWSRequest DescribeDocumentVersions where
  type
    Rs DescribeDocumentVersions =
      DescribeDocumentVersionsResponse
  request = get workDocs
  response =
    receiveJSON
      ( \s h x ->
          DescribeDocumentVersionsResponse'
            <$> (x .?> "DocumentVersions" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDocumentVersions

instance NFData DescribeDocumentVersions

instance ToHeaders DescribeDocumentVersions where
  toHeaders DescribeDocumentVersions' {..} =
    mconcat
      [ "Authentication" =# _ddvAuthenticationToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToPath DescribeDocumentVersions where
  toPath DescribeDocumentVersions' {..} =
    mconcat
      [ "/api/v1/documents/",
        toBS _ddvDocumentId,
        "/versions"
      ]

instance ToQuery DescribeDocumentVersions where
  toQuery DescribeDocumentVersions' {..} =
    mconcat
      [ "include" =: _ddvInclude,
        "fields" =: _ddvFields,
        "limit" =: _ddvLimit,
        "marker" =: _ddvMarker
      ]

-- | /See:/ 'describeDocumentVersionsResponse' smart constructor.
data DescribeDocumentVersionsResponse = DescribeDocumentVersionsResponse'
  { _ddvrrsDocumentVersions ::
      !( Maybe
           [DocumentVersionMetadata]
       ),
    _ddvrrsMarker ::
      !( Maybe
           Text
       ),
    _ddvrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeDocumentVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddvrrsDocumentVersions' - The document versions.
--
-- * 'ddvrrsMarker' - The marker to use when requesting the next set of results. If there are no additional results, the string is empty.
--
-- * 'ddvrrsResponseStatus' - -- | The response status code.
describeDocumentVersionsResponse ::
  -- | 'ddvrrsResponseStatus'
  Int ->
  DescribeDocumentVersionsResponse
describeDocumentVersionsResponse pResponseStatus_ =
  DescribeDocumentVersionsResponse'
    { _ddvrrsDocumentVersions =
        Nothing,
      _ddvrrsMarker = Nothing,
      _ddvrrsResponseStatus = pResponseStatus_
    }

-- | The document versions.
ddvrrsDocumentVersions :: Lens' DescribeDocumentVersionsResponse [DocumentVersionMetadata]
ddvrrsDocumentVersions = lens _ddvrrsDocumentVersions (\s a -> s {_ddvrrsDocumentVersions = a}) . _Default . _Coerce

-- | The marker to use when requesting the next set of results. If there are no additional results, the string is empty.
ddvrrsMarker :: Lens' DescribeDocumentVersionsResponse (Maybe Text)
ddvrrsMarker = lens _ddvrrsMarker (\s a -> s {_ddvrrsMarker = a})

-- | -- | The response status code.
ddvrrsResponseStatus :: Lens' DescribeDocumentVersionsResponse Int
ddvrrsResponseStatus = lens _ddvrrsResponseStatus (\s a -> s {_ddvrrsResponseStatus = a})

instance NFData DescribeDocumentVersionsResponse
