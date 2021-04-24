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
-- Module      : Network.AWS.ELBv2.DescribeListeners
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified listeners or the listeners for the specified Application Load Balancer, Network Load Balancer, or Gateway Load Balancer. You must specify either a load balancer or one or more listeners.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ELBv2.DescribeListeners
  ( -- * Creating a Request
    describeListeners,
    DescribeListeners,

    -- * Request Lenses
    dlLoadBalancerARN,
    dlPageSize,
    dlListenerARNs,
    dlMarker,

    -- * Destructuring the Response
    describeListenersResponse,
    DescribeListenersResponse,

    -- * Response Lenses
    dlrrsNextMarker,
    dlrrsListeners,
    dlrrsResponseStatus,
  )
where

import Network.AWS.ELBv2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeListeners' smart constructor.
data DescribeListeners = DescribeListeners'
  { _dlLoadBalancerARN ::
      !(Maybe Text),
    _dlPageSize :: !(Maybe Nat),
    _dlListenerARNs :: !(Maybe [Text]),
    _dlMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeListeners' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlLoadBalancerARN' - The Amazon Resource Name (ARN) of the load balancer.
--
-- * 'dlPageSize' - The maximum number of results to return with this call.
--
-- * 'dlListenerARNs' - The Amazon Resource Names (ARN) of the listeners.
--
-- * 'dlMarker' - The marker for the next set of results. (You received this marker from a previous call.)
describeListeners ::
  DescribeListeners
describeListeners =
  DescribeListeners'
    { _dlLoadBalancerARN = Nothing,
      _dlPageSize = Nothing,
      _dlListenerARNs = Nothing,
      _dlMarker = Nothing
    }

-- | The Amazon Resource Name (ARN) of the load balancer.
dlLoadBalancerARN :: Lens' DescribeListeners (Maybe Text)
dlLoadBalancerARN = lens _dlLoadBalancerARN (\s a -> s {_dlLoadBalancerARN = a})

-- | The maximum number of results to return with this call.
dlPageSize :: Lens' DescribeListeners (Maybe Natural)
dlPageSize = lens _dlPageSize (\s a -> s {_dlPageSize = a}) . mapping _Nat

-- | The Amazon Resource Names (ARN) of the listeners.
dlListenerARNs :: Lens' DescribeListeners [Text]
dlListenerARNs = lens _dlListenerARNs (\s a -> s {_dlListenerARNs = a}) . _Default . _Coerce

-- | The marker for the next set of results. (You received this marker from a previous call.)
dlMarker :: Lens' DescribeListeners (Maybe Text)
dlMarker = lens _dlMarker (\s a -> s {_dlMarker = a})

instance AWSPager DescribeListeners where
  page rq rs
    | stop (rs ^. dlrrsNextMarker) = Nothing
    | stop (rs ^. dlrrsListeners) = Nothing
    | otherwise =
      Just $ rq & dlMarker .~ rs ^. dlrrsNextMarker

instance AWSRequest DescribeListeners where
  type Rs DescribeListeners = DescribeListenersResponse
  request = postQuery eLBv2
  response =
    receiveXMLWrapper
      "DescribeListenersResult"
      ( \s h x ->
          DescribeListenersResponse'
            <$> (x .@? "NextMarker")
            <*> ( x .@? "Listeners" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeListeners

instance NFData DescribeListeners

instance ToHeaders DescribeListeners where
  toHeaders = const mempty

instance ToPath DescribeListeners where
  toPath = const "/"

instance ToQuery DescribeListeners where
  toQuery DescribeListeners' {..} =
    mconcat
      [ "Action" =: ("DescribeListeners" :: ByteString),
        "Version" =: ("2015-12-01" :: ByteString),
        "LoadBalancerArn" =: _dlLoadBalancerARN,
        "PageSize" =: _dlPageSize,
        "ListenerArns"
          =: toQuery (toQueryList "member" <$> _dlListenerARNs),
        "Marker" =: _dlMarker
      ]

-- | /See:/ 'describeListenersResponse' smart constructor.
data DescribeListenersResponse = DescribeListenersResponse'
  { _dlrrsNextMarker ::
      !(Maybe Text),
    _dlrrsListeners ::
      !(Maybe [Listener]),
    _dlrrsResponseStatus ::
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

-- | Creates a value of 'DescribeListenersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlrrsNextMarker' - If there are additional results, this is the marker for the next set of results. Otherwise, this is null.
--
-- * 'dlrrsListeners' - Information about the listeners.
--
-- * 'dlrrsResponseStatus' - -- | The response status code.
describeListenersResponse ::
  -- | 'dlrrsResponseStatus'
  Int ->
  DescribeListenersResponse
describeListenersResponse pResponseStatus_ =
  DescribeListenersResponse'
    { _dlrrsNextMarker =
        Nothing,
      _dlrrsListeners = Nothing,
      _dlrrsResponseStatus = pResponseStatus_
    }

-- | If there are additional results, this is the marker for the next set of results. Otherwise, this is null.
dlrrsNextMarker :: Lens' DescribeListenersResponse (Maybe Text)
dlrrsNextMarker = lens _dlrrsNextMarker (\s a -> s {_dlrrsNextMarker = a})

-- | Information about the listeners.
dlrrsListeners :: Lens' DescribeListenersResponse [Listener]
dlrrsListeners = lens _dlrrsListeners (\s a -> s {_dlrrsListeners = a}) . _Default . _Coerce

-- | -- | The response status code.
dlrrsResponseStatus :: Lens' DescribeListenersResponse Int
dlrrsResponseStatus = lens _dlrrsResponseStatus (\s a -> s {_dlrrsResponseStatus = a})

instance NFData DescribeListenersResponse
