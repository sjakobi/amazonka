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
-- Module      : Network.AWS.ELBv2.DescribeLoadBalancers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified load balancers or all of your load balancers.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ELBv2.DescribeLoadBalancers
  ( -- * Creating a Request
    describeLoadBalancers,
    DescribeLoadBalancers,

    -- * Request Lenses
    dlbNames,
    dlbPageSize,
    dlbLoadBalancerARNs,
    dlbMarker,

    -- * Destructuring the Response
    describeLoadBalancersResponse,
    DescribeLoadBalancersResponse,

    -- * Response Lenses
    desrsNextMarker,
    desrsLoadBalancers,
    desrsResponseStatus,
  )
where

import Network.AWS.ELBv2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeLoadBalancers' smart constructor.
data DescribeLoadBalancers = DescribeLoadBalancers'
  { _dlbNames ::
      !(Maybe [Text]),
    _dlbPageSize ::
      !(Maybe Nat),
    _dlbLoadBalancerARNs ::
      !(Maybe [Text]),
    _dlbMarker :: !(Maybe Text)
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
-- * 'dlbNames' - The names of the load balancers.
--
-- * 'dlbPageSize' - The maximum number of results to return with this call.
--
-- * 'dlbLoadBalancerARNs' - The Amazon Resource Names (ARN) of the load balancers. You can specify up to 20 load balancers in a single call.
--
-- * 'dlbMarker' - The marker for the next set of results. (You received this marker from a previous call.)
describeLoadBalancers ::
  DescribeLoadBalancers
describeLoadBalancers =
  DescribeLoadBalancers'
    { _dlbNames = Nothing,
      _dlbPageSize = Nothing,
      _dlbLoadBalancerARNs = Nothing,
      _dlbMarker = Nothing
    }

-- | The names of the load balancers.
dlbNames :: Lens' DescribeLoadBalancers [Text]
dlbNames = lens _dlbNames (\s a -> s {_dlbNames = a}) . _Default . _Coerce

-- | The maximum number of results to return with this call.
dlbPageSize :: Lens' DescribeLoadBalancers (Maybe Natural)
dlbPageSize = lens _dlbPageSize (\s a -> s {_dlbPageSize = a}) . mapping _Nat

-- | The Amazon Resource Names (ARN) of the load balancers. You can specify up to 20 load balancers in a single call.
dlbLoadBalancerARNs :: Lens' DescribeLoadBalancers [Text]
dlbLoadBalancerARNs = lens _dlbLoadBalancerARNs (\s a -> s {_dlbLoadBalancerARNs = a}) . _Default . _Coerce

-- | The marker for the next set of results. (You received this marker from a previous call.)
dlbMarker :: Lens' DescribeLoadBalancers (Maybe Text)
dlbMarker = lens _dlbMarker (\s a -> s {_dlbMarker = a})

instance AWSPager DescribeLoadBalancers where
  page rq rs
    | stop (rs ^. desrsNextMarker) = Nothing
    | stop (rs ^. desrsLoadBalancers) = Nothing
    | otherwise =
      Just $ rq & dlbMarker .~ rs ^. desrsNextMarker

instance AWSRequest DescribeLoadBalancers where
  type
    Rs DescribeLoadBalancers =
      DescribeLoadBalancersResponse
  request = postQuery eLBv2
  response =
    receiveXMLWrapper
      "DescribeLoadBalancersResult"
      ( \s h x ->
          DescribeLoadBalancersResponse'
            <$> (x .@? "NextMarker")
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
        "Version" =: ("2015-12-01" :: ByteString),
        "Names"
          =: toQuery (toQueryList "member" <$> _dlbNames),
        "PageSize" =: _dlbPageSize,
        "LoadBalancerArns"
          =: toQuery
            (toQueryList "member" <$> _dlbLoadBalancerARNs),
        "Marker" =: _dlbMarker
      ]

-- | /See:/ 'describeLoadBalancersResponse' smart constructor.
data DescribeLoadBalancersResponse = DescribeLoadBalancersResponse'
  { _desrsNextMarker ::
      !( Maybe
           Text
       ),
    _desrsLoadBalancers ::
      !( Maybe
           [LoadBalancer]
       ),
    _desrsResponseStatus ::
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
-- * 'desrsNextMarker' - If there are additional results, this is the marker for the next set of results. Otherwise, this is null.
--
-- * 'desrsLoadBalancers' - Information about the load balancers.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeLoadBalancersResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeLoadBalancersResponse
describeLoadBalancersResponse pResponseStatus_ =
  DescribeLoadBalancersResponse'
    { _desrsNextMarker =
        Nothing,
      _desrsLoadBalancers = Nothing,
      _desrsResponseStatus = pResponseStatus_
    }

-- | If there are additional results, this is the marker for the next set of results. Otherwise, this is null.
desrsNextMarker :: Lens' DescribeLoadBalancersResponse (Maybe Text)
desrsNextMarker = lens _desrsNextMarker (\s a -> s {_desrsNextMarker = a})

-- | Information about the load balancers.
desrsLoadBalancers :: Lens' DescribeLoadBalancersResponse [LoadBalancer]
desrsLoadBalancers = lens _desrsLoadBalancers (\s a -> s {_desrsLoadBalancers = a}) . _Default . _Coerce

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeLoadBalancersResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance NFData DescribeLoadBalancersResponse
