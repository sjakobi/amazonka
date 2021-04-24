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
-- Module      : Network.AWS.SSM.ListComplianceSummaries
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a summary count of compliant and non-compliant resources for a compliance type. For example, this call can return State Manager associations, patches, or custom compliance types according to the filter criteria that you specify.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.ListComplianceSummaries
  ( -- * Creating a Request
    listComplianceSummaries,
    ListComplianceSummaries,

    -- * Request Lenses
    lcsNextToken,
    lcsMaxResults,
    lcsFilters,

    -- * Destructuring the Response
    listComplianceSummariesResponse,
    ListComplianceSummariesResponse,

    -- * Response Lenses
    lcsrrsNextToken,
    lcsrrsComplianceSummaryItems,
    lcsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'listComplianceSummaries' smart constructor.
data ListComplianceSummaries = ListComplianceSummaries'
  { _lcsNextToken ::
      !(Maybe Text),
    _lcsMaxResults ::
      !(Maybe Nat),
    _lcsFilters ::
      !( Maybe
           [ComplianceStringFilter]
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

-- | Creates a value of 'ListComplianceSummaries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcsNextToken' - A token to start the list. Use this token to get the next set of results.
--
-- * 'lcsMaxResults' - The maximum number of items to return for this call. Currently, you can specify null or 50. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'lcsFilters' - One or more compliance or inventory filters. Use a filter to return a more specific list of results.
listComplianceSummaries ::
  ListComplianceSummaries
listComplianceSummaries =
  ListComplianceSummaries'
    { _lcsNextToken = Nothing,
      _lcsMaxResults = Nothing,
      _lcsFilters = Nothing
    }

-- | A token to start the list. Use this token to get the next set of results.
lcsNextToken :: Lens' ListComplianceSummaries (Maybe Text)
lcsNextToken = lens _lcsNextToken (\s a -> s {_lcsNextToken = a})

-- | The maximum number of items to return for this call. Currently, you can specify null or 50. The call also returns a token that you can specify in a subsequent call to get the next set of results.
lcsMaxResults :: Lens' ListComplianceSummaries (Maybe Natural)
lcsMaxResults = lens _lcsMaxResults (\s a -> s {_lcsMaxResults = a}) . mapping _Nat

-- | One or more compliance or inventory filters. Use a filter to return a more specific list of results.
lcsFilters :: Lens' ListComplianceSummaries [ComplianceStringFilter]
lcsFilters = lens _lcsFilters (\s a -> s {_lcsFilters = a}) . _Default . _Coerce

instance AWSPager ListComplianceSummaries where
  page rq rs
    | stop (rs ^. lcsrrsNextToken) = Nothing
    | stop (rs ^. lcsrrsComplianceSummaryItems) = Nothing
    | otherwise =
      Just $ rq & lcsNextToken .~ rs ^. lcsrrsNextToken

instance AWSRequest ListComplianceSummaries where
  type
    Rs ListComplianceSummaries =
      ListComplianceSummariesResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          ListComplianceSummariesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ComplianceSummaryItems" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListComplianceSummaries

instance NFData ListComplianceSummaries

instance ToHeaders ListComplianceSummaries where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.ListComplianceSummaries" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListComplianceSummaries where
  toJSON ListComplianceSummaries' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lcsNextToken,
            ("MaxResults" .=) <$> _lcsMaxResults,
            ("Filters" .=) <$> _lcsFilters
          ]
      )

instance ToPath ListComplianceSummaries where
  toPath = const "/"

instance ToQuery ListComplianceSummaries where
  toQuery = const mempty

-- | /See:/ 'listComplianceSummariesResponse' smart constructor.
data ListComplianceSummariesResponse = ListComplianceSummariesResponse'
  { _lcsrrsNextToken ::
      !( Maybe
           Text
       ),
    _lcsrrsComplianceSummaryItems ::
      !( Maybe
           [ComplianceSummaryItem]
       ),
    _lcsrrsResponseStatus ::
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

-- | Creates a value of 'ListComplianceSummariesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcsrrsNextToken' - The token for the next set of items to return. Use this token to get the next set of results.
--
-- * 'lcsrrsComplianceSummaryItems' - A list of compliant and non-compliant summary counts based on compliance types. For example, this call returns State Manager associations, patches, or custom compliance types according to the filter criteria that you specified.
--
-- * 'lcsrrsResponseStatus' - -- | The response status code.
listComplianceSummariesResponse ::
  -- | 'lcsrrsResponseStatus'
  Int ->
  ListComplianceSummariesResponse
listComplianceSummariesResponse pResponseStatus_ =
  ListComplianceSummariesResponse'
    { _lcsrrsNextToken =
        Nothing,
      _lcsrrsComplianceSummaryItems = Nothing,
      _lcsrrsResponseStatus = pResponseStatus_
    }

-- | The token for the next set of items to return. Use this token to get the next set of results.
lcsrrsNextToken :: Lens' ListComplianceSummariesResponse (Maybe Text)
lcsrrsNextToken = lens _lcsrrsNextToken (\s a -> s {_lcsrrsNextToken = a})

-- | A list of compliant and non-compliant summary counts based on compliance types. For example, this call returns State Manager associations, patches, or custom compliance types according to the filter criteria that you specified.
lcsrrsComplianceSummaryItems :: Lens' ListComplianceSummariesResponse [ComplianceSummaryItem]
lcsrrsComplianceSummaryItems = lens _lcsrrsComplianceSummaryItems (\s a -> s {_lcsrrsComplianceSummaryItems = a}) . _Default . _Coerce

-- | -- | The response status code.
lcsrrsResponseStatus :: Lens' ListComplianceSummariesResponse Int
lcsrrsResponseStatus = lens _lcsrrsResponseStatus (\s a -> s {_lcsrrsResponseStatus = a})

instance NFData ListComplianceSummariesResponse
