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
-- Module      : Network.AWS.WorkDocs.DescribeComments
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all the comments for the specified document version.
--
--
--
-- This operation returns paginated results.
module Network.AWS.WorkDocs.DescribeComments
  ( -- * Creating a Request
    describeComments,
    DescribeComments,

    -- * Request Lenses
    dcsAuthenticationToken,
    dcsLimit,
    dcsMarker,
    dcsDocumentId,
    dcsVersionId,

    -- * Destructuring the Response
    describeCommentsResponse,
    DescribeCommentsResponse,

    -- * Response Lenses
    dcrrsComments,
    dcrrsMarker,
    dcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkDocs.Types

-- | /See:/ 'describeComments' smart constructor.
data DescribeComments = DescribeComments'
  { _dcsAuthenticationToken ::
      !(Maybe (Sensitive Text)),
    _dcsLimit :: !(Maybe Nat),
    _dcsMarker :: !(Maybe Text),
    _dcsDocumentId :: !Text,
    _dcsVersionId :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeComments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcsAuthenticationToken' - Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
--
-- * 'dcsLimit' - The maximum number of items to return.
--
-- * 'dcsMarker' - The marker for the next set of results. This marker was received from a previous call.
--
-- * 'dcsDocumentId' - The ID of the document.
--
-- * 'dcsVersionId' - The ID of the document version.
describeComments ::
  -- | 'dcsDocumentId'
  Text ->
  -- | 'dcsVersionId'
  Text ->
  DescribeComments
describeComments pDocumentId_ pVersionId_ =
  DescribeComments'
    { _dcsAuthenticationToken =
        Nothing,
      _dcsLimit = Nothing,
      _dcsMarker = Nothing,
      _dcsDocumentId = pDocumentId_,
      _dcsVersionId = pVersionId_
    }

-- | Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
dcsAuthenticationToken :: Lens' DescribeComments (Maybe Text)
dcsAuthenticationToken = lens _dcsAuthenticationToken (\s a -> s {_dcsAuthenticationToken = a}) . mapping _Sensitive

-- | The maximum number of items to return.
dcsLimit :: Lens' DescribeComments (Maybe Natural)
dcsLimit = lens _dcsLimit (\s a -> s {_dcsLimit = a}) . mapping _Nat

-- | The marker for the next set of results. This marker was received from a previous call.
dcsMarker :: Lens' DescribeComments (Maybe Text)
dcsMarker = lens _dcsMarker (\s a -> s {_dcsMarker = a})

-- | The ID of the document.
dcsDocumentId :: Lens' DescribeComments Text
dcsDocumentId = lens _dcsDocumentId (\s a -> s {_dcsDocumentId = a})

-- | The ID of the document version.
dcsVersionId :: Lens' DescribeComments Text
dcsVersionId = lens _dcsVersionId (\s a -> s {_dcsVersionId = a})

instance AWSPager DescribeComments where
  page rq rs
    | stop (rs ^. dcrrsMarker) = Nothing
    | stop (rs ^. dcrrsComments) = Nothing
    | otherwise =
      Just $ rq & dcsMarker .~ rs ^. dcrrsMarker

instance AWSRequest DescribeComments where
  type Rs DescribeComments = DescribeCommentsResponse
  request = get workDocs
  response =
    receiveJSON
      ( \s h x ->
          DescribeCommentsResponse'
            <$> (x .?> "Comments" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeComments

instance NFData DescribeComments

instance ToHeaders DescribeComments where
  toHeaders DescribeComments' {..} =
    mconcat
      [ "Authentication" =# _dcsAuthenticationToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToPath DescribeComments where
  toPath DescribeComments' {..} =
    mconcat
      [ "/api/v1/documents/",
        toBS _dcsDocumentId,
        "/versions/",
        toBS _dcsVersionId,
        "/comments"
      ]

instance ToQuery DescribeComments where
  toQuery DescribeComments' {..} =
    mconcat
      ["limit" =: _dcsLimit, "marker" =: _dcsMarker]

-- | /See:/ 'describeCommentsResponse' smart constructor.
data DescribeCommentsResponse = DescribeCommentsResponse'
  { _dcrrsComments ::
      !(Maybe [Comment]),
    _dcrrsMarker ::
      !(Maybe Text),
    _dcrrsResponseStatus ::
      !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeCommentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrrsComments' - The list of comments for the specified document version.
--
-- * 'dcrrsMarker' - The marker for the next set of results. This marker was received from a previous call.
--
-- * 'dcrrsResponseStatus' - -- | The response status code.
describeCommentsResponse ::
  -- | 'dcrrsResponseStatus'
  Int ->
  DescribeCommentsResponse
describeCommentsResponse pResponseStatus_ =
  DescribeCommentsResponse'
    { _dcrrsComments = Nothing,
      _dcrrsMarker = Nothing,
      _dcrrsResponseStatus = pResponseStatus_
    }

-- | The list of comments for the specified document version.
dcrrsComments :: Lens' DescribeCommentsResponse [Comment]
dcrrsComments = lens _dcrrsComments (\s a -> s {_dcrrsComments = a}) . _Default . _Coerce

-- | The marker for the next set of results. This marker was received from a previous call.
dcrrsMarker :: Lens' DescribeCommentsResponse (Maybe Text)
dcrrsMarker = lens _dcrrsMarker (\s a -> s {_dcrrsMarker = a})

-- | -- | The response status code.
dcrrsResponseStatus :: Lens' DescribeCommentsResponse Int
dcrrsResponseStatus = lens _dcrrsResponseStatus (\s a -> s {_dcrrsResponseStatus = a})

instance NFData DescribeCommentsResponse
