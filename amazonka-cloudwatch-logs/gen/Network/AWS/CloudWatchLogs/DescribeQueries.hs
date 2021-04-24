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
-- Module      : Network.AWS.CloudWatchLogs.DescribeQueries
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of CloudWatch Logs Insights queries that are scheduled, executing, or have been executed recently in this account. You can request all queries or limit it to queries of a specific log group or queries with a certain status.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudWatchLogs.DescribeQueries
  ( -- * Creating a Request
    describeQueries,
    DescribeQueries,

    -- * Request Lenses
    dqNextToken,
    dqStatus,
    dqMaxResults,
    dqLogGroupName,

    -- * Destructuring the Response
    describeQueriesResponse,
    DescribeQueriesResponse,

    -- * Response Lenses
    dqrrsNextToken,
    dqrrsQueries,
    dqrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchLogs.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeQueries' smart constructor.
data DescribeQueries = DescribeQueries'
  { _dqNextToken ::
      !(Maybe Text),
    _dqStatus :: !(Maybe QueryStatus),
    _dqMaxResults :: !(Maybe Nat),
    _dqLogGroupName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeQueries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dqNextToken' - Undocumented member.
--
-- * 'dqStatus' - Limits the returned queries to only those that have the specified status. Valid values are @Cancelled@ , @Complete@ , @Failed@ , @Running@ , and @Scheduled@ .
--
-- * 'dqMaxResults' - Limits the number of returned queries to the specified number.
--
-- * 'dqLogGroupName' - Limits the returned queries to only those for the specified log group.
describeQueries ::
  DescribeQueries
describeQueries =
  DescribeQueries'
    { _dqNextToken = Nothing,
      _dqStatus = Nothing,
      _dqMaxResults = Nothing,
      _dqLogGroupName = Nothing
    }

-- | Undocumented member.
dqNextToken :: Lens' DescribeQueries (Maybe Text)
dqNextToken = lens _dqNextToken (\s a -> s {_dqNextToken = a})

-- | Limits the returned queries to only those that have the specified status. Valid values are @Cancelled@ , @Complete@ , @Failed@ , @Running@ , and @Scheduled@ .
dqStatus :: Lens' DescribeQueries (Maybe QueryStatus)
dqStatus = lens _dqStatus (\s a -> s {_dqStatus = a})

-- | Limits the number of returned queries to the specified number.
dqMaxResults :: Lens' DescribeQueries (Maybe Natural)
dqMaxResults = lens _dqMaxResults (\s a -> s {_dqMaxResults = a}) . mapping _Nat

-- | Limits the returned queries to only those for the specified log group.
dqLogGroupName :: Lens' DescribeQueries (Maybe Text)
dqLogGroupName = lens _dqLogGroupName (\s a -> s {_dqLogGroupName = a})

instance AWSPager DescribeQueries where
  page rq rs
    | stop (rs ^. dqrrsNextToken) = Nothing
    | stop (rs ^. dqrrsQueries) = Nothing
    | otherwise =
      Just $ rq & dqNextToken .~ rs ^. dqrrsNextToken

instance AWSRequest DescribeQueries where
  type Rs DescribeQueries = DescribeQueriesResponse
  request = postJSON cloudWatchLogs
  response =
    receiveJSON
      ( \s h x ->
          DescribeQueriesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "queries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeQueries

instance NFData DescribeQueries

instance ToHeaders DescribeQueries where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Logs_20140328.DescribeQueries" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeQueries where
  toJSON DescribeQueries' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _dqNextToken,
            ("status" .=) <$> _dqStatus,
            ("maxResults" .=) <$> _dqMaxResults,
            ("logGroupName" .=) <$> _dqLogGroupName
          ]
      )

instance ToPath DescribeQueries where
  toPath = const "/"

instance ToQuery DescribeQueries where
  toQuery = const mempty

-- | /See:/ 'describeQueriesResponse' smart constructor.
data DescribeQueriesResponse = DescribeQueriesResponse'
  { _dqrrsNextToken ::
      !(Maybe Text),
    _dqrrsQueries ::
      !(Maybe [QueryInfo]),
    _dqrrsResponseStatus ::
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

-- | Creates a value of 'DescribeQueriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dqrrsNextToken' - Undocumented member.
--
-- * 'dqrrsQueries' - The list of queries that match the request.
--
-- * 'dqrrsResponseStatus' - -- | The response status code.
describeQueriesResponse ::
  -- | 'dqrrsResponseStatus'
  Int ->
  DescribeQueriesResponse
describeQueriesResponse pResponseStatus_ =
  DescribeQueriesResponse'
    { _dqrrsNextToken = Nothing,
      _dqrrsQueries = Nothing,
      _dqrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
dqrrsNextToken :: Lens' DescribeQueriesResponse (Maybe Text)
dqrrsNextToken = lens _dqrrsNextToken (\s a -> s {_dqrrsNextToken = a})

-- | The list of queries that match the request.
dqrrsQueries :: Lens' DescribeQueriesResponse [QueryInfo]
dqrrsQueries = lens _dqrrsQueries (\s a -> s {_dqrrsQueries = a}) . _Default . _Coerce

-- | -- | The response status code.
dqrrsResponseStatus :: Lens' DescribeQueriesResponse Int
dqrrsResponseStatus = lens _dqrrsResponseStatus (\s a -> s {_dqrrsResponseStatus = a})

instance NFData DescribeQueriesResponse
