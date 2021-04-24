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
-- Module      : Network.AWS.Glue.GetCrawlerMetrics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves metrics about specified crawlers.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Glue.GetCrawlerMetrics
  ( -- * Creating a Request
    getCrawlerMetrics,
    GetCrawlerMetrics,

    -- * Request Lenses
    gcmNextToken,
    gcmCrawlerNameList,
    gcmMaxResults,

    -- * Destructuring the Response
    getCrawlerMetricsResponse,
    GetCrawlerMetricsResponse,

    -- * Response Lenses
    gcmrrsNextToken,
    gcmrrsCrawlerMetricsList,
    gcmrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCrawlerMetrics' smart constructor.
data GetCrawlerMetrics = GetCrawlerMetrics'
  { _gcmNextToken ::
      !(Maybe Text),
    _gcmCrawlerNameList ::
      !(Maybe [Text]),
    _gcmMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetCrawlerMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmNextToken' - A continuation token, if this is a continuation call.
--
-- * 'gcmCrawlerNameList' - A list of the names of crawlers about which to retrieve metrics.
--
-- * 'gcmMaxResults' - The maximum size of a list to return.
getCrawlerMetrics ::
  GetCrawlerMetrics
getCrawlerMetrics =
  GetCrawlerMetrics'
    { _gcmNextToken = Nothing,
      _gcmCrawlerNameList = Nothing,
      _gcmMaxResults = Nothing
    }

-- | A continuation token, if this is a continuation call.
gcmNextToken :: Lens' GetCrawlerMetrics (Maybe Text)
gcmNextToken = lens _gcmNextToken (\s a -> s {_gcmNextToken = a})

-- | A list of the names of crawlers about which to retrieve metrics.
gcmCrawlerNameList :: Lens' GetCrawlerMetrics [Text]
gcmCrawlerNameList = lens _gcmCrawlerNameList (\s a -> s {_gcmCrawlerNameList = a}) . _Default . _Coerce

-- | The maximum size of a list to return.
gcmMaxResults :: Lens' GetCrawlerMetrics (Maybe Natural)
gcmMaxResults = lens _gcmMaxResults (\s a -> s {_gcmMaxResults = a}) . mapping _Nat

instance AWSPager GetCrawlerMetrics where
  page rq rs
    | stop (rs ^. gcmrrsNextToken) = Nothing
    | stop (rs ^. gcmrrsCrawlerMetricsList) = Nothing
    | otherwise =
      Just $ rq & gcmNextToken .~ rs ^. gcmrrsNextToken

instance AWSRequest GetCrawlerMetrics where
  type Rs GetCrawlerMetrics = GetCrawlerMetricsResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetCrawlerMetricsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "CrawlerMetricsList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetCrawlerMetrics

instance NFData GetCrawlerMetrics

instance ToHeaders GetCrawlerMetrics where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetCrawlerMetrics" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetCrawlerMetrics where
  toJSON GetCrawlerMetrics' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gcmNextToken,
            ("CrawlerNameList" .=) <$> _gcmCrawlerNameList,
            ("MaxResults" .=) <$> _gcmMaxResults
          ]
      )

instance ToPath GetCrawlerMetrics where
  toPath = const "/"

instance ToQuery GetCrawlerMetrics where
  toQuery = const mempty

-- | /See:/ 'getCrawlerMetricsResponse' smart constructor.
data GetCrawlerMetricsResponse = GetCrawlerMetricsResponse'
  { _gcmrrsNextToken ::
      !(Maybe Text),
    _gcmrrsCrawlerMetricsList ::
      !( Maybe
           [CrawlerMetrics]
       ),
    _gcmrrsResponseStatus ::
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

-- | Creates a value of 'GetCrawlerMetricsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcmrrsNextToken' - A continuation token, if the returned list does not contain the last metric available.
--
-- * 'gcmrrsCrawlerMetricsList' - A list of metrics for the specified crawler.
--
-- * 'gcmrrsResponseStatus' - -- | The response status code.
getCrawlerMetricsResponse ::
  -- | 'gcmrrsResponseStatus'
  Int ->
  GetCrawlerMetricsResponse
getCrawlerMetricsResponse pResponseStatus_ =
  GetCrawlerMetricsResponse'
    { _gcmrrsNextToken =
        Nothing,
      _gcmrrsCrawlerMetricsList = Nothing,
      _gcmrrsResponseStatus = pResponseStatus_
    }

-- | A continuation token, if the returned list does not contain the last metric available.
gcmrrsNextToken :: Lens' GetCrawlerMetricsResponse (Maybe Text)
gcmrrsNextToken = lens _gcmrrsNextToken (\s a -> s {_gcmrrsNextToken = a})

-- | A list of metrics for the specified crawler.
gcmrrsCrawlerMetricsList :: Lens' GetCrawlerMetricsResponse [CrawlerMetrics]
gcmrrsCrawlerMetricsList = lens _gcmrrsCrawlerMetricsList (\s a -> s {_gcmrrsCrawlerMetricsList = a}) . _Default . _Coerce

-- | -- | The response status code.
gcmrrsResponseStatus :: Lens' GetCrawlerMetricsResponse Int
gcmrrsResponseStatus = lens _gcmrrsResponseStatus (\s a -> s {_gcmrrsResponseStatus = a})

instance NFData GetCrawlerMetricsResponse
