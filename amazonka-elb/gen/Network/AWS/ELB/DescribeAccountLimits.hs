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
-- Module      : Network.AWS.ELB.DescribeAccountLimits
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the current Elastic Load Balancing resource limits for your AWS account.
--
--
-- For more information, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-limits.html Limits for Your Classic Load Balancer> in the /Classic Load Balancers Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.ELB.DescribeAccountLimits
  ( -- * Creating a Request
    describeAccountLimits,
    DescribeAccountLimits,

    -- * Request Lenses
    dalPageSize,
    dalMarker,

    -- * Destructuring the Response
    describeAccountLimitsResponse,
    DescribeAccountLimitsResponse,

    -- * Response Lenses
    dalrrsNextMarker,
    dalrrsLimits,
    dalrrsResponseStatus,
  )
where

import Network.AWS.ELB.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAccountLimits' smart constructor.
data DescribeAccountLimits = DescribeAccountLimits'
  { _dalPageSize ::
      !(Maybe Nat),
    _dalMarker :: !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAccountLimits' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dalPageSize' - The maximum number of results to return with this call.
--
-- * 'dalMarker' - The marker for the next set of results. (You received this marker from a previous call.)
describeAccountLimits ::
  DescribeAccountLimits
describeAccountLimits =
  DescribeAccountLimits'
    { _dalPageSize = Nothing,
      _dalMarker = Nothing
    }

-- | The maximum number of results to return with this call.
dalPageSize :: Lens' DescribeAccountLimits (Maybe Natural)
dalPageSize = lens _dalPageSize (\s a -> s {_dalPageSize = a}) . mapping _Nat

-- | The marker for the next set of results. (You received this marker from a previous call.)
dalMarker :: Lens' DescribeAccountLimits (Maybe Text)
dalMarker = lens _dalMarker (\s a -> s {_dalMarker = a})

instance AWSPager DescribeAccountLimits where
  page rq rs
    | stop (rs ^. dalrrsNextMarker) = Nothing
    | stop (rs ^. dalrrsLimits) = Nothing
    | otherwise =
      Just $ rq & dalMarker .~ rs ^. dalrrsNextMarker

instance AWSRequest DescribeAccountLimits where
  type
    Rs DescribeAccountLimits =
      DescribeAccountLimitsResponse
  request = postQuery elb
  response =
    receiveXMLWrapper
      "DescribeAccountLimitsResult"
      ( \s h x ->
          DescribeAccountLimitsResponse'
            <$> (x .@? "NextMarker")
            <*> ( x .@? "Limits" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAccountLimits

instance NFData DescribeAccountLimits

instance ToHeaders DescribeAccountLimits where
  toHeaders = const mempty

instance ToPath DescribeAccountLimits where
  toPath = const "/"

instance ToQuery DescribeAccountLimits where
  toQuery DescribeAccountLimits' {..} =
    mconcat
      [ "Action" =: ("DescribeAccountLimits" :: ByteString),
        "Version" =: ("2012-06-01" :: ByteString),
        "PageSize" =: _dalPageSize,
        "Marker" =: _dalMarker
      ]

-- | /See:/ 'describeAccountLimitsResponse' smart constructor.
data DescribeAccountLimitsResponse = DescribeAccountLimitsResponse'
  { _dalrrsNextMarker ::
      !( Maybe
           Text
       ),
    _dalrrsLimits ::
      !( Maybe
           [Limit]
       ),
    _dalrrsResponseStatus ::
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

-- | Creates a value of 'DescribeAccountLimitsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dalrrsNextMarker' - The marker to use when requesting the next set of results. If there are no additional results, the string is empty.
--
-- * 'dalrrsLimits' - Information about the limits.
--
-- * 'dalrrsResponseStatus' - -- | The response status code.
describeAccountLimitsResponse ::
  -- | 'dalrrsResponseStatus'
  Int ->
  DescribeAccountLimitsResponse
describeAccountLimitsResponse pResponseStatus_ =
  DescribeAccountLimitsResponse'
    { _dalrrsNextMarker =
        Nothing,
      _dalrrsLimits = Nothing,
      _dalrrsResponseStatus = pResponseStatus_
    }

-- | The marker to use when requesting the next set of results. If there are no additional results, the string is empty.
dalrrsNextMarker :: Lens' DescribeAccountLimitsResponse (Maybe Text)
dalrrsNextMarker = lens _dalrrsNextMarker (\s a -> s {_dalrrsNextMarker = a})

-- | Information about the limits.
dalrrsLimits :: Lens' DescribeAccountLimitsResponse [Limit]
dalrrsLimits = lens _dalrrsLimits (\s a -> s {_dalrrsLimits = a}) . _Default . _Coerce

-- | -- | The response status code.
dalrrsResponseStatus :: Lens' DescribeAccountLimitsResponse Int
dalrrsResponseStatus = lens _dalrrsResponseStatus (\s a -> s {_dalrrsResponseStatus = a})

instance NFData DescribeAccountLimitsResponse
