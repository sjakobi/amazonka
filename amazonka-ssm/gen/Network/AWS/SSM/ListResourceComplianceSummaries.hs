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
-- Module      : Network.AWS.SSM.ListResourceComplianceSummaries
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a resource-level summary count. The summary includes information about compliant and non-compliant statuses and detailed compliance-item severity counts, according to the filter criteria you specify.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.ListResourceComplianceSummaries
  ( -- * Creating a Request
    listResourceComplianceSummaries,
    ListResourceComplianceSummaries,

    -- * Request Lenses
    lrcsNextToken,
    lrcsMaxResults,
    lrcsFilters,

    -- * Destructuring the Response
    listResourceComplianceSummariesResponse,
    ListResourceComplianceSummariesResponse,

    -- * Response Lenses
    lrcsrrsNextToken,
    lrcsrrsResourceComplianceSummaryItems,
    lrcsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'listResourceComplianceSummaries' smart constructor.
data ListResourceComplianceSummaries = ListResourceComplianceSummaries'
  { _lrcsNextToken ::
      !( Maybe
           Text
       ),
    _lrcsMaxResults ::
      !( Maybe
           Nat
       ),
    _lrcsFilters ::
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

-- | Creates a value of 'ListResourceComplianceSummaries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrcsNextToken' - A token to start the list. Use this token to get the next set of results.
--
-- * 'lrcsMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'lrcsFilters' - One or more filters. Use a filter to return a more specific list of results.
listResourceComplianceSummaries ::
  ListResourceComplianceSummaries
listResourceComplianceSummaries =
  ListResourceComplianceSummaries'
    { _lrcsNextToken =
        Nothing,
      _lrcsMaxResults = Nothing,
      _lrcsFilters = Nothing
    }

-- | A token to start the list. Use this token to get the next set of results.
lrcsNextToken :: Lens' ListResourceComplianceSummaries (Maybe Text)
lrcsNextToken = lens _lrcsNextToken (\s a -> s {_lrcsNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
lrcsMaxResults :: Lens' ListResourceComplianceSummaries (Maybe Natural)
lrcsMaxResults = lens _lrcsMaxResults (\s a -> s {_lrcsMaxResults = a}) . mapping _Nat

-- | One or more filters. Use a filter to return a more specific list of results.
lrcsFilters :: Lens' ListResourceComplianceSummaries [ComplianceStringFilter]
lrcsFilters = lens _lrcsFilters (\s a -> s {_lrcsFilters = a}) . _Default . _Coerce

instance AWSPager ListResourceComplianceSummaries where
  page rq rs
    | stop (rs ^. lrcsrrsNextToken) = Nothing
    | stop (rs ^. lrcsrrsResourceComplianceSummaryItems) =
      Nothing
    | otherwise =
      Just $ rq & lrcsNextToken .~ rs ^. lrcsrrsNextToken

instance AWSRequest ListResourceComplianceSummaries where
  type
    Rs ListResourceComplianceSummaries =
      ListResourceComplianceSummariesResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          ListResourceComplianceSummariesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ResourceComplianceSummaryItems" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListResourceComplianceSummaries

instance NFData ListResourceComplianceSummaries

instance ToHeaders ListResourceComplianceSummaries where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.ListResourceComplianceSummaries" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListResourceComplianceSummaries where
  toJSON ListResourceComplianceSummaries' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lrcsNextToken,
            ("MaxResults" .=) <$> _lrcsMaxResults,
            ("Filters" .=) <$> _lrcsFilters
          ]
      )

instance ToPath ListResourceComplianceSummaries where
  toPath = const "/"

instance ToQuery ListResourceComplianceSummaries where
  toQuery = const mempty

-- | /See:/ 'listResourceComplianceSummariesResponse' smart constructor.
data ListResourceComplianceSummariesResponse = ListResourceComplianceSummariesResponse'
  { _lrcsrrsNextToken ::
      !( Maybe
           Text
       ),
    _lrcsrrsResourceComplianceSummaryItems ::
      !( Maybe
           [ResourceComplianceSummaryItem]
       ),
    _lrcsrrsResponseStatus ::
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

-- | Creates a value of 'ListResourceComplianceSummariesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrcsrrsNextToken' - The token for the next set of items to return. Use this token to get the next set of results.
--
-- * 'lrcsrrsResourceComplianceSummaryItems' - A summary count for specified or targeted managed instances. Summary count includes information about compliant and non-compliant State Manager associations, patch status, or custom items according to the filter criteria that you specify.
--
-- * 'lrcsrrsResponseStatus' - -- | The response status code.
listResourceComplianceSummariesResponse ::
  -- | 'lrcsrrsResponseStatus'
  Int ->
  ListResourceComplianceSummariesResponse
listResourceComplianceSummariesResponse
  pResponseStatus_ =
    ListResourceComplianceSummariesResponse'
      { _lrcsrrsNextToken =
          Nothing,
        _lrcsrrsResourceComplianceSummaryItems =
          Nothing,
        _lrcsrrsResponseStatus =
          pResponseStatus_
      }

-- | The token for the next set of items to return. Use this token to get the next set of results.
lrcsrrsNextToken :: Lens' ListResourceComplianceSummariesResponse (Maybe Text)
lrcsrrsNextToken = lens _lrcsrrsNextToken (\s a -> s {_lrcsrrsNextToken = a})

-- | A summary count for specified or targeted managed instances. Summary count includes information about compliant and non-compliant State Manager associations, patch status, or custom items according to the filter criteria that you specify.
lrcsrrsResourceComplianceSummaryItems :: Lens' ListResourceComplianceSummariesResponse [ResourceComplianceSummaryItem]
lrcsrrsResourceComplianceSummaryItems = lens _lrcsrrsResourceComplianceSummaryItems (\s a -> s {_lrcsrrsResourceComplianceSummaryItems = a}) . _Default . _Coerce

-- | -- | The response status code.
lrcsrrsResponseStatus :: Lens' ListResourceComplianceSummariesResponse Int
lrcsrrsResponseStatus = lens _lrcsrrsResponseStatus (\s a -> s {_lrcsrrsResponseStatus = a})

instance
  NFData
    ListResourceComplianceSummariesResponse
