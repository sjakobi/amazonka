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
-- Module      : Network.AWS.AutoScaling.DescribeLoadBalancerTargetGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the target groups for the specified Auto Scaling group.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AutoScaling.DescribeLoadBalancerTargetGroups
  ( -- * Creating a Request
    describeLoadBalancerTargetGroups,
    DescribeLoadBalancerTargetGroups,

    -- * Request Lenses
    dlbtgsNextToken,
    dlbtgsMaxRecords,
    dlbtgsAutoScalingGroupName,

    -- * Destructuring the Response
    describeLoadBalancerTargetGroupsResponse,
    DescribeLoadBalancerTargetGroupsResponse,

    -- * Response Lenses
    dlbtgrlrsLoadBalancerTargetGroups,
    dlbtgrlrsNextToken,
    dlbtgrlrsResponseStatus,
  )
where

import Network.AWS.AutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeLoadBalancerTargetGroups' smart constructor.
data DescribeLoadBalancerTargetGroups = DescribeLoadBalancerTargetGroups'
  { _dlbtgsNextToken ::
      !( Maybe
           Text
       ),
    _dlbtgsMaxRecords ::
      !( Maybe
           Int
       ),
    _dlbtgsAutoScalingGroupName ::
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

-- | Creates a value of 'DescribeLoadBalancerTargetGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlbtgsNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dlbtgsMaxRecords' - The maximum number of items to return with this call. The default value is @100@ and the maximum value is @100@ .
--
-- * 'dlbtgsAutoScalingGroupName' - The name of the Auto Scaling group.
describeLoadBalancerTargetGroups ::
  -- | 'dlbtgsAutoScalingGroupName'
  Text ->
  DescribeLoadBalancerTargetGroups
describeLoadBalancerTargetGroups
  pAutoScalingGroupName_ =
    DescribeLoadBalancerTargetGroups'
      { _dlbtgsNextToken =
          Nothing,
        _dlbtgsMaxRecords = Nothing,
        _dlbtgsAutoScalingGroupName =
          pAutoScalingGroupName_
      }

-- | The token for the next set of items to return. (You received this token from a previous call.)
dlbtgsNextToken :: Lens' DescribeLoadBalancerTargetGroups (Maybe Text)
dlbtgsNextToken = lens _dlbtgsNextToken (\s a -> s {_dlbtgsNextToken = a})

-- | The maximum number of items to return with this call. The default value is @100@ and the maximum value is @100@ .
dlbtgsMaxRecords :: Lens' DescribeLoadBalancerTargetGroups (Maybe Int)
dlbtgsMaxRecords = lens _dlbtgsMaxRecords (\s a -> s {_dlbtgsMaxRecords = a})

-- | The name of the Auto Scaling group.
dlbtgsAutoScalingGroupName :: Lens' DescribeLoadBalancerTargetGroups Text
dlbtgsAutoScalingGroupName = lens _dlbtgsAutoScalingGroupName (\s a -> s {_dlbtgsAutoScalingGroupName = a})

instance AWSPager DescribeLoadBalancerTargetGroups where
  page rq rs
    | stop (rs ^. dlbtgrlrsNextToken) = Nothing
    | stop (rs ^. dlbtgrlrsLoadBalancerTargetGroups) =
      Nothing
    | otherwise =
      Just $
        rq
          & dlbtgsNextToken .~ rs ^. dlbtgrlrsNextToken

instance AWSRequest DescribeLoadBalancerTargetGroups where
  type
    Rs DescribeLoadBalancerTargetGroups =
      DescribeLoadBalancerTargetGroupsResponse
  request = postQuery autoScaling
  response =
    receiveXMLWrapper
      "DescribeLoadBalancerTargetGroupsResult"
      ( \s h x ->
          DescribeLoadBalancerTargetGroupsResponse'
            <$> ( x .@? "LoadBalancerTargetGroups" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeLoadBalancerTargetGroups

instance NFData DescribeLoadBalancerTargetGroups

instance ToHeaders DescribeLoadBalancerTargetGroups where
  toHeaders = const mempty

instance ToPath DescribeLoadBalancerTargetGroups where
  toPath = const "/"

instance ToQuery DescribeLoadBalancerTargetGroups where
  toQuery DescribeLoadBalancerTargetGroups' {..} =
    mconcat
      [ "Action"
          =: ("DescribeLoadBalancerTargetGroups" :: ByteString),
        "Version" =: ("2011-01-01" :: ByteString),
        "NextToken" =: _dlbtgsNextToken,
        "MaxRecords" =: _dlbtgsMaxRecords,
        "AutoScalingGroupName"
          =: _dlbtgsAutoScalingGroupName
      ]

-- | /See:/ 'describeLoadBalancerTargetGroupsResponse' smart constructor.
data DescribeLoadBalancerTargetGroupsResponse = DescribeLoadBalancerTargetGroupsResponse'
  { _dlbtgrlrsLoadBalancerTargetGroups ::
      !( Maybe
           [LoadBalancerTargetGroupState]
       ),
    _dlbtgrlrsNextToken ::
      !( Maybe
           Text
       ),
    _dlbtgrlrsResponseStatus ::
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

-- | Creates a value of 'DescribeLoadBalancerTargetGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlbtgrlrsLoadBalancerTargetGroups' - Information about the target groups.
--
-- * 'dlbtgrlrsNextToken' - A string that indicates that the response contains more items than can be returned in a single response. To receive additional items, specify this string for the @NextToken@ value when requesting the next set of items. This value is null when there are no more items to return.
--
-- * 'dlbtgrlrsResponseStatus' - -- | The response status code.
describeLoadBalancerTargetGroupsResponse ::
  -- | 'dlbtgrlrsResponseStatus'
  Int ->
  DescribeLoadBalancerTargetGroupsResponse
describeLoadBalancerTargetGroupsResponse
  pResponseStatus_ =
    DescribeLoadBalancerTargetGroupsResponse'
      { _dlbtgrlrsLoadBalancerTargetGroups =
          Nothing,
        _dlbtgrlrsNextToken = Nothing,
        _dlbtgrlrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the target groups.
dlbtgrlrsLoadBalancerTargetGroups :: Lens' DescribeLoadBalancerTargetGroupsResponse [LoadBalancerTargetGroupState]
dlbtgrlrsLoadBalancerTargetGroups = lens _dlbtgrlrsLoadBalancerTargetGroups (\s a -> s {_dlbtgrlrsLoadBalancerTargetGroups = a}) . _Default . _Coerce

-- | A string that indicates that the response contains more items than can be returned in a single response. To receive additional items, specify this string for the @NextToken@ value when requesting the next set of items. This value is null when there are no more items to return.
dlbtgrlrsNextToken :: Lens' DescribeLoadBalancerTargetGroupsResponse (Maybe Text)
dlbtgrlrsNextToken = lens _dlbtgrlrsNextToken (\s a -> s {_dlbtgrlrsNextToken = a})

-- | -- | The response status code.
dlbtgrlrsResponseStatus :: Lens' DescribeLoadBalancerTargetGroupsResponse Int
dlbtgrlrsResponseStatus = lens _dlbtgrlrsResponseStatus (\s a -> s {_dlbtgrlrsResponseStatus = a})

instance
  NFData
    DescribeLoadBalancerTargetGroupsResponse
