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
-- Module      : Network.AWS.AutoScaling.DescribeLoadBalancers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the load balancers for the specified Auto Scaling group.
--
--
-- This operation describes only Classic Load Balancers. If you have Application Load Balancers, Network Load Balancers, or Gateway Load Balancers, use the 'DescribeLoadBalancerTargetGroups' API instead.
--
--
-- This operation returns paginated results.
module Network.AWS.AutoScaling.DescribeLoadBalancers
  ( -- * Creating a Request
    describeLoadBalancers,
    DescribeLoadBalancers,

    -- * Request Lenses
    dlbsNextToken,
    dlbsMaxRecords,
    dlbsAutoScalingGroupName,

    -- * Destructuring the Response
    describeLoadBalancersResponse,
    DescribeLoadBalancersResponse,

    -- * Response Lenses
    dlbrrsNextToken,
    dlbrrsLoadBalancers,
    dlbrrsResponseStatus,
  )
where

import Network.AWS.AutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeLoadBalancers' smart constructor.
data DescribeLoadBalancers = DescribeLoadBalancers'
  { _dlbsNextToken ::
      !(Maybe Text),
    _dlbsMaxRecords ::
      !(Maybe Int),
    _dlbsAutoScalingGroupName ::
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

-- | Creates a value of 'DescribeLoadBalancers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlbsNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dlbsMaxRecords' - The maximum number of items to return with this call. The default value is @100@ and the maximum value is @100@ .
--
-- * 'dlbsAutoScalingGroupName' - The name of the Auto Scaling group.
describeLoadBalancers ::
  -- | 'dlbsAutoScalingGroupName'
  Text ->
  DescribeLoadBalancers
describeLoadBalancers pAutoScalingGroupName_ =
  DescribeLoadBalancers'
    { _dlbsNextToken = Nothing,
      _dlbsMaxRecords = Nothing,
      _dlbsAutoScalingGroupName = pAutoScalingGroupName_
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
dlbsNextToken :: Lens' DescribeLoadBalancers (Maybe Text)
dlbsNextToken = lens _dlbsNextToken (\s a -> s {_dlbsNextToken = a})

-- | The maximum number of items to return with this call. The default value is @100@ and the maximum value is @100@ .
dlbsMaxRecords :: Lens' DescribeLoadBalancers (Maybe Int)
dlbsMaxRecords = lens _dlbsMaxRecords (\s a -> s {_dlbsMaxRecords = a})

-- | The name of the Auto Scaling group.
dlbsAutoScalingGroupName :: Lens' DescribeLoadBalancers Text
dlbsAutoScalingGroupName = lens _dlbsAutoScalingGroupName (\s a -> s {_dlbsAutoScalingGroupName = a})

instance AWSPager DescribeLoadBalancers where
  page rq rs
    | stop (rs ^. dlbrrsNextToken) = Nothing
    | stop (rs ^. dlbrrsLoadBalancers) = Nothing
    | otherwise =
      Just $ rq & dlbsNextToken .~ rs ^. dlbrrsNextToken

instance AWSRequest DescribeLoadBalancers where
  type
    Rs DescribeLoadBalancers =
      DescribeLoadBalancersResponse
  request = postQuery autoScaling
  response =
    receiveXMLWrapper
      "DescribeLoadBalancersResult"
      ( \s h x ->
          DescribeLoadBalancersResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "LoadBalancers" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeLoadBalancers

instance NFData DescribeLoadBalancers

instance ToHeaders DescribeLoadBalancers where
  toHeaders = const mempty

instance ToPath DescribeLoadBalancers where
  toPath = const "/"

instance ToQuery DescribeLoadBalancers where
  toQuery DescribeLoadBalancers' {..} =
    mconcat
      [ "Action" =: ("DescribeLoadBalancers" :: ByteString),
        "Version" =: ("2011-01-01" :: ByteString),
        "NextToken" =: _dlbsNextToken,
        "MaxRecords" =: _dlbsMaxRecords,
        "AutoScalingGroupName" =: _dlbsAutoScalingGroupName
      ]

-- | /See:/ 'describeLoadBalancersResponse' smart constructor.
data DescribeLoadBalancersResponse = DescribeLoadBalancersResponse'
  { _dlbrrsNextToken ::
      !( Maybe
           Text
       ),
    _dlbrrsLoadBalancers ::
      !( Maybe
           [LoadBalancerState]
       ),
    _dlbrrsResponseStatus ::
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

-- | Creates a value of 'DescribeLoadBalancersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlbrrsNextToken' - A string that indicates that the response contains more items than can be returned in a single response. To receive additional items, specify this string for the @NextToken@ value when requesting the next set of items. This value is null when there are no more items to return.
--
-- * 'dlbrrsLoadBalancers' - The load balancers.
--
-- * 'dlbrrsResponseStatus' - -- | The response status code.
describeLoadBalancersResponse ::
  -- | 'dlbrrsResponseStatus'
  Int ->
  DescribeLoadBalancersResponse
describeLoadBalancersResponse pResponseStatus_ =
  DescribeLoadBalancersResponse'
    { _dlbrrsNextToken =
        Nothing,
      _dlbrrsLoadBalancers = Nothing,
      _dlbrrsResponseStatus = pResponseStatus_
    }

-- | A string that indicates that the response contains more items than can be returned in a single response. To receive additional items, specify this string for the @NextToken@ value when requesting the next set of items. This value is null when there are no more items to return.
dlbrrsNextToken :: Lens' DescribeLoadBalancersResponse (Maybe Text)
dlbrrsNextToken = lens _dlbrrsNextToken (\s a -> s {_dlbrrsNextToken = a})

-- | The load balancers.
dlbrrsLoadBalancers :: Lens' DescribeLoadBalancersResponse [LoadBalancerState]
dlbrrsLoadBalancers = lens _dlbrrsLoadBalancers (\s a -> s {_dlbrrsLoadBalancers = a}) . _Default . _Coerce

-- | -- | The response status code.
dlbrrsResponseStatus :: Lens' DescribeLoadBalancersResponse Int
dlbrrsResponseStatus = lens _dlbrrsResponseStatus (\s a -> s {_dlbrrsResponseStatus = a})

instance NFData DescribeLoadBalancersResponse
