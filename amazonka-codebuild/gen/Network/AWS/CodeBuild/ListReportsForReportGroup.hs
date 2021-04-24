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
-- Module      : Network.AWS.CodeBuild.ListReportsForReportGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of ARNs for the reports that belong to a @ReportGroup@ .
--
--
--
-- This operation returns paginated results.
module Network.AWS.CodeBuild.ListReportsForReportGroup
  ( -- * Creating a Request
    listReportsForReportGroup,
    ListReportsForReportGroup,

    -- * Request Lenses
    lrfrgSortOrder,
    lrfrgNextToken,
    lrfrgMaxResults,
    lrfrgFilter,
    lrfrgReportGroupARN,

    -- * Destructuring the Response
    listReportsForReportGroupResponse,
    ListReportsForReportGroupResponse,

    -- * Response Lenses
    lrfrgrrsNextToken,
    lrfrgrrsReports,
    lrfrgrrsResponseStatus,
  )
where

import Network.AWS.CodeBuild.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listReportsForReportGroup' smart constructor.
data ListReportsForReportGroup = ListReportsForReportGroup'
  { _lrfrgSortOrder ::
      !( Maybe
           SortOrderType
       ),
    _lrfrgNextToken ::
      !(Maybe Text),
    _lrfrgMaxResults ::
      !(Maybe Nat),
    _lrfrgFilter ::
      !( Maybe
           ReportFilter
       ),
    _lrfrgReportGroupARN ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListReportsForReportGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrfrgSortOrder' - Use to specify whether the results are returned in ascending or descending order.
--
-- * 'lrfrgNextToken' - During a previous call, the maximum number of items that can be returned is the value specified in @maxResults@ . If there more items in the list, then a unique string called a /nextToken/ is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
--
-- * 'lrfrgMaxResults' - The maximum number of paginated reports in this report group returned per response. Use @nextToken@ to iterate pages in the list of returned @Report@ objects. The default value is 100.
--
-- * 'lrfrgFilter' - A @ReportFilter@ object used to filter the returned reports.
--
-- * 'lrfrgReportGroupARN' - The ARN of the report group for which you want to return report ARNs.
listReportsForReportGroup ::
  -- | 'lrfrgReportGroupARN'
  Text ->
  ListReportsForReportGroup
listReportsForReportGroup pReportGroupARN_ =
  ListReportsForReportGroup'
    { _lrfrgSortOrder =
        Nothing,
      _lrfrgNextToken = Nothing,
      _lrfrgMaxResults = Nothing,
      _lrfrgFilter = Nothing,
      _lrfrgReportGroupARN = pReportGroupARN_
    }

-- | Use to specify whether the results are returned in ascending or descending order.
lrfrgSortOrder :: Lens' ListReportsForReportGroup (Maybe SortOrderType)
lrfrgSortOrder = lens _lrfrgSortOrder (\s a -> s {_lrfrgSortOrder = a})

-- | During a previous call, the maximum number of items that can be returned is the value specified in @maxResults@ . If there more items in the list, then a unique string called a /nextToken/ is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
lrfrgNextToken :: Lens' ListReportsForReportGroup (Maybe Text)
lrfrgNextToken = lens _lrfrgNextToken (\s a -> s {_lrfrgNextToken = a})

-- | The maximum number of paginated reports in this report group returned per response. Use @nextToken@ to iterate pages in the list of returned @Report@ objects. The default value is 100.
lrfrgMaxResults :: Lens' ListReportsForReportGroup (Maybe Natural)
lrfrgMaxResults = lens _lrfrgMaxResults (\s a -> s {_lrfrgMaxResults = a}) . mapping _Nat

-- | A @ReportFilter@ object used to filter the returned reports.
lrfrgFilter :: Lens' ListReportsForReportGroup (Maybe ReportFilter)
lrfrgFilter = lens _lrfrgFilter (\s a -> s {_lrfrgFilter = a})

-- | The ARN of the report group for which you want to return report ARNs.
lrfrgReportGroupARN :: Lens' ListReportsForReportGroup Text
lrfrgReportGroupARN = lens _lrfrgReportGroupARN (\s a -> s {_lrfrgReportGroupARN = a})

instance AWSPager ListReportsForReportGroup where
  page rq rs
    | stop (rs ^. lrfrgrrsNextToken) = Nothing
    | stop (rs ^. lrfrgrrsReports) = Nothing
    | otherwise =
      Just $ rq & lrfrgNextToken .~ rs ^. lrfrgrrsNextToken

instance AWSRequest ListReportsForReportGroup where
  type
    Rs ListReportsForReportGroup =
      ListReportsForReportGroupResponse
  request = postJSON codeBuild
  response =
    receiveJSON
      ( \s h x ->
          ListReportsForReportGroupResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "reports")
            <*> (pure (fromEnum s))
      )

instance Hashable ListReportsForReportGroup

instance NFData ListReportsForReportGroup

instance ToHeaders ListReportsForReportGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeBuild_20161006.ListReportsForReportGroup" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListReportsForReportGroup where
  toJSON ListReportsForReportGroup' {..} =
    object
      ( catMaybes
          [ ("sortOrder" .=) <$> _lrfrgSortOrder,
            ("nextToken" .=) <$> _lrfrgNextToken,
            ("maxResults" .=) <$> _lrfrgMaxResults,
            ("filter" .=) <$> _lrfrgFilter,
            Just ("reportGroupArn" .= _lrfrgReportGroupARN)
          ]
      )

instance ToPath ListReportsForReportGroup where
  toPath = const "/"

instance ToQuery ListReportsForReportGroup where
  toQuery = const mempty

-- | /See:/ 'listReportsForReportGroupResponse' smart constructor.
data ListReportsForReportGroupResponse = ListReportsForReportGroupResponse'
  { _lrfrgrrsNextToken ::
      !( Maybe
           Text
       ),
    _lrfrgrrsReports ::
      !( Maybe
           ( List1
               Text
           )
       ),
    _lrfrgrrsResponseStatus ::
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

-- | Creates a value of 'ListReportsForReportGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrfrgrrsNextToken' - During a previous call, the maximum number of items that can be returned is the value specified in @maxResults@ . If there more items in the list, then a unique string called a /nextToken/ is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
--
-- * 'lrfrgrrsReports' - The list of report ARNs.
--
-- * 'lrfrgrrsResponseStatus' - -- | The response status code.
listReportsForReportGroupResponse ::
  -- | 'lrfrgrrsResponseStatus'
  Int ->
  ListReportsForReportGroupResponse
listReportsForReportGroupResponse pResponseStatus_ =
  ListReportsForReportGroupResponse'
    { _lrfrgrrsNextToken =
        Nothing,
      _lrfrgrrsReports = Nothing,
      _lrfrgrrsResponseStatus =
        pResponseStatus_
    }

-- | During a previous call, the maximum number of items that can be returned is the value specified in @maxResults@ . If there more items in the list, then a unique string called a /nextToken/ is returned. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
lrfrgrrsNextToken :: Lens' ListReportsForReportGroupResponse (Maybe Text)
lrfrgrrsNextToken = lens _lrfrgrrsNextToken (\s a -> s {_lrfrgrrsNextToken = a})

-- | The list of report ARNs.
lrfrgrrsReports :: Lens' ListReportsForReportGroupResponse (Maybe (NonEmpty Text))
lrfrgrrsReports = lens _lrfrgrrsReports (\s a -> s {_lrfrgrrsReports = a}) . mapping _List1

-- | -- | The response status code.
lrfrgrrsResponseStatus :: Lens' ListReportsForReportGroupResponse Int
lrfrgrrsResponseStatus = lens _lrfrgrrsResponseStatus (\s a -> s {_lrfrgrrsResponseStatus = a})

instance NFData ListReportsForReportGroupResponse
