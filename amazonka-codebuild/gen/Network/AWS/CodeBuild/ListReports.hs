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
-- Module      : Network.AWS.CodeBuild.ListReports
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of ARNs for the reports in the current AWS account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CodeBuild.ListReports
  ( -- * Creating a Request
    listReports,
    ListReports,

    -- * Request Lenses
    lrSortOrder,
    lrNextToken,
    lrMaxResults,
    lrFilter,

    -- * Destructuring the Response
    listReportsResponse,
    ListReportsResponse,

    -- * Response Lenses
    lrrrsNextToken,
    lrrrsReports,
    lrrrsResponseStatus,
  )
where

import Network.AWS.CodeBuild.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listReports' smart constructor.
data ListReports = ListReports'
  { _lrSortOrder ::
      !(Maybe SortOrderType),
    _lrNextToken :: !(Maybe Text),
    _lrMaxResults :: !(Maybe Nat),
    _lrFilter :: !(Maybe ReportFilter)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListReports' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrSortOrder' - Specifies the sort order for the list of returned reports. Valid values are:      * @ASCENDING@ : return reports in chronological order based on their creation date.      * @DESCENDING@ : return reports in the reverse chronological order based on their creation date.
--
-- * 'lrNextToken' - During a previous call, the maximum number of items that can be returned is the value specified in @maxResults@ . If there more items in the list, then a unique string called a /nextToken/ is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
--
-- * 'lrMaxResults' - The maximum number of paginated reports returned per response. Use @nextToken@ to iterate pages in the list of returned @Report@ objects. The default value is 100.
--
-- * 'lrFilter' - A @ReportFilter@ object used to filter the returned reports.
listReports ::
  ListReports
listReports =
  ListReports'
    { _lrSortOrder = Nothing,
      _lrNextToken = Nothing,
      _lrMaxResults = Nothing,
      _lrFilter = Nothing
    }

-- | Specifies the sort order for the list of returned reports. Valid values are:      * @ASCENDING@ : return reports in chronological order based on their creation date.      * @DESCENDING@ : return reports in the reverse chronological order based on their creation date.
lrSortOrder :: Lens' ListReports (Maybe SortOrderType)
lrSortOrder = lens _lrSortOrder (\s a -> s {_lrSortOrder = a})

-- | During a previous call, the maximum number of items that can be returned is the value specified in @maxResults@ . If there more items in the list, then a unique string called a /nextToken/ is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
lrNextToken :: Lens' ListReports (Maybe Text)
lrNextToken = lens _lrNextToken (\s a -> s {_lrNextToken = a})

-- | The maximum number of paginated reports returned per response. Use @nextToken@ to iterate pages in the list of returned @Report@ objects. The default value is 100.
lrMaxResults :: Lens' ListReports (Maybe Natural)
lrMaxResults = lens _lrMaxResults (\s a -> s {_lrMaxResults = a}) . mapping _Nat

-- | A @ReportFilter@ object used to filter the returned reports.
lrFilter :: Lens' ListReports (Maybe ReportFilter)
lrFilter = lens _lrFilter (\s a -> s {_lrFilter = a})

instance AWSPager ListReports where
  page rq rs
    | stop (rs ^. lrrrsNextToken) = Nothing
    | stop (rs ^. lrrrsReports) = Nothing
    | otherwise =
      Just $ rq & lrNextToken .~ rs ^. lrrrsNextToken

instance AWSRequest ListReports where
  type Rs ListReports = ListReportsResponse
  request = postJSON codeBuild
  response =
    receiveJSON
      ( \s h x ->
          ListReportsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "reports")
            <*> (pure (fromEnum s))
      )

instance Hashable ListReports

instance NFData ListReports

instance ToHeaders ListReports where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeBuild_20161006.ListReports" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListReports where
  toJSON ListReports' {..} =
    object
      ( catMaybes
          [ ("sortOrder" .=) <$> _lrSortOrder,
            ("nextToken" .=) <$> _lrNextToken,
            ("maxResults" .=) <$> _lrMaxResults,
            ("filter" .=) <$> _lrFilter
          ]
      )

instance ToPath ListReports where
  toPath = const "/"

instance ToQuery ListReports where
  toQuery = const mempty

-- | /See:/ 'listReportsResponse' smart constructor.
data ListReportsResponse = ListReportsResponse'
  { _lrrrsNextToken ::
      !(Maybe Text),
    _lrrrsReports ::
      !(Maybe (List1 Text)),
    _lrrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListReportsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrrsNextToken' - During a previous call, the maximum number of items that can be returned is the value specified in @maxResults@ . If there more items in the list, then a unique string called a /nextToken/ is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
--
-- * 'lrrrsReports' - The list of returned ARNs for the reports in the current AWS account.
--
-- * 'lrrrsResponseStatus' - -- | The response status code.
listReportsResponse ::
  -- | 'lrrrsResponseStatus'
  Int ->
  ListReportsResponse
listReportsResponse pResponseStatus_ =
  ListReportsResponse'
    { _lrrrsNextToken = Nothing,
      _lrrrsReports = Nothing,
      _lrrrsResponseStatus = pResponseStatus_
    }

-- | During a previous call, the maximum number of items that can be returned is the value specified in @maxResults@ . If there more items in the list, then a unique string called a /nextToken/ is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
lrrrsNextToken :: Lens' ListReportsResponse (Maybe Text)
lrrrsNextToken = lens _lrrrsNextToken (\s a -> s {_lrrrsNextToken = a})

-- | The list of returned ARNs for the reports in the current AWS account.
lrrrsReports :: Lens' ListReportsResponse (Maybe (NonEmpty Text))
lrrrsReports = lens _lrrrsReports (\s a -> s {_lrrrsReports = a}) . mapping _List1

-- | -- | The response status code.
lrrrsResponseStatus :: Lens' ListReportsResponse Int
lrrrsResponseStatus = lens _lrrrsResponseStatus (\s a -> s {_lrrrsResponseStatus = a})

instance NFData ListReportsResponse
