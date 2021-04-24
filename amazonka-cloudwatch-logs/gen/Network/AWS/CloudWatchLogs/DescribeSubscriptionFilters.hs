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
-- Module      : Network.AWS.CloudWatchLogs.DescribeSubscriptionFilters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the subscription filters for the specified log group. You can list all the subscription filters or filter the results by prefix. The results are ASCII-sorted by filter name.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudWatchLogs.DescribeSubscriptionFilters
  ( -- * Creating a Request
    describeSubscriptionFilters,
    DescribeSubscriptionFilters,

    -- * Request Lenses
    dsfFilterNamePrefix,
    dsfNextToken,
    dsfLimit,
    dsfLogGroupName,

    -- * Destructuring the Response
    describeSubscriptionFiltersResponse,
    DescribeSubscriptionFiltersResponse,

    -- * Response Lenses
    dsfrrsNextToken,
    dsfrrsSubscriptionFilters,
    dsfrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchLogs.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeSubscriptionFilters' smart constructor.
data DescribeSubscriptionFilters = DescribeSubscriptionFilters'
  { _dsfFilterNamePrefix ::
      !(Maybe Text),
    _dsfNextToken ::
      !(Maybe Text),
    _dsfLimit ::
      !(Maybe Nat),
    _dsfLogGroupName ::
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

-- | Creates a value of 'DescribeSubscriptionFilters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsfFilterNamePrefix' - The prefix to match. If you don't specify a value, no prefix filter is applied.
--
-- * 'dsfNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dsfLimit' - The maximum number of items returned. If you don't specify a value, the default is up to 50 items.
--
-- * 'dsfLogGroupName' - The name of the log group.
describeSubscriptionFilters ::
  -- | 'dsfLogGroupName'
  Text ->
  DescribeSubscriptionFilters
describeSubscriptionFilters pLogGroupName_ =
  DescribeSubscriptionFilters'
    { _dsfFilterNamePrefix =
        Nothing,
      _dsfNextToken = Nothing,
      _dsfLimit = Nothing,
      _dsfLogGroupName = pLogGroupName_
    }

-- | The prefix to match. If you don't specify a value, no prefix filter is applied.
dsfFilterNamePrefix :: Lens' DescribeSubscriptionFilters (Maybe Text)
dsfFilterNamePrefix = lens _dsfFilterNamePrefix (\s a -> s {_dsfFilterNamePrefix = a})

-- | The token for the next set of items to return. (You received this token from a previous call.)
dsfNextToken :: Lens' DescribeSubscriptionFilters (Maybe Text)
dsfNextToken = lens _dsfNextToken (\s a -> s {_dsfNextToken = a})

-- | The maximum number of items returned. If you don't specify a value, the default is up to 50 items.
dsfLimit :: Lens' DescribeSubscriptionFilters (Maybe Natural)
dsfLimit = lens _dsfLimit (\s a -> s {_dsfLimit = a}) . mapping _Nat

-- | The name of the log group.
dsfLogGroupName :: Lens' DescribeSubscriptionFilters Text
dsfLogGroupName = lens _dsfLogGroupName (\s a -> s {_dsfLogGroupName = a})

instance AWSPager DescribeSubscriptionFilters where
  page rq rs
    | stop (rs ^. dsfrrsNextToken) = Nothing
    | stop (rs ^. dsfrrsSubscriptionFilters) = Nothing
    | otherwise =
      Just $ rq & dsfNextToken .~ rs ^. dsfrrsNextToken

instance AWSRequest DescribeSubscriptionFilters where
  type
    Rs DescribeSubscriptionFilters =
      DescribeSubscriptionFiltersResponse
  request = postJSON cloudWatchLogs
  response =
    receiveJSON
      ( \s h x ->
          DescribeSubscriptionFiltersResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "subscriptionFilters" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeSubscriptionFilters

instance NFData DescribeSubscriptionFilters

instance ToHeaders DescribeSubscriptionFilters where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Logs_20140328.DescribeSubscriptionFilters" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeSubscriptionFilters where
  toJSON DescribeSubscriptionFilters' {..} =
    object
      ( catMaybes
          [ ("filterNamePrefix" .=) <$> _dsfFilterNamePrefix,
            ("nextToken" .=) <$> _dsfNextToken,
            ("limit" .=) <$> _dsfLimit,
            Just ("logGroupName" .= _dsfLogGroupName)
          ]
      )

instance ToPath DescribeSubscriptionFilters where
  toPath = const "/"

instance ToQuery DescribeSubscriptionFilters where
  toQuery = const mempty

-- | /See:/ 'describeSubscriptionFiltersResponse' smart constructor.
data DescribeSubscriptionFiltersResponse = DescribeSubscriptionFiltersResponse'
  { _dsfrrsNextToken ::
      !( Maybe
           Text
       ),
    _dsfrrsSubscriptionFilters ::
      !( Maybe
           [SubscriptionFilter]
       ),
    _dsfrrsResponseStatus ::
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

-- | Creates a value of 'DescribeSubscriptionFiltersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsfrrsNextToken' - Undocumented member.
--
-- * 'dsfrrsSubscriptionFilters' - The subscription filters.
--
-- * 'dsfrrsResponseStatus' - -- | The response status code.
describeSubscriptionFiltersResponse ::
  -- | 'dsfrrsResponseStatus'
  Int ->
  DescribeSubscriptionFiltersResponse
describeSubscriptionFiltersResponse pResponseStatus_ =
  DescribeSubscriptionFiltersResponse'
    { _dsfrrsNextToken =
        Nothing,
      _dsfrrsSubscriptionFilters = Nothing,
      _dsfrrsResponseStatus =
        pResponseStatus_
    }

-- | Undocumented member.
dsfrrsNextToken :: Lens' DescribeSubscriptionFiltersResponse (Maybe Text)
dsfrrsNextToken = lens _dsfrrsNextToken (\s a -> s {_dsfrrsNextToken = a})

-- | The subscription filters.
dsfrrsSubscriptionFilters :: Lens' DescribeSubscriptionFiltersResponse [SubscriptionFilter]
dsfrrsSubscriptionFilters = lens _dsfrrsSubscriptionFilters (\s a -> s {_dsfrrsSubscriptionFilters = a}) . _Default . _Coerce

-- | -- | The response status code.
dsfrrsResponseStatus :: Lens' DescribeSubscriptionFiltersResponse Int
dsfrrsResponseStatus = lens _dsfrrsResponseStatus (\s a -> s {_dsfrrsResponseStatus = a})

instance NFData DescribeSubscriptionFiltersResponse
