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
-- Module      : Network.AWS.EC2.DescribeVPCEndpointConnectionNotifications
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the connection notifications for VPC endpoints and VPC endpoint services.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeVPCEndpointConnectionNotifications
  ( -- * Creating a Request
    describeVPCEndpointConnectionNotifications,
    DescribeVPCEndpointConnectionNotifications,

    -- * Request Lenses
    dvpcecnNextToken,
    dvpcecnDryRun,
    dvpcecnConnectionNotificationId,
    dvpcecnMaxResults,
    dvpcecnFilters,

    -- * Destructuring the Response
    describeVPCEndpointConnectionNotificationsResponse,
    DescribeVPCEndpointConnectionNotificationsResponse,

    -- * Response Lenses
    dvpcecnrrsNextToken,
    dvpcecnrrsConnectionNotificationSet,
    dvpcecnrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeVPCEndpointConnectionNotifications' smart constructor.
data DescribeVPCEndpointConnectionNotifications = DescribeVPCEndpointConnectionNotifications'
  { _dvpcecnNextToken ::
      !( Maybe
           Text
       ),
    _dvpcecnDryRun ::
      !( Maybe
           Bool
       ),
    _dvpcecnConnectionNotificationId ::
      !( Maybe
           Text
       ),
    _dvpcecnMaxResults ::
      !( Maybe
           Int
       ),
    _dvpcecnFilters ::
      !( Maybe
           [Filter]
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

-- | Creates a value of 'DescribeVPCEndpointConnectionNotifications' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvpcecnNextToken' - The token to request the next page of results.
--
-- * 'dvpcecnDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dvpcecnConnectionNotificationId' - The ID of the notification.
--
-- * 'dvpcecnMaxResults' - The maximum number of results to return in a single call. To retrieve the remaining results, make another request with the returned @NextToken@ value.
--
-- * 'dvpcecnFilters' - One or more filters.     * @connection-notification-arn@ - The ARN of the SNS topic for the notification.     * @connection-notification-id@ - The ID of the notification.     * @connection-notification-state@ - The state of the notification (@Enabled@ | @Disabled@ ).     * @connection-notification-type@ - The type of notification (@Topic@ ).     * @service-id@ - The ID of the endpoint service.     * @vpc-endpoint-id@ - The ID of the VPC endpoint.
describeVPCEndpointConnectionNotifications ::
  DescribeVPCEndpointConnectionNotifications
describeVPCEndpointConnectionNotifications =
  DescribeVPCEndpointConnectionNotifications'
    { _dvpcecnNextToken =
        Nothing,
      _dvpcecnDryRun = Nothing,
      _dvpcecnConnectionNotificationId =
        Nothing,
      _dvpcecnMaxResults = Nothing,
      _dvpcecnFilters = Nothing
    }

-- | The token to request the next page of results.
dvpcecnNextToken :: Lens' DescribeVPCEndpointConnectionNotifications (Maybe Text)
dvpcecnNextToken = lens _dvpcecnNextToken (\s a -> s {_dvpcecnNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dvpcecnDryRun :: Lens' DescribeVPCEndpointConnectionNotifications (Maybe Bool)
dvpcecnDryRun = lens _dvpcecnDryRun (\s a -> s {_dvpcecnDryRun = a})

-- | The ID of the notification.
dvpcecnConnectionNotificationId :: Lens' DescribeVPCEndpointConnectionNotifications (Maybe Text)
dvpcecnConnectionNotificationId = lens _dvpcecnConnectionNotificationId (\s a -> s {_dvpcecnConnectionNotificationId = a})

-- | The maximum number of results to return in a single call. To retrieve the remaining results, make another request with the returned @NextToken@ value.
dvpcecnMaxResults :: Lens' DescribeVPCEndpointConnectionNotifications (Maybe Int)
dvpcecnMaxResults = lens _dvpcecnMaxResults (\s a -> s {_dvpcecnMaxResults = a})

-- | One or more filters.     * @connection-notification-arn@ - The ARN of the SNS topic for the notification.     * @connection-notification-id@ - The ID of the notification.     * @connection-notification-state@ - The state of the notification (@Enabled@ | @Disabled@ ).     * @connection-notification-type@ - The type of notification (@Topic@ ).     * @service-id@ - The ID of the endpoint service.     * @vpc-endpoint-id@ - The ID of the VPC endpoint.
dvpcecnFilters :: Lens' DescribeVPCEndpointConnectionNotifications [Filter]
dvpcecnFilters = lens _dvpcecnFilters (\s a -> s {_dvpcecnFilters = a}) . _Default . _Coerce

instance
  AWSPager
    DescribeVPCEndpointConnectionNotifications
  where
  page rq rs
    | stop (rs ^. dvpcecnrrsNextToken) = Nothing
    | stop (rs ^. dvpcecnrrsConnectionNotificationSet) =
      Nothing
    | otherwise =
      Just $
        rq
          & dvpcecnNextToken .~ rs ^. dvpcecnrrsNextToken

instance
  AWSRequest
    DescribeVPCEndpointConnectionNotifications
  where
  type
    Rs DescribeVPCEndpointConnectionNotifications =
      DescribeVPCEndpointConnectionNotificationsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeVPCEndpointConnectionNotificationsResponse'
            <$> (x .@? "nextToken")
              <*> ( x .@? "connectionNotificationSet" .!@ mempty
                      >>= may (parseXMLList "item")
                  )
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeVPCEndpointConnectionNotifications

instance
  NFData
    DescribeVPCEndpointConnectionNotifications

instance
  ToHeaders
    DescribeVPCEndpointConnectionNotifications
  where
  toHeaders = const mempty

instance
  ToPath
    DescribeVPCEndpointConnectionNotifications
  where
  toPath = const "/"

instance
  ToQuery
    DescribeVPCEndpointConnectionNotifications
  where
  toQuery
    DescribeVPCEndpointConnectionNotifications' {..} =
      mconcat
        [ "Action"
            =: ( "DescribeVpcEndpointConnectionNotifications" ::
                   ByteString
               ),
          "Version" =: ("2016-11-15" :: ByteString),
          "NextToken" =: _dvpcecnNextToken,
          "DryRun" =: _dvpcecnDryRun,
          "ConnectionNotificationId"
            =: _dvpcecnConnectionNotificationId,
          "MaxResults" =: _dvpcecnMaxResults,
          toQuery (toQueryList "Filter" <$> _dvpcecnFilters)
        ]

-- | /See:/ 'describeVPCEndpointConnectionNotificationsResponse' smart constructor.
data DescribeVPCEndpointConnectionNotificationsResponse = DescribeVPCEndpointConnectionNotificationsResponse'
  { _dvpcecnrrsNextToken ::
      !( Maybe
           Text
       ),
    _dvpcecnrrsConnectionNotificationSet ::
      !( Maybe
           [ConnectionNotification]
       ),
    _dvpcecnrrsResponseStatus ::
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

-- | Creates a value of 'DescribeVPCEndpointConnectionNotificationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvpcecnrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dvpcecnrrsConnectionNotificationSet' - One or more notifications.
--
-- * 'dvpcecnrrsResponseStatus' - -- | The response status code.
describeVPCEndpointConnectionNotificationsResponse ::
  -- | 'dvpcecnrrsResponseStatus'
  Int ->
  DescribeVPCEndpointConnectionNotificationsResponse
describeVPCEndpointConnectionNotificationsResponse
  pResponseStatus_ =
    DescribeVPCEndpointConnectionNotificationsResponse'
      { _dvpcecnrrsNextToken =
          Nothing,
        _dvpcecnrrsConnectionNotificationSet =
          Nothing,
        _dvpcecnrrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dvpcecnrrsNextToken :: Lens' DescribeVPCEndpointConnectionNotificationsResponse (Maybe Text)
dvpcecnrrsNextToken = lens _dvpcecnrrsNextToken (\s a -> s {_dvpcecnrrsNextToken = a})

-- | One or more notifications.
dvpcecnrrsConnectionNotificationSet :: Lens' DescribeVPCEndpointConnectionNotificationsResponse [ConnectionNotification]
dvpcecnrrsConnectionNotificationSet = lens _dvpcecnrrsConnectionNotificationSet (\s a -> s {_dvpcecnrrsConnectionNotificationSet = a}) . _Default . _Coerce

-- | -- | The response status code.
dvpcecnrrsResponseStatus :: Lens' DescribeVPCEndpointConnectionNotificationsResponse Int
dvpcecnrrsResponseStatus = lens _dvpcecnrrsResponseStatus (\s a -> s {_dvpcecnrrsResponseStatus = a})

instance
  NFData
    DescribeVPCEndpointConnectionNotificationsResponse
