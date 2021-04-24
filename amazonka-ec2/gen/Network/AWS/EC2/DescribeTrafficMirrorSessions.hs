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
-- Module      : Network.AWS.EC2.DescribeTrafficMirrorSessions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more Traffic Mirror sessions. By default, all Traffic Mirror sessions are described. Alternatively, you can filter the results.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeTrafficMirrorSessions
  ( -- * Creating a Request
    describeTrafficMirrorSessions,
    DescribeTrafficMirrorSessions,

    -- * Request Lenses
    dtmsNextToken,
    dtmsTrafficMirrorSessionIds,
    dtmsDryRun,
    dtmsMaxResults,
    dtmsFilters,

    -- * Destructuring the Response
    describeTrafficMirrorSessionsResponse,
    DescribeTrafficMirrorSessionsResponse,

    -- * Response Lenses
    dtmsrrsNextToken,
    dtmsrrsTrafficMirrorSessions,
    dtmsrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeTrafficMirrorSessions' smart constructor.
data DescribeTrafficMirrorSessions = DescribeTrafficMirrorSessions'
  { _dtmsNextToken ::
      !( Maybe
           Text
       ),
    _dtmsTrafficMirrorSessionIds ::
      !( Maybe
           [Text]
       ),
    _dtmsDryRun ::
      !( Maybe
           Bool
       ),
    _dtmsMaxResults ::
      !( Maybe
           Nat
       ),
    _dtmsFilters ::
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

-- | Creates a value of 'DescribeTrafficMirrorSessions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtmsNextToken' - The token for the next page of results.
--
-- * 'dtmsTrafficMirrorSessionIds' - The ID of the Traffic Mirror session.
--
-- * 'dtmsDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dtmsMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dtmsFilters' - One or more filters. The possible values are:     * @description@ : The Traffic Mirror session description.     * @network-interface-id@ : The ID of the Traffic Mirror session network interface.     * @owner-id@ : The ID of the account that owns the Traffic Mirror session.     * @packet-length@ : The assigned number of packets to mirror.      * @session-number@ : The assigned session number.      * @traffic-mirror-filter-id@ : The ID of the Traffic Mirror filter.     * @traffic-mirror-session-id@ : The ID of the Traffic Mirror session.     * @traffic-mirror-target-id@ : The ID of the Traffic Mirror target.     * @virtual-network-id@ : The virtual network ID of the Traffic Mirror session.
describeTrafficMirrorSessions ::
  DescribeTrafficMirrorSessions
describeTrafficMirrorSessions =
  DescribeTrafficMirrorSessions'
    { _dtmsNextToken =
        Nothing,
      _dtmsTrafficMirrorSessionIds = Nothing,
      _dtmsDryRun = Nothing,
      _dtmsMaxResults = Nothing,
      _dtmsFilters = Nothing
    }

-- | The token for the next page of results.
dtmsNextToken :: Lens' DescribeTrafficMirrorSessions (Maybe Text)
dtmsNextToken = lens _dtmsNextToken (\s a -> s {_dtmsNextToken = a})

-- | The ID of the Traffic Mirror session.
dtmsTrafficMirrorSessionIds :: Lens' DescribeTrafficMirrorSessions [Text]
dtmsTrafficMirrorSessionIds = lens _dtmsTrafficMirrorSessionIds (\s a -> s {_dtmsTrafficMirrorSessionIds = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dtmsDryRun :: Lens' DescribeTrafficMirrorSessions (Maybe Bool)
dtmsDryRun = lens _dtmsDryRun (\s a -> s {_dtmsDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dtmsMaxResults :: Lens' DescribeTrafficMirrorSessions (Maybe Natural)
dtmsMaxResults = lens _dtmsMaxResults (\s a -> s {_dtmsMaxResults = a}) . mapping _Nat

-- | One or more filters. The possible values are:     * @description@ : The Traffic Mirror session description.     * @network-interface-id@ : The ID of the Traffic Mirror session network interface.     * @owner-id@ : The ID of the account that owns the Traffic Mirror session.     * @packet-length@ : The assigned number of packets to mirror.      * @session-number@ : The assigned session number.      * @traffic-mirror-filter-id@ : The ID of the Traffic Mirror filter.     * @traffic-mirror-session-id@ : The ID of the Traffic Mirror session.     * @traffic-mirror-target-id@ : The ID of the Traffic Mirror target.     * @virtual-network-id@ : The virtual network ID of the Traffic Mirror session.
dtmsFilters :: Lens' DescribeTrafficMirrorSessions [Filter]
dtmsFilters = lens _dtmsFilters (\s a -> s {_dtmsFilters = a}) . _Default . _Coerce

instance AWSPager DescribeTrafficMirrorSessions where
  page rq rs
    | stop (rs ^. dtmsrrsNextToken) = Nothing
    | stop (rs ^. dtmsrrsTrafficMirrorSessions) = Nothing
    | otherwise =
      Just $ rq & dtmsNextToken .~ rs ^. dtmsrrsNextToken

instance AWSRequest DescribeTrafficMirrorSessions where
  type
    Rs DescribeTrafficMirrorSessions =
      DescribeTrafficMirrorSessionsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeTrafficMirrorSessionsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "trafficMirrorSessionSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTrafficMirrorSessions

instance NFData DescribeTrafficMirrorSessions

instance ToHeaders DescribeTrafficMirrorSessions where
  toHeaders = const mempty

instance ToPath DescribeTrafficMirrorSessions where
  toPath = const "/"

instance ToQuery DescribeTrafficMirrorSessions where
  toQuery DescribeTrafficMirrorSessions' {..} =
    mconcat
      [ "Action"
          =: ("DescribeTrafficMirrorSessions" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dtmsNextToken,
        toQuery
          ( toQueryList "TrafficMirrorSessionId"
              <$> _dtmsTrafficMirrorSessionIds
          ),
        "DryRun" =: _dtmsDryRun,
        "MaxResults" =: _dtmsMaxResults,
        toQuery (toQueryList "Filter" <$> _dtmsFilters)
      ]

-- | /See:/ 'describeTrafficMirrorSessionsResponse' smart constructor.
data DescribeTrafficMirrorSessionsResponse = DescribeTrafficMirrorSessionsResponse'
  { _dtmsrrsNextToken ::
      !( Maybe
           Text
       ),
    _dtmsrrsTrafficMirrorSessions ::
      !( Maybe
           [TrafficMirrorSession]
       ),
    _dtmsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeTrafficMirrorSessionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtmsrrsNextToken' - The token to use to retrieve the next page of results. The value is @null@ when there are no more results to return.
--
-- * 'dtmsrrsTrafficMirrorSessions' - Describes one or more Traffic Mirror sessions. By default, all Traffic Mirror sessions are described. Alternatively, you can filter the results.
--
-- * 'dtmsrrsResponseStatus' - -- | The response status code.
describeTrafficMirrorSessionsResponse ::
  -- | 'dtmsrrsResponseStatus'
  Int ->
  DescribeTrafficMirrorSessionsResponse
describeTrafficMirrorSessionsResponse
  pResponseStatus_ =
    DescribeTrafficMirrorSessionsResponse'
      { _dtmsrrsNextToken =
          Nothing,
        _dtmsrrsTrafficMirrorSessions =
          Nothing,
        _dtmsrrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. The value is @null@ when there are no more results to return.
dtmsrrsNextToken :: Lens' DescribeTrafficMirrorSessionsResponse (Maybe Text)
dtmsrrsNextToken = lens _dtmsrrsNextToken (\s a -> s {_dtmsrrsNextToken = a})

-- | Describes one or more Traffic Mirror sessions. By default, all Traffic Mirror sessions are described. Alternatively, you can filter the results.
dtmsrrsTrafficMirrorSessions :: Lens' DescribeTrafficMirrorSessionsResponse [TrafficMirrorSession]
dtmsrrsTrafficMirrorSessions = lens _dtmsrrsTrafficMirrorSessions (\s a -> s {_dtmsrrsTrafficMirrorSessions = a}) . _Default . _Coerce

-- | -- | The response status code.
dtmsrrsResponseStatus :: Lens' DescribeTrafficMirrorSessionsResponse Int
dtmsrrsResponseStatus = lens _dtmsrrsResponseStatus (\s a -> s {_dtmsrrsResponseStatus = a})

instance NFData DescribeTrafficMirrorSessionsResponse
