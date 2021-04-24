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
-- Module      : Network.AWS.ELBv2.DescribeTargetGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified target groups or all of your target groups. By default, all target groups are described. Alternatively, you can specify one of the following to filter the results: the ARN of the load balancer, the names of one or more target groups, or the ARNs of one or more target groups.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ELBv2.DescribeTargetGroups
  ( -- * Creating a Request
    describeTargetGroups,
    DescribeTargetGroups,

    -- * Request Lenses
    dtgLoadBalancerARN,
    dtgNames,
    dtgPageSize,
    dtgTargetGroupARNs,
    dtgMarker,

    -- * Destructuring the Response
    describeTargetGroupsResponse,
    DescribeTargetGroupsResponse,

    -- * Response Lenses
    dtgrrsTargetGroups,
    dtgrrsNextMarker,
    dtgrrsResponseStatus,
  )
where

import Network.AWS.ELBv2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeTargetGroups' smart constructor.
data DescribeTargetGroups = DescribeTargetGroups'
  { _dtgLoadBalancerARN ::
      !(Maybe Text),
    _dtgNames :: !(Maybe [Text]),
    _dtgPageSize :: !(Maybe Nat),
    _dtgTargetGroupARNs ::
      !(Maybe [Text]),
    _dtgMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeTargetGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgLoadBalancerARN' - The Amazon Resource Name (ARN) of the load balancer.
--
-- * 'dtgNames' - The names of the target groups.
--
-- * 'dtgPageSize' - The maximum number of results to return with this call.
--
-- * 'dtgTargetGroupARNs' - The Amazon Resource Names (ARN) of the target groups.
--
-- * 'dtgMarker' - The marker for the next set of results. (You received this marker from a previous call.)
describeTargetGroups ::
  DescribeTargetGroups
describeTargetGroups =
  DescribeTargetGroups'
    { _dtgLoadBalancerARN =
        Nothing,
      _dtgNames = Nothing,
      _dtgPageSize = Nothing,
      _dtgTargetGroupARNs = Nothing,
      _dtgMarker = Nothing
    }

-- | The Amazon Resource Name (ARN) of the load balancer.
dtgLoadBalancerARN :: Lens' DescribeTargetGroups (Maybe Text)
dtgLoadBalancerARN = lens _dtgLoadBalancerARN (\s a -> s {_dtgLoadBalancerARN = a})

-- | The names of the target groups.
dtgNames :: Lens' DescribeTargetGroups [Text]
dtgNames = lens _dtgNames (\s a -> s {_dtgNames = a}) . _Default . _Coerce

-- | The maximum number of results to return with this call.
dtgPageSize :: Lens' DescribeTargetGroups (Maybe Natural)
dtgPageSize = lens _dtgPageSize (\s a -> s {_dtgPageSize = a}) . mapping _Nat

-- | The Amazon Resource Names (ARN) of the target groups.
dtgTargetGroupARNs :: Lens' DescribeTargetGroups [Text]
dtgTargetGroupARNs = lens _dtgTargetGroupARNs (\s a -> s {_dtgTargetGroupARNs = a}) . _Default . _Coerce

-- | The marker for the next set of results. (You received this marker from a previous call.)
dtgMarker :: Lens' DescribeTargetGroups (Maybe Text)
dtgMarker = lens _dtgMarker (\s a -> s {_dtgMarker = a})

instance AWSPager DescribeTargetGroups where
  page rq rs
    | stop (rs ^. dtgrrsNextMarker) = Nothing
    | stop (rs ^. dtgrrsTargetGroups) = Nothing
    | otherwise =
      Just $ rq & dtgMarker .~ rs ^. dtgrrsNextMarker

instance AWSRequest DescribeTargetGroups where
  type
    Rs DescribeTargetGroups =
      DescribeTargetGroupsResponse
  request = postQuery eLBv2
  response =
    receiveXMLWrapper
      "DescribeTargetGroupsResult"
      ( \s h x ->
          DescribeTargetGroupsResponse'
            <$> ( x .@? "TargetGroups" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "NextMarker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTargetGroups

instance NFData DescribeTargetGroups

instance ToHeaders DescribeTargetGroups where
  toHeaders = const mempty

instance ToPath DescribeTargetGroups where
  toPath = const "/"

instance ToQuery DescribeTargetGroups where
  toQuery DescribeTargetGroups' {..} =
    mconcat
      [ "Action" =: ("DescribeTargetGroups" :: ByteString),
        "Version" =: ("2015-12-01" :: ByteString),
        "LoadBalancerArn" =: _dtgLoadBalancerARN,
        "Names"
          =: toQuery (toQueryList "member" <$> _dtgNames),
        "PageSize" =: _dtgPageSize,
        "TargetGroupArns"
          =: toQuery
            (toQueryList "member" <$> _dtgTargetGroupARNs),
        "Marker" =: _dtgMarker
      ]

-- | /See:/ 'describeTargetGroupsResponse' smart constructor.
data DescribeTargetGroupsResponse = DescribeTargetGroupsResponse'
  { _dtgrrsTargetGroups ::
      !( Maybe
           [TargetGroup]
       ),
    _dtgrrsNextMarker ::
      !(Maybe Text),
    _dtgrrsResponseStatus ::
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

-- | Creates a value of 'DescribeTargetGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgrrsTargetGroups' - Information about the target groups.
--
-- * 'dtgrrsNextMarker' - If there are additional results, this is the marker for the next set of results. Otherwise, this is null.
--
-- * 'dtgrrsResponseStatus' - -- | The response status code.
describeTargetGroupsResponse ::
  -- | 'dtgrrsResponseStatus'
  Int ->
  DescribeTargetGroupsResponse
describeTargetGroupsResponse pResponseStatus_ =
  DescribeTargetGroupsResponse'
    { _dtgrrsTargetGroups =
        Nothing,
      _dtgrrsNextMarker = Nothing,
      _dtgrrsResponseStatus = pResponseStatus_
    }

-- | Information about the target groups.
dtgrrsTargetGroups :: Lens' DescribeTargetGroupsResponse [TargetGroup]
dtgrrsTargetGroups = lens _dtgrrsTargetGroups (\s a -> s {_dtgrrsTargetGroups = a}) . _Default . _Coerce

-- | If there are additional results, this is the marker for the next set of results. Otherwise, this is null.
dtgrrsNextMarker :: Lens' DescribeTargetGroupsResponse (Maybe Text)
dtgrrsNextMarker = lens _dtgrrsNextMarker (\s a -> s {_dtgrrsNextMarker = a})

-- | -- | The response status code.
dtgrrsResponseStatus :: Lens' DescribeTargetGroupsResponse Int
dtgrrsResponseStatus = lens _dtgrrsResponseStatus (\s a -> s {_dtgrrsResponseStatus = a})

instance NFData DescribeTargetGroupsResponse
