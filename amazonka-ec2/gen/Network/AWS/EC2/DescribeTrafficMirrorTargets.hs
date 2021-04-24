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
-- Module      : Network.AWS.EC2.DescribeTrafficMirrorTargets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Information about one or more Traffic Mirror targets.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeTrafficMirrorTargets
  ( -- * Creating a Request
    describeTrafficMirrorTargets,
    DescribeTrafficMirrorTargets,

    -- * Request Lenses
    dtmtsNextToken,
    dtmtsDryRun,
    dtmtsMaxResults,
    dtmtsFilters,
    dtmtsTrafficMirrorTargetIds,

    -- * Destructuring the Response
    describeTrafficMirrorTargetsResponse,
    DescribeTrafficMirrorTargetsResponse,

    -- * Response Lenses
    dtmtrtrsNextToken,
    dtmtrtrsTrafficMirrorTargets,
    dtmtrtrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeTrafficMirrorTargets' smart constructor.
data DescribeTrafficMirrorTargets = DescribeTrafficMirrorTargets'
  { _dtmtsNextToken ::
      !(Maybe Text),
    _dtmtsDryRun ::
      !(Maybe Bool),
    _dtmtsMaxResults ::
      !(Maybe Nat),
    _dtmtsFilters ::
      !( Maybe
           [Filter]
       ),
    _dtmtsTrafficMirrorTargetIds ::
      !( Maybe
           [Text]
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

-- | Creates a value of 'DescribeTrafficMirrorTargets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtmtsNextToken' - The token for the next page of results.
--
-- * 'dtmtsDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dtmtsMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dtmtsFilters' - One or more filters. The possible values are:     * @description@ : The Traffic Mirror target description.     * @network-interface-id@ : The ID of the Traffic Mirror session network interface.     * @network-load-balancer-arn@ : The Amazon Resource Name (ARN) of the Network Load Balancer that is associated with the session.     * @owner-id@ : The ID of the account that owns the Traffic Mirror session.     * @traffic-mirror-target-id@ : The ID of the Traffic Mirror target.
--
-- * 'dtmtsTrafficMirrorTargetIds' - The ID of the Traffic Mirror targets.
describeTrafficMirrorTargets ::
  DescribeTrafficMirrorTargets
describeTrafficMirrorTargets =
  DescribeTrafficMirrorTargets'
    { _dtmtsNextToken =
        Nothing,
      _dtmtsDryRun = Nothing,
      _dtmtsMaxResults = Nothing,
      _dtmtsFilters = Nothing,
      _dtmtsTrafficMirrorTargetIds = Nothing
    }

-- | The token for the next page of results.
dtmtsNextToken :: Lens' DescribeTrafficMirrorTargets (Maybe Text)
dtmtsNextToken = lens _dtmtsNextToken (\s a -> s {_dtmtsNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dtmtsDryRun :: Lens' DescribeTrafficMirrorTargets (Maybe Bool)
dtmtsDryRun = lens _dtmtsDryRun (\s a -> s {_dtmtsDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dtmtsMaxResults :: Lens' DescribeTrafficMirrorTargets (Maybe Natural)
dtmtsMaxResults = lens _dtmtsMaxResults (\s a -> s {_dtmtsMaxResults = a}) . mapping _Nat

-- | One or more filters. The possible values are:     * @description@ : The Traffic Mirror target description.     * @network-interface-id@ : The ID of the Traffic Mirror session network interface.     * @network-load-balancer-arn@ : The Amazon Resource Name (ARN) of the Network Load Balancer that is associated with the session.     * @owner-id@ : The ID of the account that owns the Traffic Mirror session.     * @traffic-mirror-target-id@ : The ID of the Traffic Mirror target.
dtmtsFilters :: Lens' DescribeTrafficMirrorTargets [Filter]
dtmtsFilters = lens _dtmtsFilters (\s a -> s {_dtmtsFilters = a}) . _Default . _Coerce

-- | The ID of the Traffic Mirror targets.
dtmtsTrafficMirrorTargetIds :: Lens' DescribeTrafficMirrorTargets [Text]
dtmtsTrafficMirrorTargetIds = lens _dtmtsTrafficMirrorTargetIds (\s a -> s {_dtmtsTrafficMirrorTargetIds = a}) . _Default . _Coerce

instance AWSPager DescribeTrafficMirrorTargets where
  page rq rs
    | stop (rs ^. dtmtrtrsNextToken) = Nothing
    | stop (rs ^. dtmtrtrsTrafficMirrorTargets) = Nothing
    | otherwise =
      Just $ rq & dtmtsNextToken .~ rs ^. dtmtrtrsNextToken

instance AWSRequest DescribeTrafficMirrorTargets where
  type
    Rs DescribeTrafficMirrorTargets =
      DescribeTrafficMirrorTargetsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeTrafficMirrorTargetsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "trafficMirrorTargetSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTrafficMirrorTargets

instance NFData DescribeTrafficMirrorTargets

instance ToHeaders DescribeTrafficMirrorTargets where
  toHeaders = const mempty

instance ToPath DescribeTrafficMirrorTargets where
  toPath = const "/"

instance ToQuery DescribeTrafficMirrorTargets where
  toQuery DescribeTrafficMirrorTargets' {..} =
    mconcat
      [ "Action"
          =: ("DescribeTrafficMirrorTargets" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dtmtsNextToken,
        "DryRun" =: _dtmtsDryRun,
        "MaxResults" =: _dtmtsMaxResults,
        toQuery (toQueryList "Filter" <$> _dtmtsFilters),
        toQuery
          ( toQueryList "TrafficMirrorTargetId"
              <$> _dtmtsTrafficMirrorTargetIds
          )
      ]

-- | /See:/ 'describeTrafficMirrorTargetsResponse' smart constructor.
data DescribeTrafficMirrorTargetsResponse = DescribeTrafficMirrorTargetsResponse'
  { _dtmtrtrsNextToken ::
      !( Maybe
           Text
       ),
    _dtmtrtrsTrafficMirrorTargets ::
      !( Maybe
           [TrafficMirrorTarget]
       ),
    _dtmtrtrsResponseStatus ::
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

-- | Creates a value of 'DescribeTrafficMirrorTargetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtmtrtrsNextToken' - The token to use to retrieve the next page of results. The value is @null@ when there are no more results to return.
--
-- * 'dtmtrtrsTrafficMirrorTargets' - Information about one or more Traffic Mirror targets.
--
-- * 'dtmtrtrsResponseStatus' - -- | The response status code.
describeTrafficMirrorTargetsResponse ::
  -- | 'dtmtrtrsResponseStatus'
  Int ->
  DescribeTrafficMirrorTargetsResponse
describeTrafficMirrorTargetsResponse pResponseStatus_ =
  DescribeTrafficMirrorTargetsResponse'
    { _dtmtrtrsNextToken =
        Nothing,
      _dtmtrtrsTrafficMirrorTargets =
        Nothing,
      _dtmtrtrsResponseStatus =
        pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. The value is @null@ when there are no more results to return.
dtmtrtrsNextToken :: Lens' DescribeTrafficMirrorTargetsResponse (Maybe Text)
dtmtrtrsNextToken = lens _dtmtrtrsNextToken (\s a -> s {_dtmtrtrsNextToken = a})

-- | Information about one or more Traffic Mirror targets.
dtmtrtrsTrafficMirrorTargets :: Lens' DescribeTrafficMirrorTargetsResponse [TrafficMirrorTarget]
dtmtrtrsTrafficMirrorTargets = lens _dtmtrtrsTrafficMirrorTargets (\s a -> s {_dtmtrtrsTrafficMirrorTargets = a}) . _Default . _Coerce

-- | -- | The response status code.
dtmtrtrsResponseStatus :: Lens' DescribeTrafficMirrorTargetsResponse Int
dtmtrtrsResponseStatus = lens _dtmtrtrsResponseStatus (\s a -> s {_dtmtrtrsResponseStatus = a})

instance NFData DescribeTrafficMirrorTargetsResponse
