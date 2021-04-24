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
-- Module      : Network.AWS.AppStream.DescribeUsageReportSubscriptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list that describes one or more usage report subscriptions.
module Network.AWS.AppStream.DescribeUsageReportSubscriptions
  ( -- * Creating a Request
    describeUsageReportSubscriptions,
    DescribeUsageReportSubscriptions,

    -- * Request Lenses
    dursNextToken,
    dursMaxResults,

    -- * Destructuring the Response
    describeUsageReportSubscriptionsResponse,
    DescribeUsageReportSubscriptionsResponse,

    -- * Response Lenses
    dursrrsNextToken,
    dursrrsUsageReportSubscriptions,
    dursrrsResponseStatus,
  )
where

import Network.AWS.AppStream.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeUsageReportSubscriptions' smart constructor.
data DescribeUsageReportSubscriptions = DescribeUsageReportSubscriptions'
  { _dursNextToken ::
      !( Maybe
           Text
       ),
    _dursMaxResults ::
      !( Maybe
           Int
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

-- | Creates a value of 'DescribeUsageReportSubscriptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dursNextToken' - The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
--
-- * 'dursMaxResults' - The maximum size of each page of results.
describeUsageReportSubscriptions ::
  DescribeUsageReportSubscriptions
describeUsageReportSubscriptions =
  DescribeUsageReportSubscriptions'
    { _dursNextToken =
        Nothing,
      _dursMaxResults = Nothing
    }

-- | The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
dursNextToken :: Lens' DescribeUsageReportSubscriptions (Maybe Text)
dursNextToken = lens _dursNextToken (\s a -> s {_dursNextToken = a})

-- | The maximum size of each page of results.
dursMaxResults :: Lens' DescribeUsageReportSubscriptions (Maybe Int)
dursMaxResults = lens _dursMaxResults (\s a -> s {_dursMaxResults = a})

instance AWSRequest DescribeUsageReportSubscriptions where
  type
    Rs DescribeUsageReportSubscriptions =
      DescribeUsageReportSubscriptionsResponse
  request = postJSON appStream
  response =
    receiveJSON
      ( \s h x ->
          DescribeUsageReportSubscriptionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "UsageReportSubscriptions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeUsageReportSubscriptions

instance NFData DescribeUsageReportSubscriptions

instance ToHeaders DescribeUsageReportSubscriptions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "PhotonAdminProxyService.DescribeUsageReportSubscriptions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeUsageReportSubscriptions where
  toJSON DescribeUsageReportSubscriptions' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dursNextToken,
            ("MaxResults" .=) <$> _dursMaxResults
          ]
      )

instance ToPath DescribeUsageReportSubscriptions where
  toPath = const "/"

instance ToQuery DescribeUsageReportSubscriptions where
  toQuery = const mempty

-- | /See:/ 'describeUsageReportSubscriptionsResponse' smart constructor.
data DescribeUsageReportSubscriptionsResponse = DescribeUsageReportSubscriptionsResponse'
  { _dursrrsNextToken ::
      !( Maybe
           Text
       ),
    _dursrrsUsageReportSubscriptions ::
      !( Maybe
           [UsageReportSubscription]
       ),
    _dursrrsResponseStatus ::
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

-- | Creates a value of 'DescribeUsageReportSubscriptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dursrrsNextToken' - The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.
--
-- * 'dursrrsUsageReportSubscriptions' - Information about the usage report subscription.
--
-- * 'dursrrsResponseStatus' - -- | The response status code.
describeUsageReportSubscriptionsResponse ::
  -- | 'dursrrsResponseStatus'
  Int ->
  DescribeUsageReportSubscriptionsResponse
describeUsageReportSubscriptionsResponse
  pResponseStatus_ =
    DescribeUsageReportSubscriptionsResponse'
      { _dursrrsNextToken =
          Nothing,
        _dursrrsUsageReportSubscriptions =
          Nothing,
        _dursrrsResponseStatus =
          pResponseStatus_
      }

-- | The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.
dursrrsNextToken :: Lens' DescribeUsageReportSubscriptionsResponse (Maybe Text)
dursrrsNextToken = lens _dursrrsNextToken (\s a -> s {_dursrrsNextToken = a})

-- | Information about the usage report subscription.
dursrrsUsageReportSubscriptions :: Lens' DescribeUsageReportSubscriptionsResponse [UsageReportSubscription]
dursrrsUsageReportSubscriptions = lens _dursrrsUsageReportSubscriptions (\s a -> s {_dursrrsUsageReportSubscriptions = a}) . _Default . _Coerce

-- | -- | The response status code.
dursrrsResponseStatus :: Lens' DescribeUsageReportSubscriptionsResponse Int
dursrrsResponseStatus = lens _dursrrsResponseStatus (\s a -> s {_dursrrsResponseStatus = a})

instance
  NFData
    DescribeUsageReportSubscriptionsResponse
