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
-- Module      : Network.AWS.CloudWatchLogs.DescribeMetricFilters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the specified metric filters. You can list all of the metric filters or filter the results by log name, prefix, metric name, or metric namespace. The results are ASCII-sorted by filter name.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudWatchLogs.DescribeMetricFilters
  ( -- * Creating a Request
    describeMetricFilters,
    DescribeMetricFilters,

    -- * Request Lenses
    dFilterNamePrefix,
    dMetricNamespace,
    dNextToken,
    dMetricName,
    dLogGroupName,
    dLimit,

    -- * Destructuring the Response
    describeMetricFiltersResponse,
    DescribeMetricFiltersResponse,

    -- * Response Lenses
    dmfrrsMetricFilters,
    dmfrrsNextToken,
    dmfrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchLogs.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeMetricFilters' smart constructor.
data DescribeMetricFilters = DescribeMetricFilters'
  { _dFilterNamePrefix ::
      !(Maybe Text),
    _dMetricNamespace ::
      !(Maybe Text),
    _dNextToken ::
      !(Maybe Text),
    _dMetricName ::
      !(Maybe Text),
    _dLogGroupName ::
      !(Maybe Text),
    _dLimit :: !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeMetricFilters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dFilterNamePrefix' - The prefix to match. CloudWatch Logs uses the value you set here only if you also include the @logGroupName@ parameter in your request.
--
-- * 'dMetricNamespace' - Filters results to include only those in the specified namespace. If you include this parameter in your request, you must also include the @metricName@ parameter.
--
-- * 'dNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dMetricName' - Filters results to include only those with the specified metric name. If you include this parameter in your request, you must also include the @metricNamespace@ parameter.
--
-- * 'dLogGroupName' - The name of the log group.
--
-- * 'dLimit' - The maximum number of items returned. If you don't specify a value, the default is up to 50 items.
describeMetricFilters ::
  DescribeMetricFilters
describeMetricFilters =
  DescribeMetricFilters'
    { _dFilterNamePrefix =
        Nothing,
      _dMetricNamespace = Nothing,
      _dNextToken = Nothing,
      _dMetricName = Nothing,
      _dLogGroupName = Nothing,
      _dLimit = Nothing
    }

-- | The prefix to match. CloudWatch Logs uses the value you set here only if you also include the @logGroupName@ parameter in your request.
dFilterNamePrefix :: Lens' DescribeMetricFilters (Maybe Text)
dFilterNamePrefix = lens _dFilterNamePrefix (\s a -> s {_dFilterNamePrefix = a})

-- | Filters results to include only those in the specified namespace. If you include this parameter in your request, you must also include the @metricName@ parameter.
dMetricNamespace :: Lens' DescribeMetricFilters (Maybe Text)
dMetricNamespace = lens _dMetricNamespace (\s a -> s {_dMetricNamespace = a})

-- | The token for the next set of items to return. (You received this token from a previous call.)
dNextToken :: Lens' DescribeMetricFilters (Maybe Text)
dNextToken = lens _dNextToken (\s a -> s {_dNextToken = a})

-- | Filters results to include only those with the specified metric name. If you include this parameter in your request, you must also include the @metricNamespace@ parameter.
dMetricName :: Lens' DescribeMetricFilters (Maybe Text)
dMetricName = lens _dMetricName (\s a -> s {_dMetricName = a})

-- | The name of the log group.
dLogGroupName :: Lens' DescribeMetricFilters (Maybe Text)
dLogGroupName = lens _dLogGroupName (\s a -> s {_dLogGroupName = a})

-- | The maximum number of items returned. If you don't specify a value, the default is up to 50 items.
dLimit :: Lens' DescribeMetricFilters (Maybe Natural)
dLimit = lens _dLimit (\s a -> s {_dLimit = a}) . mapping _Nat

instance AWSPager DescribeMetricFilters where
  page rq rs
    | stop (rs ^. dmfrrsNextToken) = Nothing
    | stop (rs ^. dmfrrsMetricFilters) = Nothing
    | otherwise =
      Just $ rq & dNextToken .~ rs ^. dmfrrsNextToken

instance AWSRequest DescribeMetricFilters where
  type
    Rs DescribeMetricFilters =
      DescribeMetricFiltersResponse
  request = postJSON cloudWatchLogs
  response =
    receiveJSON
      ( \s h x ->
          DescribeMetricFiltersResponse'
            <$> (x .?> "metricFilters" .!@ mempty)
            <*> (x .?> "nextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeMetricFilters

instance NFData DescribeMetricFilters

instance ToHeaders DescribeMetricFilters where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Logs_20140328.DescribeMetricFilters" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeMetricFilters where
  toJSON DescribeMetricFilters' {..} =
    object
      ( catMaybes
          [ ("filterNamePrefix" .=) <$> _dFilterNamePrefix,
            ("metricNamespace" .=) <$> _dMetricNamespace,
            ("nextToken" .=) <$> _dNextToken,
            ("metricName" .=) <$> _dMetricName,
            ("logGroupName" .=) <$> _dLogGroupName,
            ("limit" .=) <$> _dLimit
          ]
      )

instance ToPath DescribeMetricFilters where
  toPath = const "/"

instance ToQuery DescribeMetricFilters where
  toQuery = const mempty

-- | /See:/ 'describeMetricFiltersResponse' smart constructor.
data DescribeMetricFiltersResponse = DescribeMetricFiltersResponse'
  { _dmfrrsMetricFilters ::
      !( Maybe
           [MetricFilter]
       ),
    _dmfrrsNextToken ::
      !( Maybe
           Text
       ),
    _dmfrrsResponseStatus ::
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

-- | Creates a value of 'DescribeMetricFiltersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmfrrsMetricFilters' - The metric filters.
--
-- * 'dmfrrsNextToken' - Undocumented member.
--
-- * 'dmfrrsResponseStatus' - -- | The response status code.
describeMetricFiltersResponse ::
  -- | 'dmfrrsResponseStatus'
  Int ->
  DescribeMetricFiltersResponse
describeMetricFiltersResponse pResponseStatus_ =
  DescribeMetricFiltersResponse'
    { _dmfrrsMetricFilters =
        Nothing,
      _dmfrrsNextToken = Nothing,
      _dmfrrsResponseStatus = pResponseStatus_
    }

-- | The metric filters.
dmfrrsMetricFilters :: Lens' DescribeMetricFiltersResponse [MetricFilter]
dmfrrsMetricFilters = lens _dmfrrsMetricFilters (\s a -> s {_dmfrrsMetricFilters = a}) . _Default . _Coerce

-- | Undocumented member.
dmfrrsNextToken :: Lens' DescribeMetricFiltersResponse (Maybe Text)
dmfrrsNextToken = lens _dmfrrsNextToken (\s a -> s {_dmfrrsNextToken = a})

-- | -- | The response status code.
dmfrrsResponseStatus :: Lens' DescribeMetricFiltersResponse Int
dmfrrsResponseStatus = lens _dmfrrsResponseStatus (\s a -> s {_dmfrrsResponseStatus = a})

instance NFData DescribeMetricFiltersResponse
