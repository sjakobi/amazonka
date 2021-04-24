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
-- Module      : Network.AWS.DMS.DescribeEventSubscriptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the event subscriptions for a customer account. The description of a subscription includes @SubscriptionName@ , @SNSTopicARN@ , @CustomerID@ , @SourceType@ , @SourceID@ , @CreationTime@ , and @Status@ .
--
--
-- If you specify @SubscriptionName@ , this action lists the description for that subscription.
--
--
-- This operation returns paginated results.
module Network.AWS.DMS.DescribeEventSubscriptions
  ( -- * Creating a Request
    describeEventSubscriptions,
    DescribeEventSubscriptions,

    -- * Request Lenses
    desSubscriptionName,
    desFilters,
    desMarker,
    desMaxRecords,

    -- * Destructuring the Response
    describeEventSubscriptionsResponse,
    DescribeEventSubscriptionsResponse,

    -- * Response Lenses
    desrrsEventSubscriptionsList,
    desrrsMarker,
    desrrsResponseStatus,
  )
where

import Network.AWS.DMS.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'describeEventSubscriptions' smart constructor.
data DescribeEventSubscriptions = DescribeEventSubscriptions'
  { _desSubscriptionName ::
      !(Maybe Text),
    _desFilters ::
      !(Maybe [Filter]),
    _desMarker ::
      !(Maybe Text),
    _desMaxRecords ::
      !(Maybe Int)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeEventSubscriptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desSubscriptionName' - The name of the AWS DMS event subscription to be described.
--
-- * 'desFilters' - Filters applied to event subscriptions.
--
-- * 'desMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'desMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
describeEventSubscriptions ::
  DescribeEventSubscriptions
describeEventSubscriptions =
  DescribeEventSubscriptions'
    { _desSubscriptionName =
        Nothing,
      _desFilters = Nothing,
      _desMarker = Nothing,
      _desMaxRecords = Nothing
    }

-- | The name of the AWS DMS event subscription to be described.
desSubscriptionName :: Lens' DescribeEventSubscriptions (Maybe Text)
desSubscriptionName = lens _desSubscriptionName (\s a -> s {_desSubscriptionName = a})

-- | Filters applied to event subscriptions.
desFilters :: Lens' DescribeEventSubscriptions [Filter]
desFilters = lens _desFilters (\s a -> s {_desFilters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
desMarker :: Lens' DescribeEventSubscriptions (Maybe Text)
desMarker = lens _desMarker (\s a -> s {_desMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
desMaxRecords :: Lens' DescribeEventSubscriptions (Maybe Int)
desMaxRecords = lens _desMaxRecords (\s a -> s {_desMaxRecords = a})

instance AWSPager DescribeEventSubscriptions where
  page rq rs
    | stop (rs ^. desrrsMarker) = Nothing
    | stop (rs ^. desrrsEventSubscriptionsList) = Nothing
    | otherwise =
      Just $ rq & desMarker .~ rs ^. desrrsMarker

instance AWSRequest DescribeEventSubscriptions where
  type
    Rs DescribeEventSubscriptions =
      DescribeEventSubscriptionsResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          DescribeEventSubscriptionsResponse'
            <$> (x .?> "EventSubscriptionsList" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeEventSubscriptions

instance NFData DescribeEventSubscriptions

instance ToHeaders DescribeEventSubscriptions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDMSv20160101.DescribeEventSubscriptions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeEventSubscriptions where
  toJSON DescribeEventSubscriptions' {..} =
    object
      ( catMaybes
          [ ("SubscriptionName" .=) <$> _desSubscriptionName,
            ("Filters" .=) <$> _desFilters,
            ("Marker" .=) <$> _desMarker,
            ("MaxRecords" .=) <$> _desMaxRecords
          ]
      )

instance ToPath DescribeEventSubscriptions where
  toPath = const "/"

instance ToQuery DescribeEventSubscriptions where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'describeEventSubscriptionsResponse' smart constructor.
data DescribeEventSubscriptionsResponse = DescribeEventSubscriptionsResponse'
  { _desrrsEventSubscriptionsList ::
      !( Maybe
           [EventSubscription]
       ),
    _desrrsMarker ::
      !( Maybe
           Text
       ),
    _desrrsResponseStatus ::
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

-- | Creates a value of 'DescribeEventSubscriptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrrsEventSubscriptionsList' - A list of event subscriptions.
--
-- * 'desrrsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'desrrsResponseStatus' - -- | The response status code.
describeEventSubscriptionsResponse ::
  -- | 'desrrsResponseStatus'
  Int ->
  DescribeEventSubscriptionsResponse
describeEventSubscriptionsResponse pResponseStatus_ =
  DescribeEventSubscriptionsResponse'
    { _desrrsEventSubscriptionsList =
        Nothing,
      _desrrsMarker = Nothing,
      _desrrsResponseStatus =
        pResponseStatus_
    }

-- | A list of event subscriptions.
desrrsEventSubscriptionsList :: Lens' DescribeEventSubscriptionsResponse [EventSubscription]
desrrsEventSubscriptionsList = lens _desrrsEventSubscriptionsList (\s a -> s {_desrrsEventSubscriptionsList = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
desrrsMarker :: Lens' DescribeEventSubscriptionsResponse (Maybe Text)
desrrsMarker = lens _desrrsMarker (\s a -> s {_desrrsMarker = a})

-- | -- | The response status code.
desrrsResponseStatus :: Lens' DescribeEventSubscriptionsResponse Int
desrrsResponseStatus = lens _desrrsResponseStatus (\s a -> s {_desrrsResponseStatus = a})

instance NFData DescribeEventSubscriptionsResponse
