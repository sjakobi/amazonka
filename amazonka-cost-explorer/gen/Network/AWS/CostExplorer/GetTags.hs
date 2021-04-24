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
-- Module      : Network.AWS.CostExplorer.GetTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Queries for available tag keys and tag values for a specified period. You can search the tag values for an arbitrary string.
module Network.AWS.CostExplorer.GetTags
  ( -- * Creating a Request
    getTags,
    GetTags,

    -- * Request Lenses
    gtMaxResults,
    gtSearchString,
    gtTagKey,
    gtNextPageToken,
    gtSortBy,
    gtFilter,
    gtTimePeriod,

    -- * Destructuring the Response
    getTagsResponse,
    GetTagsResponse,

    -- * Response Lenses
    gtrrsNextPageToken,
    gtrrsResponseStatus,
    gtrrsTags,
    gtrrsReturnSize,
    gtrrsTotalSize,
  )
where

import Network.AWS.CostExplorer.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getTags' smart constructor.
data GetTags = GetTags'
  { _gtMaxResults ::
      !(Maybe Nat),
    _gtSearchString :: !(Maybe Text),
    _gtTagKey :: !(Maybe Text),
    _gtNextPageToken :: !(Maybe Text),
    _gtSortBy :: !(Maybe [SortDefinition]),
    _gtFilter :: !(Maybe Expression),
    _gtTimePeriod :: !DateInterval
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtMaxResults' - This field is only used when SortBy is provided in the request. The maximum number of objects that to be returned for this request. If MaxResults is not specified with SortBy, the request will return 1000 results as the default value for this parameter. For @GetTags@ , MaxResults has an upper limit of 1000.
--
-- * 'gtSearchString' - The value that you want to search for.
--
-- * 'gtTagKey' - The key of the tag that you want to return values for.
--
-- * 'gtNextPageToken' - The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
--
-- * 'gtSortBy' - The value by which you want to sort the data. The key represents cost and usage metrics. The following values are supported:     * @BlendedCost@      * @UnblendedCost@      * @AmortizedCost@      * @NetAmortizedCost@      * @NetUnblendedCost@      * @UsageQuantity@      * @NormalizedUsageAmount@  Supported values for @SortOrder@ are @ASCENDING@ or @DESCENDING@ . When using @SortBy@ , @NextPageToken@ and @SearchString@ are not supported.
--
-- * 'gtFilter' - Undocumented member.
--
-- * 'gtTimePeriod' - The start and end dates for retrieving the dimension values. The start date is inclusive, but the end date is exclusive. For example, if @start@ is @2017-01-01@ and @end@ is @2017-05-01@ , then the cost and usage data is retrieved from @2017-01-01@ up to and including @2017-04-30@ but not including @2017-05-01@ .
getTags ::
  -- | 'gtTimePeriod'
  DateInterval ->
  GetTags
getTags pTimePeriod_ =
  GetTags'
    { _gtMaxResults = Nothing,
      _gtSearchString = Nothing,
      _gtTagKey = Nothing,
      _gtNextPageToken = Nothing,
      _gtSortBy = Nothing,
      _gtFilter = Nothing,
      _gtTimePeriod = pTimePeriod_
    }

-- | This field is only used when SortBy is provided in the request. The maximum number of objects that to be returned for this request. If MaxResults is not specified with SortBy, the request will return 1000 results as the default value for this parameter. For @GetTags@ , MaxResults has an upper limit of 1000.
gtMaxResults :: Lens' GetTags (Maybe Natural)
gtMaxResults = lens _gtMaxResults (\s a -> s {_gtMaxResults = a}) . mapping _Nat

-- | The value that you want to search for.
gtSearchString :: Lens' GetTags (Maybe Text)
gtSearchString = lens _gtSearchString (\s a -> s {_gtSearchString = a})

-- | The key of the tag that you want to return values for.
gtTagKey :: Lens' GetTags (Maybe Text)
gtTagKey = lens _gtTagKey (\s a -> s {_gtTagKey = a})

-- | The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.
gtNextPageToken :: Lens' GetTags (Maybe Text)
gtNextPageToken = lens _gtNextPageToken (\s a -> s {_gtNextPageToken = a})

-- | The value by which you want to sort the data. The key represents cost and usage metrics. The following values are supported:     * @BlendedCost@      * @UnblendedCost@      * @AmortizedCost@      * @NetAmortizedCost@      * @NetUnblendedCost@      * @UsageQuantity@      * @NormalizedUsageAmount@  Supported values for @SortOrder@ are @ASCENDING@ or @DESCENDING@ . When using @SortBy@ , @NextPageToken@ and @SearchString@ are not supported.
gtSortBy :: Lens' GetTags [SortDefinition]
gtSortBy = lens _gtSortBy (\s a -> s {_gtSortBy = a}) . _Default . _Coerce

-- | Undocumented member.
gtFilter :: Lens' GetTags (Maybe Expression)
gtFilter = lens _gtFilter (\s a -> s {_gtFilter = a})

-- | The start and end dates for retrieving the dimension values. The start date is inclusive, but the end date is exclusive. For example, if @start@ is @2017-01-01@ and @end@ is @2017-05-01@ , then the cost and usage data is retrieved from @2017-01-01@ up to and including @2017-04-30@ but not including @2017-05-01@ .
gtTimePeriod :: Lens' GetTags DateInterval
gtTimePeriod = lens _gtTimePeriod (\s a -> s {_gtTimePeriod = a})

instance AWSRequest GetTags where
  type Rs GetTags = GetTagsResponse
  request = postJSON costExplorer
  response =
    receiveJSON
      ( \s h x ->
          GetTagsResponse'
            <$> (x .?> "NextPageToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "Tags" .!@ mempty)
            <*> (x .:> "ReturnSize")
            <*> (x .:> "TotalSize")
      )

instance Hashable GetTags

instance NFData GetTags

instance ToHeaders GetTags where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSInsightsIndexService.GetTags" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetTags where
  toJSON GetTags' {..} =
    object
      ( catMaybes
          [ ("MaxResults" .=) <$> _gtMaxResults,
            ("SearchString" .=) <$> _gtSearchString,
            ("TagKey" .=) <$> _gtTagKey,
            ("NextPageToken" .=) <$> _gtNextPageToken,
            ("SortBy" .=) <$> _gtSortBy,
            ("Filter" .=) <$> _gtFilter,
            Just ("TimePeriod" .= _gtTimePeriod)
          ]
      )

instance ToPath GetTags where
  toPath = const "/"

instance ToQuery GetTags where
  toQuery = const mempty

-- | /See:/ 'getTagsResponse' smart constructor.
data GetTagsResponse = GetTagsResponse'
  { _gtrrsNextPageToken ::
      !(Maybe Text),
    _gtrrsResponseStatus :: !Int,
    _gtrrsTags :: ![Text],
    _gtrrsReturnSize :: !Int,
    _gtrrsTotalSize :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtrrsNextPageToken' - The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.
--
-- * 'gtrrsResponseStatus' - -- | The response status code.
--
-- * 'gtrrsTags' - The tags that match your request.
--
-- * 'gtrrsReturnSize' - The number of query results that AWS returns at a time.
--
-- * 'gtrrsTotalSize' - The total number of query results.
getTagsResponse ::
  -- | 'gtrrsResponseStatus'
  Int ->
  -- | 'gtrrsReturnSize'
  Int ->
  -- | 'gtrrsTotalSize'
  Int ->
  GetTagsResponse
getTagsResponse
  pResponseStatus_
  pReturnSize_
  pTotalSize_ =
    GetTagsResponse'
      { _gtrrsNextPageToken = Nothing,
        _gtrrsResponseStatus = pResponseStatus_,
        _gtrrsTags = mempty,
        _gtrrsReturnSize = pReturnSize_,
        _gtrrsTotalSize = pTotalSize_
      }

-- | The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.
gtrrsNextPageToken :: Lens' GetTagsResponse (Maybe Text)
gtrrsNextPageToken = lens _gtrrsNextPageToken (\s a -> s {_gtrrsNextPageToken = a})

-- | -- | The response status code.
gtrrsResponseStatus :: Lens' GetTagsResponse Int
gtrrsResponseStatus = lens _gtrrsResponseStatus (\s a -> s {_gtrrsResponseStatus = a})

-- | The tags that match your request.
gtrrsTags :: Lens' GetTagsResponse [Text]
gtrrsTags = lens _gtrrsTags (\s a -> s {_gtrrsTags = a}) . _Coerce

-- | The number of query results that AWS returns at a time.
gtrrsReturnSize :: Lens' GetTagsResponse Int
gtrrsReturnSize = lens _gtrrsReturnSize (\s a -> s {_gtrrsReturnSize = a})

-- | The total number of query results.
gtrrsTotalSize :: Lens' GetTagsResponse Int
gtrrsTotalSize = lens _gtrrsTotalSize (\s a -> s {_gtrrsTotalSize = a})

instance NFData GetTagsResponse
