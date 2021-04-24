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
-- Module      : Network.AWS.CloudWatchLogs.DescribeLogGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the specified log groups. You can list all your log groups or filter the results by prefix. The results are ASCII-sorted by log group name.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudWatchLogs.DescribeLogGroups
  ( -- * Creating a Request
    describeLogGroups,
    DescribeLogGroups,

    -- * Request Lenses
    dlgNextToken,
    dlgLogGroupNamePrefix,
    dlgLimit,

    -- * Destructuring the Response
    describeLogGroupsResponse,
    DescribeLogGroupsResponse,

    -- * Response Lenses
    dlgrrsNextToken,
    dlgrrsLogGroups,
    dlgrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchLogs.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeLogGroups' smart constructor.
data DescribeLogGroups = DescribeLogGroups'
  { _dlgNextToken ::
      !(Maybe Text),
    _dlgLogGroupNamePrefix ::
      !(Maybe Text),
    _dlgLimit :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeLogGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlgNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dlgLogGroupNamePrefix' - The prefix to match.
--
-- * 'dlgLimit' - The maximum number of items returned. If you don't specify a value, the default is up to 50 items.
describeLogGroups ::
  DescribeLogGroups
describeLogGroups =
  DescribeLogGroups'
    { _dlgNextToken = Nothing,
      _dlgLogGroupNamePrefix = Nothing,
      _dlgLimit = Nothing
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
dlgNextToken :: Lens' DescribeLogGroups (Maybe Text)
dlgNextToken = lens _dlgNextToken (\s a -> s {_dlgNextToken = a})

-- | The prefix to match.
dlgLogGroupNamePrefix :: Lens' DescribeLogGroups (Maybe Text)
dlgLogGroupNamePrefix = lens _dlgLogGroupNamePrefix (\s a -> s {_dlgLogGroupNamePrefix = a})

-- | The maximum number of items returned. If you don't specify a value, the default is up to 50 items.
dlgLimit :: Lens' DescribeLogGroups (Maybe Natural)
dlgLimit = lens _dlgLimit (\s a -> s {_dlgLimit = a}) . mapping _Nat

instance AWSPager DescribeLogGroups where
  page rq rs
    | stop (rs ^. dlgrrsNextToken) = Nothing
    | stop (rs ^. dlgrrsLogGroups) = Nothing
    | otherwise =
      Just $ rq & dlgNextToken .~ rs ^. dlgrrsNextToken

instance AWSRequest DescribeLogGroups where
  type Rs DescribeLogGroups = DescribeLogGroupsResponse
  request = postJSON cloudWatchLogs
  response =
    receiveJSON
      ( \s h x ->
          DescribeLogGroupsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "logGroups" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeLogGroups

instance NFData DescribeLogGroups

instance ToHeaders DescribeLogGroups where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Logs_20140328.DescribeLogGroups" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeLogGroups where
  toJSON DescribeLogGroups' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _dlgNextToken,
            ("logGroupNamePrefix" .=) <$> _dlgLogGroupNamePrefix,
            ("limit" .=) <$> _dlgLimit
          ]
      )

instance ToPath DescribeLogGroups where
  toPath = const "/"

instance ToQuery DescribeLogGroups where
  toQuery = const mempty

-- | /See:/ 'describeLogGroupsResponse' smart constructor.
data DescribeLogGroupsResponse = DescribeLogGroupsResponse'
  { _dlgrrsNextToken ::
      !(Maybe Text),
    _dlgrrsLogGroups ::
      !(Maybe [LogGroup]),
    _dlgrrsResponseStatus ::
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

-- | Creates a value of 'DescribeLogGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlgrrsNextToken' - Undocumented member.
--
-- * 'dlgrrsLogGroups' - The log groups. If the @retentionInDays@ value if not included for a log group, then that log group is set to have its events never expire.
--
-- * 'dlgrrsResponseStatus' - -- | The response status code.
describeLogGroupsResponse ::
  -- | 'dlgrrsResponseStatus'
  Int ->
  DescribeLogGroupsResponse
describeLogGroupsResponse pResponseStatus_ =
  DescribeLogGroupsResponse'
    { _dlgrrsNextToken =
        Nothing,
      _dlgrrsLogGroups = Nothing,
      _dlgrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
dlgrrsNextToken :: Lens' DescribeLogGroupsResponse (Maybe Text)
dlgrrsNextToken = lens _dlgrrsNextToken (\s a -> s {_dlgrrsNextToken = a})

-- | The log groups. If the @retentionInDays@ value if not included for a log group, then that log group is set to have its events never expire.
dlgrrsLogGroups :: Lens' DescribeLogGroupsResponse [LogGroup]
dlgrrsLogGroups = lens _dlgrrsLogGroups (\s a -> s {_dlgrrsLogGroups = a}) . _Default . _Coerce

-- | -- | The response status code.
dlgrrsResponseStatus :: Lens' DescribeLogGroupsResponse Int
dlgrrsResponseStatus = lens _dlgrrsResponseStatus (\s a -> s {_dlgrrsResponseStatus = a})

instance NFData DescribeLogGroupsResponse
