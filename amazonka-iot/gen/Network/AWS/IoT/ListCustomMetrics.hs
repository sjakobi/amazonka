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
-- Module      : Network.AWS.IoT.ListCustomMetrics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists your Device Defender detect custom metrics.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListCustomMetrics
  ( -- * Creating a Request
    listCustomMetrics,
    ListCustomMetrics,

    -- * Request Lenses
    lcmNextToken,
    lcmMaxResults,

    -- * Destructuring the Response
    listCustomMetricsResponse,
    ListCustomMetricsResponse,

    -- * Response Lenses
    lcmrrsNextToken,
    lcmrrsMetricNames,
    lcmrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listCustomMetrics' smart constructor.
data ListCustomMetrics = ListCustomMetrics'
  { _lcmNextToken ::
      !(Maybe Text),
    _lcmMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListCustomMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcmNextToken' - The token for the next set of results.
--
-- * 'lcmMaxResults' - The maximum number of results to return at one time. The default is 25.
listCustomMetrics ::
  ListCustomMetrics
listCustomMetrics =
  ListCustomMetrics'
    { _lcmNextToken = Nothing,
      _lcmMaxResults = Nothing
    }

-- | The token for the next set of results.
lcmNextToken :: Lens' ListCustomMetrics (Maybe Text)
lcmNextToken = lens _lcmNextToken (\s a -> s {_lcmNextToken = a})

-- | The maximum number of results to return at one time. The default is 25.
lcmMaxResults :: Lens' ListCustomMetrics (Maybe Natural)
lcmMaxResults = lens _lcmMaxResults (\s a -> s {_lcmMaxResults = a}) . mapping _Nat

instance AWSPager ListCustomMetrics where
  page rq rs
    | stop (rs ^. lcmrrsNextToken) = Nothing
    | stop (rs ^. lcmrrsMetricNames) = Nothing
    | otherwise =
      Just $ rq & lcmNextToken .~ rs ^. lcmrrsNextToken

instance AWSRequest ListCustomMetrics where
  type Rs ListCustomMetrics = ListCustomMetricsResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListCustomMetricsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "metricNames" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListCustomMetrics

instance NFData ListCustomMetrics

instance ToHeaders ListCustomMetrics where
  toHeaders = const mempty

instance ToPath ListCustomMetrics where
  toPath = const "/custom-metrics"

instance ToQuery ListCustomMetrics where
  toQuery ListCustomMetrics' {..} =
    mconcat
      [ "nextToken" =: _lcmNextToken,
        "maxResults" =: _lcmMaxResults
      ]

-- | /See:/ 'listCustomMetricsResponse' smart constructor.
data ListCustomMetricsResponse = ListCustomMetricsResponse'
  { _lcmrrsNextToken ::
      !(Maybe Text),
    _lcmrrsMetricNames ::
      !(Maybe [Text]),
    _lcmrrsResponseStatus ::
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

-- | Creates a value of 'ListCustomMetricsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcmrrsNextToken' - A token that can be used to retrieve the next set of results, or @null@ if there are no additional results.
--
-- * 'lcmrrsMetricNames' - The name of the custom metric.
--
-- * 'lcmrrsResponseStatus' - -- | The response status code.
listCustomMetricsResponse ::
  -- | 'lcmrrsResponseStatus'
  Int ->
  ListCustomMetricsResponse
listCustomMetricsResponse pResponseStatus_ =
  ListCustomMetricsResponse'
    { _lcmrrsNextToken =
        Nothing,
      _lcmrrsMetricNames = Nothing,
      _lcmrrsResponseStatus = pResponseStatus_
    }

-- | A token that can be used to retrieve the next set of results, or @null@ if there are no additional results.
lcmrrsNextToken :: Lens' ListCustomMetricsResponse (Maybe Text)
lcmrrsNextToken = lens _lcmrrsNextToken (\s a -> s {_lcmrrsNextToken = a})

-- | The name of the custom metric.
lcmrrsMetricNames :: Lens' ListCustomMetricsResponse [Text]
lcmrrsMetricNames = lens _lcmrrsMetricNames (\s a -> s {_lcmrrsMetricNames = a}) . _Default . _Coerce

-- | -- | The response status code.
lcmrrsResponseStatus :: Lens' ListCustomMetricsResponse Int
lcmrrsResponseStatus = lens _lcmrrsResponseStatus (\s a -> s {_lcmrrsResponseStatus = a})

instance NFData ListCustomMetricsResponse
