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
-- Module      : Network.AWS.Redshift.DescribeEventSubscriptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists descriptions of all the Amazon Redshift event notification subscriptions for a customer account. If you specify a subscription name, lists the description for that subscription.
--
--
-- If you specify both tag keys and tag values in the same request, Amazon Redshift returns all event notification subscriptions that match any combination of the specified keys and values. For example, if you have @owner@ and @environment@ for tag keys, and @admin@ and @test@ for tag values, all subscriptions that have any combination of those values are returned.
--
-- If both tag keys and values are omitted from the request, subscriptions are returned regardless of whether they have tag keys or values associated with them.
--
--
-- This operation returns paginated results.
module Network.AWS.Redshift.DescribeEventSubscriptions
  ( -- * Creating a Request
    describeEventSubscriptions,
    DescribeEventSubscriptions,

    -- * Request Lenses
    desSubscriptionName,
    desTagKeys,
    desTagValues,
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

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
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
    _desTagKeys ::
      !(Maybe [Text]),
    _desTagValues ::
      !(Maybe [Text]),
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
-- * 'desSubscriptionName' - The name of the Amazon Redshift event notification subscription to be described.
--
-- * 'desTagKeys' - A tag key or keys for which you want to return all matching event notification subscriptions that are associated with the specified key or keys. For example, suppose that you have subscriptions that are tagged with keys called @owner@ and @environment@ . If you specify both of these tag keys in the request, Amazon Redshift returns a response with the subscriptions that have either or both of these tag keys associated with them.
--
-- * 'desTagValues' - A tag value or values for which you want to return all matching event notification subscriptions that are associated with the specified tag value or values. For example, suppose that you have subscriptions that are tagged with values called @admin@ and @test@ . If you specify both of these tag values in the request, Amazon Redshift returns a response with the subscriptions that have either or both of these tag values associated with them.
--
-- * 'desMarker' - An optional parameter that specifies the starting point to return a set of response records. When the results of a DescribeEventSubscriptions request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.
--
-- * 'desMaxRecords' - The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified @MaxRecords@ value, a value is returned in a @marker@ field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: @100@  Constraints: minimum 20, maximum 100.
describeEventSubscriptions ::
  DescribeEventSubscriptions
describeEventSubscriptions =
  DescribeEventSubscriptions'
    { _desSubscriptionName =
        Nothing,
      _desTagKeys = Nothing,
      _desTagValues = Nothing,
      _desMarker = Nothing,
      _desMaxRecords = Nothing
    }

-- | The name of the Amazon Redshift event notification subscription to be described.
desSubscriptionName :: Lens' DescribeEventSubscriptions (Maybe Text)
desSubscriptionName = lens _desSubscriptionName (\s a -> s {_desSubscriptionName = a})

-- | A tag key or keys for which you want to return all matching event notification subscriptions that are associated with the specified key or keys. For example, suppose that you have subscriptions that are tagged with keys called @owner@ and @environment@ . If you specify both of these tag keys in the request, Amazon Redshift returns a response with the subscriptions that have either or both of these tag keys associated with them.
desTagKeys :: Lens' DescribeEventSubscriptions [Text]
desTagKeys = lens _desTagKeys (\s a -> s {_desTagKeys = a}) . _Default . _Coerce

-- | A tag value or values for which you want to return all matching event notification subscriptions that are associated with the specified tag value or values. For example, suppose that you have subscriptions that are tagged with values called @admin@ and @test@ . If you specify both of these tag values in the request, Amazon Redshift returns a response with the subscriptions that have either or both of these tag values associated with them.
desTagValues :: Lens' DescribeEventSubscriptions [Text]
desTagValues = lens _desTagValues (\s a -> s {_desTagValues = a}) . _Default . _Coerce

-- | An optional parameter that specifies the starting point to return a set of response records. When the results of a DescribeEventSubscriptions request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.
desMarker :: Lens' DescribeEventSubscriptions (Maybe Text)
desMarker = lens _desMarker (\s a -> s {_desMarker = a})

-- | The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified @MaxRecords@ value, a value is returned in a @marker@ field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: @100@  Constraints: minimum 20, maximum 100.
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
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "DescribeEventSubscriptionsResult"
      ( \s h x ->
          DescribeEventSubscriptionsResponse'
            <$> ( x .@? "EventSubscriptionsList" .!@ mempty
                    >>= may (parseXMLList "EventSubscription")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeEventSubscriptions

instance NFData DescribeEventSubscriptions

instance ToHeaders DescribeEventSubscriptions where
  toHeaders = const mempty

instance ToPath DescribeEventSubscriptions where
  toPath = const "/"

instance ToQuery DescribeEventSubscriptions where
  toQuery DescribeEventSubscriptions' {..} =
    mconcat
      [ "Action"
          =: ("DescribeEventSubscriptions" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "SubscriptionName" =: _desSubscriptionName,
        "TagKeys"
          =: toQuery (toQueryList "TagKey" <$> _desTagKeys),
        "TagValues"
          =: toQuery (toQueryList "TagValue" <$> _desTagValues),
        "Marker" =: _desMarker,
        "MaxRecords" =: _desMaxRecords
      ]

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
-- * 'desrrsMarker' - A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the @Marker@ parameter and retrying the command. If the @Marker@ field is empty, all response records have been retrieved for the request.
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

-- | A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the @Marker@ parameter and retrying the command. If the @Marker@ field is empty, all response records have been retrieved for the request.
desrrsMarker :: Lens' DescribeEventSubscriptionsResponse (Maybe Text)
desrrsMarker = lens _desrrsMarker (\s a -> s {_desrrsMarker = a})

-- | -- | The response status code.
desrrsResponseStatus :: Lens' DescribeEventSubscriptionsResponse Int
desrrsResponseStatus = lens _desrrsResponseStatus (\s a -> s {_desrrsResponseStatus = a})

instance NFData DescribeEventSubscriptionsResponse
